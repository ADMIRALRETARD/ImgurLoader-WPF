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
using Imgur.API.Authentication.Impl;
using Imgur.API.Endpoints.Impl;
using Imgur.API.Models;
using Microsoft.Win32;
using System.IO;

namespace WPF_ImgurLoader
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        OpenFileDialog _openDialog = new OpenFileDialog();
        public MainWindow()
        {

            InitializeComponent();
        }

        private void pathFilebtn_Click(object sender, RoutedEventArgs e)
        {
            _openDialog.Filter = "Image Files(*.BMP; *.JPG; *.GIF;*.PNG)| *.BMP; *.JPG; *.GIF;*.PNG | All files(*.*) | *.*";
            if (_openDialog.ShowDialog() == false)
                return;
            string filename = _openDialog.FileName;
            pathFiletb.Text = filename;
        }

        private void fileUploadbtn_Click(object sender, RoutedEventArgs e)
        {
            var client = new ImgurClient("b67ea901a7c3d32", "f38dd43c6aff1e4062c4abdc724e6a11271af6c1");
            var endpoint = new ImageEndpoint(client);
            IImage image;
            string path = pathFiletb.Text;
            try
            {

                if (File.Exists(path))
                {

                    using (var fs = new FileStream(path, FileMode.Open))
                    {
                        image = endpoint.UploadImageStreamAsync(fs).GetAwaiter().GetResult();
                    }
                    MessageBox.Show("image uploaded");
                    get_Url.Text = image.Link;
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Произошла ошибка при загрузке изображения");
            }
        }

        private void copyToClipbtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Clipboard.Clear();
                Clipboard.SetText(get_Url.Text);
            }
            catch (Exception) { MessageBox.Show("Сначала загрузите изображение"); }
        }

        private void Window_Drop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] s = (string[])e.Data.GetData(DataFormats.FileDrop);
                foreach (string pathname in s)
                    pathFiletb.Text += pathname;
            }
        }
    }
}
