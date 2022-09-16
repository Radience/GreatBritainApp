using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для authoriz.xaml
    /// </summary>
    public partial class authoriz : Page
    {
        public authoriz()
        {
            InitializeComponent();
        }

        private void voiti_Click(object sender, RoutedEventArgs e)
        {
            string lgin = Login.Text;
            string pswrd = Password.Text;
            if (LoadData.Authhorization(lgin, pswrd) == true && Roles.getRole() == "adm")
            {
                NavigationService.Navigate(new Store());
            }
            else if (LoadData.Authhorization(lgin, pswrd) == true && Roles.getRole() == "user")
            {
                NavigationService.Navigate(new Store());
            }
            else
            {
                MessageBox.Show("НЕПРАВИЛЬНО", "НЕПРАВИЛЬНО", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void vixod_Click(object sender, RoutedEventArgs e)
        {
            App.Current.MainWindow.Close();
        }
    }
}
