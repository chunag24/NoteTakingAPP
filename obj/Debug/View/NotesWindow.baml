   M S B A M L   `   `   `  ����c  _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  5   	   C ?NotesAPP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:NotesAPP.ViewNotesAPP.View 5   	   7 clr-namespace:NotesAPP.ViewModelNotesAPP.ViewModel 5   	   G(clr-namespace:NotesAPP.View.UserControlsNotesAPP.View.UserControls 5	   	   M+clr-namespace:NotesAPP.ViewModel.convertersNotesAPP.ViewModel.converters 5
   	      NotesAPP.View.NoteWindow   5   
   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   ^bPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:NotesAPP.View     5   	   /vm clr-namespace:NotesAPP.ViewModel     5   	   7uc(clr-namespace:NotesAPP.View.UserControls     5	   	   :cv+clr-namespace:NotesAPP.ViewModel.converters     5
   	     � Title$  
NoteWindow��5   	   $	��400��6   $	��600��6)    � 	Resources 5         NotesAPP.ViewModel.NotesVM   vm7 1NotesAPP.ViewModel.converters.BoolToVisbConverter  	boolToVis��%:   &	        &	        5   
   6     5   
   6!   5      .��5      ]� -   5         ]�Name$ 	container��5      .+�5   
   o� $	��Top=�6   .@�5      m� $
��File��6   .@�5      m� $��New Notebook��6    m� Command 5      �� *NewNotebookCommand+m� 5      $��New Note��6    5      �� *NewNoteCommand+ m� CommandParameter 5      �� *SelectedNotebook+�� 5      m� 5      -   5        $
��Exit��5      5      5      5      �� 5   
   $��Bottom=�6   .@�5       �� .��5!      �� -   5         ��Name$ StatusTextBlock��5!      5"      5#      �� 5%   
   $	��140��6   
����  �$
��Left=�5'       �� SelectedItem 5(      �� *SelectedNotebook+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=���5)      �� *	Notebooks+��5*      �� 5+      .R�5,      � .+�5-      )  #NotesAPP.View.UserControls.Notebook  	   DisplayNotebook	 6&   �� �� 5.      ��6"   �� *Name+$ TwoWay=�y�5/   "   �� 
 �� Source#
 [   �� Path$ 	IsEditing� �� 	Converter# [ 6�   .   (System.Windows.Interactivity.Interaction   Triggers 50      /   )System.Windows.Interactivity.EventTrigger  51         	EventName$ 	LostFocus��6-   .   (System.Windows.Interactivity.TriggerBase   Actions. 52   "   6   0System.Windows.Interactivity.InvokeCommandAction     Command 68   �� #
 [  $ HasEditedCommand�   CommandParameter 53   8   �� 55       � ContextMenu 57      �� 58      .@�59   "   m� $��Rename��6+    5:   +   �� #
 [  $ beginEditeCommand�5;      5=      5>      5@      �� 5B      $	��140��6   $
��Left=�5C       5D      �� *SelectedNote+��5E      �� *Notes+��5F      �� 5G      .R�5H      ,  &NotesAPP.View.UserControls.NoteControl     Note 6%   �� 5I      5L      `� 5M   
   $	��Top=�6   .�5N      c� .@�5O      d� -   5        $��Speech��5O      5P      d� 5R      -   5         d�Name$ 
boldButton��5R      .��5T      �� $��B��6    $
��Bold"�5U       5V      d� 5X      -   5        $ italicButton��5X      .��5Z      �� $��I��6    $��Italic$�5[       5\      d� 5^      -   5        $ underlineButton��5^      .��5`      �� $��U��6    $��	Underline{�5a       5b      �� 5d      -   5         ��Name$ fontFamiltyComboBox��5d      $	��100��5e      5f      �� 5g      -	   5        $ fontSizeComboBox��5g      $��50��5h       �� 
IsEditable . 5j      �� 5k      -
   5         ��Name$ saveFileButton��5l      $
��Save��5k      5m      5o      5p      � 5q   
   .+�5r      �� -   5         ��Name$ ContentRichTextBox��5r      5t      5u      5w      5x      