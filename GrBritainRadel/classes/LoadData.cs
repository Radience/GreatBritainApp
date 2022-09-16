using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrBritainRadel.classes
{
    class LoadData
    {
        static SqlConnection con = new SqlConnection(@"Data Source=RADIANCE-ПК\SQLEXPRESS;Initial Catalog=GrBritainRadel;Integrated Security=True");

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
    }
}
