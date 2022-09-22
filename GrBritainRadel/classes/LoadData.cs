using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GrBritainRadel.pages;
using System.IO;

namespace GrBritainRadel.classes
{
    class LoadData
    {
        static SqlConnection con = new SqlConnection(@"Data Source=RADIANCE-ПК\SQLEXPRESS;Initial Catalog=GrBritainRadel;Integrated Security=True");
        public static DataView dv;
        public static string nameClickProd = null;
        public static string textSearch;
        public static int v = 1;
        public static string posi;
        public static void loadPictures()
        {
            con.Open();
            string currentPath = Directory.GetCurrentDirectory();
            string activePath = "";
            for(int i = 0; i < currentPath.Length - 9; i++)
            {
                activePath += currentPath[i];
            }
            activePath += @"resources\image";
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand($"SELECT photo_product FROM Product", con);
            adapter.SelectCommand = cmd;
            adapter.Fill(dt);
            string photos = "";
            foreach (DataRow row in dt.Rows)
            {
                photos = row["photo_product"].ToString();
                string betwenPath = activePath;
                for (int i = photos.Length - 1; i > 0; i--)
                {
                    if (photos[i] == '\\')
                    {
                        for (int j = i; j < photos.Length; j++)
                        {
                            betwenPath += photos[j];
                        }
                        cmd = new SqlCommand($"UPDATE Product SET photo_product = '{betwenPath}' WHERE photo_product = '{photos}'", con);
                        cmd.CommandType = CommandType.Text;
                        cmd.ExecuteNonQuery();
                        break;
                    }
                }
            }
        }

        public static bool Authhorization(string lg, string paswrd)
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand($"SELECT login_usr, password_usr, roles FROM Users WHERE login_usr = '{lg}' AND password_usr = '{paswrd}'", con);
            adapter.SelectCommand = cmd;
            adapter.Fill(dt);
            string rol = "";
            foreach (DataRow row in dt.Rows)
            {
                rol = row["roles"].ToString();
            }
            if (dt.Rows.Count == 1 && rol == "adm")
            {
                Roles.setRole("adm");
                return true;
            }
            else if (dt.Rows.Count == 1 && rol == "user")
            {
                Roles.setRole("user");
                return true;
            }
            return false;
        }

        public static DataView getPageProd()
        {
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand($"SELECT photo_product, name_product, price_product, weight_product, width_product, height_product, length_product, count_product FROM Product WHERE name_product = '{nameClickProd}'", con);
            adapter.SelectCommand = cmd;
            adapter.Fill(dt);
            return dv = dt.DefaultView;
        }

        public static DataView Sort()
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = null;
            if (v == 0)
            {
                cmd = new SqlCommand($"SELECT * FROM Product " +
                                                $"ORDER BY name_product ASC", con);
            }
            else if (v == 1)
            {
                cmd = new SqlCommand($"SELECT * FROM Product " +
                                     $"ORDER BY name_product DESC", con);
            }
            adapter.SelectCommand = cmd;
            adapter.Fill(dt);
            return dv = dt.DefaultView;
        }

        public static DataView Search()
        {
            textSearch += "%";
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand($"SELECT * FROM Product " +
                                            $"WHERE name_product LIKE '{textSearch}'", con);
            adapter.SelectCommand = cmd;
            adapter.Fill(dt);
            return dv = dt.DefaultView;
        }
    }
}
