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
    /// Логика взаимодействия для StoreStroka.xaml
    /// </summary>
    public partial class StoreStroka : Page
    {
        public StoreStroka()
        {
            InitializeComponent();
            if (LoadData.textSearch != "")
            {
                lstboxStore.ItemsSource = LoadData.Search();
            }
            else if (LoadData.v == 1 || LoadData.v == 0)
            {
                lstboxStore.ItemsSource = LoadData.Sort();
            }
        }
    }
}
