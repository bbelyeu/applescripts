FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Change Case of Item Names

This script is designed to change the case of items in the front window of the desktop. 
If no folder windows are open, the script will affect items on the desktop.

Copyright � 2001�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	Z 
 C h a n g e   C a s e   o f   I t e m   N a m e s 
 
 T h i s   s c r i p t   i s   d e s i g n e d   t o   c h a n g e   t h e   c a s e   o f   i t e m s   i n   t h e   f r o n t   w i n d o w   o f   t h e   d e s k t o p .   
 I f   n o   f o l d e r   w i n d o w s   a r e   o p e n ,   t h e   s c r i p t   w i l l   a f f e c t   i t e m s   o n   t h e   d e s k t o p . 
 
 C o p y r i g h t   �   2 0 0 1  2 0 0 7   A p p l e   I n c . 
 
 Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
 r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e 
 r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o 
 r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g 
 m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e 
 t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e 
 c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s . 
   
  
 l     ��������  ��  ��        l     ��  ��     tell me to activate     �   & t e l l   m e   t o   a c t i v a t e      l     ��  ��    [ Uset the source_folder to choose folder with prompt "Folder containing items to edit:"     �   � s e t   t h e   s o u r c e _ f o l d e r   t o   c h o o s e   f o l d e r   w i t h   p r o m p t   " F o l d e r   c o n t a i n i n g   i t e m s   t o   e d i t : "      l    # ����  Q     #     O       r        c       !   l    "���� " n     # $ # m    ��
�� 
cfol $ l    %���� % 4   �� &
�� 
cwin & m   	 
���� ��  ��  ��  ��   ! m    ��
�� 
alis  l      '���� ' o      ���� 0 source_folder  ��  ��    m     ( (�                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��    R      ������
�� .ascrerr ****      � ****��  ��    l   # ) * + ) r    # , - , I   !�� . /
�� .earsffdralis        afdr . m    ��
�� afdmdesk / �� 0��
�� 
rtyp 0 m    ��
�� 
alis��   - l      1���� 1 o      ���� 0 source_folder  ��  ��   *   no open folder windows    + � 2 2 .   n o   o p e n   f o l d e r   w i n d o w s��  ��     3 4 3 l  $ / 5���� 5 I  $ /�� 6 7
�� .sysodlogaskr        TEXT 6 m   $ % 8 8 � 9 9  C h a n g e   c a s e   t o : 7 �� :��
�� 
btns : J   & + ; ;  < = < m   & ' > > � ? ?  C a n c e l =  @ A @ m   ' ( B B � C C 
 U P P E R A  D�� D m   ( ) E E � F F 
 l o w e r��  ��  ��  ��   4  G H G l  0 ; I���� I r   0 ; J K J l  0 7 L���� L n   0 7 M N M 1   3 7��
�� 
bhit N l  0 3 O���� O 1   0 3��
�� 
rslt��  ��  ��  ��   K l      P���� P o      ���� 0 button_pressed  ��  ��  ��  ��   H  Q R Q l  < I S���� S r   < I T U T I  < E�� V W
�� .earslfdrlist  @     fss  V o   < =���� 0 source_folder   W �� X��
�� 
lfiv X m   @ A��
�� boovfals��   U l      Y���� Y o      ���� 0 	item_list  ��  ��  ��  ��   R  Z [ Z l  J Q \���� \ r   J Q ] ^ ] c   J O _ ` _ o   J K���� 0 source_folder   ` m   K N��
�� 
TEXT ^ o      ���� 0 source_folder  ��  ��   [  a b a l  R � c���� c Y   R � d�� e f�� d k   g � g g  h i h r   g s j k j n   g o l m l 4   j o�� n
�� 
cobj n o   m n���� 0 i   m l  g j o���� o o   g j���� 0 	item_list  ��  ��   k o      ���� 0 	this_item   i  p q p r   t  r s r c   t { t u t l  t y v���� v b   t y w x w o   t u���� 0 source_folder   x o   u x���� 0 	this_item  ��  ��   u m   y z��
�� 
alis s o      ���� 0 	this_item   q  y z y r   � � { | { I  � ��� }��
�� .sysonfo4asfe       fss  } o   � ����� 0 	this_item  ��   | o      ���� 0 	this_info   z  ~  ~ r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 	this_info  ��  ��   � l      ����� � o      ���� 0 current_name  ��  ��     ��� � O   � � � � � Z   � � � ��� � � =  � � � � � l  � � ����� � o   � ����� 0 button_pressed  ��  ��   � m   � � � � � � � 
 l o w e r � r   � � � � � n  � � � � � I   � ��� ����� 0 change_case_of   �  � � � l  � � ����� � o   � ����� 0 current_name  ��  ��   �  ��� � m   � � � � � � � 
 l o w e r��  ��   �  f   � � � l      ����� � n       � � � 1   � ���
�� 
pnam � o   � ����� 0 	this_item  ��  ��  ��   � r   � � � � � n  � � � � � I   � ��� ����� 0 change_case_of   �  � � � l  � � ����� � o   � ����� 0 current_name  ��  ��   �  ��� � m   � � � � � � � 
 u p p e r��  ��   �  f   � � � l      ����� � n       � � � 1   � ���
�� 
pnam � o   � ����� 0 	this_item  ��  ��   � m   � � � ��                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��  ��  �� 0 i   e m   U V����  f n   V b � � � m   ] a��
�� 
nmbr � n  V ] � � � 2  Y ]��
�� 
cobj � l  V Y ����� � o   V Y���� 0 	item_list  ��  ��  ��  ��  ��   b  � � � l  � � ����� � I  � ��� ���
�� .sysobeepnull��� ��� long � m   � ����� ��  ��  ��   �  � � � l     �������  ��  �   �  ��~ � i      � � � I      �} ��|�} 0 change_case_of   �  � � � o      �{�{ 0 	this_text   �  ��z � o      �y�y 0 	this_case  �z  �|   � k     Z � �  � � � Z      � ��x � � =     � � � o     �w�w 0 	this_case   � m     � � � � � 
 l o w e r � k     � �  � � � r    	 � � � m     � � � � � 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z � l      ��v�u � o      �t�t 0 comparison_string  �v  �u   �  ��s � r   
  � � � m   
  � � � � � 4 a b c d e f g h i j k l m n o p q r s t u v w x y z � l      ��r�q � o      �p�p 0 source_string  �r  �q  �s  �x   � k     � �  � � � r     � � � m     � � � � � 4 a b c d e f g h i j k l m n o p q r s t u v w x y z � l      ��o�n � o      �m�m 0 comparison_string  �o  �n   �  ��l � r     � � � m     � � � � � 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z � l      ��k�j � o      �i�i 0 source_string  �k  �j  �l   �  � � � r     � � � m     � � � � �   � l      ��h�g � o      �f�f 0 new_text  �h  �g   �  � � � X    W ��e � � k   , R � �  � � � r   , 7 � � � l  , 5 ��d�c � I  , 5�b�a �
�b .sysooffslong    ��� null�a   � �` � �
�` 
psof � o   . /�_�_ 0 thischar thisChar � �^ ��]
�^ 
psin � l  0 1 ��\�[ � o   0 1�Z�Z 0 comparison_string  �\  �[  �]  �d  �c   � o      �Y�Y 0 x   �  ��X � Z   8 R � ��W � � >  8 ;   o   8 9�V�V 0 x   m   9 :�U�U   � r   > H c   > F l  > D�T�S b   > D l  > ?	�R�Q	 o   > ?�P�P 0 new_text  �R  �Q   n   ? C

 4   @ C�O
�O 
cha  o   A B�N�N 0 x   l  ? @�M�L o   ? @�K�K 0 source_string  �M  �L  �T  �S   m   D E�J
�J 
TEXT l     �I�H o      �G�G 0 new_text  �I  �H  �W   � r   K R c   K P l  K N�F�E b   K N l  K L�D�C o   K L�B�B 0 new_text  �D  �C   o   L M�A�A 0 thischar thisChar�F  �E   m   N O�@
�@ 
TEXT l     �?�> o      �=�= 0 new_text  �?  �>  �X  �e 0 thischar thisChar � o     �<�< 0 	this_text   � �; L   X Z l  X Y�:�9 o   X Y�8�8 0 new_text  �:  �9  �;  �~       �7�7   �6�5�6 0 change_case_of  
�5 .aevtoappnull  �   � **** �4 ��3�2�1�4 0 change_case_of  �3 �0 �0    �/�.�/ 0 	this_text  �. 0 	this_case  �2   �-�,�+�*�)�(�'�- 0 	this_text  �, 0 	this_case  �+ 0 comparison_string  �* 0 source_string  �) 0 new_text  �( 0 thischar thisChar�' 0 x    � � � � � ��&�%�$�#�"�!� ��
�& 
kocl
�% 
cobj
�$ .corecnte****       ****
�# 
psof
�" 
psin�! 
�  .sysooffslong    ��� null
� 
cha 
� 
TEXT�1 [��  �E�O�E�Y 	�E�O�E�O�E�O :�[��l kh *��� E�O�j ����/%�&E�Y 	��%�&E�[OY��O� �!��"#�
� .aevtoappnull  �   � ****! k     �$$  %%  3&&  G''  Q((  Z))  a**  ���  �  �  " �� 0 i  # # (��������� 8� > B E����
�	��������� �� � ��� ���
� 
cwin
� 
cfol
� 
alis� 0 source_folder  �  �  
� afdmdesk
� 
rtyp
� .earsffdralis        afdr
� 
btns
� .sysodlogaskr        TEXT
� 
rslt
� 
bhit�
 0 button_pressed  
�	 
lfiv
� .earslfdrlist  @     fss � 0 	item_list  
� 
TEXT
� 
cobj
� 
nmbr� 0 	this_item  
� .sysonfo4asfe       fss � 0 	this_info  
�  
pnam�� 0 current_name  �� 0 change_case_of  
�� .sysobeepnull��� ��� long� � � *�k/�,�&E�UW X  ���l 	E�O�����mvl O_ a ,E` O�a fl E` O�a &E�O �k_ a -a ,Ekh  _ a �/E` O�_ %�&E` O_ j E` O_ a ,E` O� 5_ a   )_ a l+  _ a ,FY )_ a !l+  _ a ,FU[OY��Olj "ascr  ��ޭ