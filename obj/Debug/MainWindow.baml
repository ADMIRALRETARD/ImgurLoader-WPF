   M S B A M L   `   `   `  ����J  FWPF_ImgurLoader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WPF_ImgurLoaderWPF_ImgurLoader  5   	        WPF_ImgurLoader.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WPF_ImgurLoader     5   	   -   5          � Title$  ImgurLoader��5   	   $	��200��6   $	��525��6*    � Icon$ Resources\imgurIcon.ico��66    � WindowStartupLocation$ CenterScreen=�6U   $	��200��6z   $	��525��6�    J� 	AllowDrop . .��5
      �  � RowDefinitions 5   
   �� 5      5      .+�5   
   �� -   5         ��Name$ 
pathFiletb��5      $
��Left=�5      $��23��5      $��	30,35,0,0q�5      $	��Top=�5      $	��250��5      $��0��5      $��Stretch=�5      �� 5   
   -   5        $ get_Url��5      $
��Left=�5      $��23��5      $��	30,95,0,0q�5      $	��Top=�5      $	��250��5      �� 5    
   -   5         ��Name$ pathFilebtn��5       $��Открыть��5!      $��Right=�5"      $��
0,35,130,0q�5#      $	��Top=�5$      $��75��5%      $��23��5&      $��0��5'      6   �� 5(   
   -   5        $ fileUploadbtn��5(      $��Загрузить��5)      $��Right=�5*      $��	0,35,30,0q�5+      $	��Top=�5,      $��75��5-      $��25��5.      $��0��5/      50      �� 51   
   -   5        $ copyToClipbtn��51      $7��1Скопировать в буфер обмена��52      $��Right=�53      $��	0,95,30,0q�54      $	��Top=�55      $	��175��56      $��23��57      58      �� 59   
   $
��Left=�6   $��18��5:      $��	70,17,0,0q�5;      $
��Wrap=�5<      $)��#Расположение файла��5=      $	��Top=�5>      $	��160��5?      �� 5A   
   $
��Left=�6   $��18��5B      $��	70,77,0,0q�5C      $
��Wrap=�5D      $.��(Ссылка на изображение��5E      $	��Top=�5F      $	��160��5G      5I      5J      