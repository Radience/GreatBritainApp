using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using GrBritainRadel.classes;

namespace GrBritainRadel.pages
{
    /// <summary>
    /// Логика взаимодействия для StorePlitka.xaml
    /// </summary>
    public partial class StorePlitka : Page
    {
        public StorePlitka()
        {
            InitializeComponent();
            if (LoadData.textSearch != "")
            {
                plitka.ItemsSource = LoadData.Search();
            }
            else if (LoadData.v == 1 || LoadData.v == 0)
            {
                plitka.ItemsSource = LoadData.Sort();
            }
        }

        private void ShowTovar_Click(object sender, RoutedEventArgs e)
        {
            //DataRowView row = plitka.SelectedItems as DataRowView;
            //LoadData.nameClickProd = row["name_product"].ToString();
            NavigationService.Navigate(new PageProduct());
        }
    }
}
