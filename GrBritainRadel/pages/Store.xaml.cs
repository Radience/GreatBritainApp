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
            LoadData.posi = "stroka";
        }

        private void plitka_Click(object sender, RoutedEventArgs e)
        {
            FrameStore.Navigate(new StorePlitka());
            LoadData.posi = "plitka";
        }

        private void datagrid_Click(object sender, RoutedEventArgs e)
        {
            FrameStore.Navigate(new StoreDataGrid());
            LoadData.posi = "datagrid";
        }

        private void Search_Click(object sender, RoutedEventArgs e)
        {
            LoadData.textSearch = searchbox.Text;
            if (LoadData.posi == "stroka")
            {
                FrameStore.Navigate(new StoreStroka());
            }
            else if (LoadData.posi == "plitka")
            {
                FrameStore.Navigate(new StorePlitka());
            }
            else if (LoadData.posi == "datagrid")
            {
                FrameStore.Navigate(new StoreDataGrid());
            }
        }

        private void sortby_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            LoadData.v = sortby.SelectedIndex;
            LoadData.textSearch = "";
            if(LoadData.posi == "stroka")
            {
                FrameStore.Navigate(new StoreStroka());
            }
            else if (LoadData.posi == "plitka")
            {
                FrameStore.Navigate(new StorePlitka());
            }
            else if (LoadData.posi == "datagrid")
            {
                FrameStore.Navigate(new StoreDataGrid());
            }
        }
    }
}
