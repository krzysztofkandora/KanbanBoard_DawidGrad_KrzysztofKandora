   M S B A M L   `   `   `  ����  kanbanboard    kanbanboard.AddTaskWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Dodaj Zadanie��5   	   $	��400��6   $	��300��6,   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��Tytuł:��6   $��0��6"   $��0,0,0,5q�6/   �� 5   
   -   5         ��Name$ TitleTextBox��5      $��1��6(   $	��250��65   $��25��6A   �� 5   
   $��Opis:��6   $��2��6!   $��0,10,0,5q�6.   �� 5   
   -   5        $ DescriptionTextBox��5      $��3��6.   $	��250��6;   $��75��6G    �� AcceptsReturn$
 True��6S   �� 5   
   $��Status:��6   $��4��6#   $��0,10,0,5q�60   �� 5   
   -   5         ��Name$ StatusComboBox��5      $��5��6+   $	��250��68   $��25��6D   .@�5      �� $
��Nowe��6   �� 5      $��Zaplanowane��6   �� 5      $��WTrakcie��6   �� 5      $��
Testowanie��6   �� 5      $��	Ukonczone��6   5      �� 5   
   -   5        $��Dodaj��5      $��6��6!   $��Right=�6.   $	��100��6J   $��30��6V   $��10q�6b   6n   5      5       