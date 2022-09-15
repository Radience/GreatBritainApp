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

namespace GrBritainRadel.pages
{
    /// <summary>
    /// Логика взаимодействия для Store.xaml
    /// </summary>
    public partial class Store : Page
    {
        public Store()
        {
            InitializeComponent();
            FrameStore.Navigate(new StoreStroka());
        }

        private void stroka_Click(object sender, RoutedEventArgs e)
        {
            FrameStore.Navigate(new StoreStroka());
        }

        private void plitka_Click(object sender, RoutedEventArgs e)
        {
            FrameStore.Navigate(new StorePlitka());
        }

        private void datagrid_Click(object sender, RoutedEventArgs e)
        {
            FrameStore.Navigate(new StoreDataGrid());
        }
    }
}
