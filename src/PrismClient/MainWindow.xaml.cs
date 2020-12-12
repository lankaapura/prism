using PrismClient.Properties;
using System.Windows;

namespace PrismClient
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            lblEnv.Content = Settings.Default.Env;
        }
    }
}
