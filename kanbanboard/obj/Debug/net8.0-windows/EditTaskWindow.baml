   M S B A M L   `   `   `  ����  kanbanboard     kanbanboard.EditTaskWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Edytuj Zadanie��5   	   $	��400��6    $	��400��6-   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Tytuł zadania:��6   $��Center=�6*   $��0��6E   $��0��6R   $��0,5,10,5q�6b   �� 5   
   -   5         ��Name$ TaskTitleTextBox��5      $��0��6,   $��1��69   $��0,5,0,5q�6I   �� 5   
   $��Opis zadania:��6   $��Center=�6)   $��1��6D   $��0��6Q   $��0,5,10,5q�6a   �� 5   
   -   5        $ TaskDescriptionTextBox��5      $��1��62   $��1��6?   $��0,5,0,5q�6O    �� AcceptsReturn$
 True��6`   $��80��6u    �� TextWrapping$
 Wrap=�6�   �� 5   
   $��Przypisz do użytkownika:��6   $��Center=�64   $��2��6O   $��0��6\   $��0,5,10,5q�6l   �� 5   
   -   5         ��Name$ UserComboBox��5      $��2��6)   $��1��66   $��0,5,0,5q�6F    �� DisplayMemberPath$ login��6W   �� 5    
   $��Status zadania:��6   $��Center=�6+   $��3��6F   $��0��6S   $��0,5,10,5q�6c   �� 5!   
   -   5        $ StatusComboBox��5!      $��3��6+   $��1��68   $��0,5,0,5q�6H   .@�5"      �� $
��Nowe��6   
 � Tag$
 Nowe��6*   �� 5#      $��Zaplanowane��6   $ Zaplanowane��61   �� 5$      $��	W trakcie��6   $ WTrakcie��6/   �� 5%      $��
Testowanie��6   $ 
Testowanie��60   �� 5&      $��
Ukończone��6   $ 	Ukonczone��6/   5'      �� 5*   
   -   5        $��Zapisz Zmiany��5*      $��4��6)   $��0��66   $��2��6F   $��0,15,0,0q�6Z   $��Center=�5+      $	��150��6.   6:   5,      5-      