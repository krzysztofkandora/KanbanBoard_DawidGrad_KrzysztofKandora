   M S B A M L   `   `   `  ����  kanbanboard#    kanbanboard.TaskDetailsWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Szczegóły Zadania��5   	   $	��500��6#   $	��600��60   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5	      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Tytuł:��6   $��0��6"   $
��Bold"�6/   �� 5   
   -   5         ��Name$ TaskTitleTextBlock��5      $��0��60   $��	100,0,0,0q�6=   �� 5   
   $��Przypisano do:��6   $��1��6*   $
��Bold"�67   �� 5   
   -   5        $ AssignedUserTextBlock��5      $��1��63   $��	100,0,0,0q�6@   �� 5   
   $��Status:��6   $��2��6#   $
��Bold"�60   �� 5   
   -   5        $ StatusTextBlock��5      $��2��6-   $��	100,0,0,0q�6:   �� 5   
   $��Opis:��6   $��3��6!   $
��Bold"�6.   �� 5   
   -   5        $ TaskDescriptionTextBlock��5      $��3��66   $��	100,0,0,0q�6C   $
��Wrap=�6V   5       5!      