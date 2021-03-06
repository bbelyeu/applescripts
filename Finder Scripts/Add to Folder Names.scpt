FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Add to Folder Names

This script is designed to add a prefix or suffix to folders in the front window of the desktop.
If no folder windows are open, the script will affect items on the desktop.

Copyright � 2001�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	^ 
 A d d   t o   F o l d e r   N a m e s 
 
 T h i s   s c r i p t   i s   d e s i g n e d   t o   a d d   a   p r e f i x   o r   s u f f i x   t o   f o l d e r s   i n   t h e   f r o n t   w i n d o w   o f   t h e   d e s k t o p . 
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
 l     ��������  ��  ��        l     ��  ��    n hset the source_folder to (choose folder with prompt "Pick the folder containing the folders to rename:")     �   � s e t   t h e   s o u r c e _ f o l d e r   t o   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " P i c k   t h e   f o l d e r   c o n t a i n i n g   t h e   f o l d e r s   t o   r e n a m e : " )      l    # ����  Q     #     O       r        c        l    ����  n        m    ��
�� 
cfol  l     ����   4   �� !
�� 
cwin ! m   	 
���� ��  ��  ��  ��    m    ��
�� 
alis  l      "���� " o      ���� 0 source_folder  ��  ��    m     # #�                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��    R      ������
�� .ascrerr ****      � ****��  ��    l   # $ % & $ r    # ' ( ' I   !�� ) *
�� .earsffdralis        afdr ) m    ��
�� afdmdesk * �� +��
�� 
rtyp + m    ��
�� 
alis��   ( l      ,���� , o      ���� 0 source_folder  ��  ��   %   no open folder windows    & � - - .   n o   o p e n   f o l d e r   w i n d o w s��  ��     . / . l     ��������  ��  ��   /  0 1 0 l  $ ' 2���� 2 r   $ ' 3 4 3 m   $ % 5 5 � 6 6   4 l      7���� 7 o      ���� 0 prefix_or_suffix  ��  ��  ��  ��   1  8 9 8 l  ( r :���� : T   ( r ; ; k   - m < <  = > = I  - @�� ? @
�� .sysodlogaskr        TEXT ? m   - . A A � B B D E n t e r   t h e   p r e f i x   o r   s u f f i x   t o   u s e : @ �� C D
�� 
dtxt C l  / 0 E���� E o   / 0���� 0 prefix_or_suffix  ��  ��   D �� F��
�� 
btns F J   1 : G G  H I H m   1 2 J J � K K  C a n c e l I  L M L m   2 5 N N � O O  P r e f i x M  P�� P m   5 8 Q Q � R R  S u f f i x��  ��   >  S T S s   A _ U V U c   A H W X W l  A D Y���� Y 1   A D��
�� 
rslt��  ��   X m   D G��
�� 
list V J       Z Z  [ \ [ l      ]���� ] o      ���� 0 prefix_or_suffix  ��  ��   \  ^�� ^ l      _���� _ o      ���� 0 button_pressed  ��  ��  ��   T  `�� ` Z  ` m a b���� a >  ` e c d c l  ` a e���� e o   ` a���� 0 prefix_or_suffix  ��  ��   d m   a d f f � g g   b  S   h i��  ��  ��  ��  ��   9  h i h l  s � j���� j r   s � k l k I  s |�� m n
�� .earslfdrlist  @     fss  m o   s t���� 0 source_folder   n �� o��
�� 
lfiv o m   w x��
�� boovfals��   l l      p���� p o      ���� 0 	item_list  ��  ��  ��  ��   i  q r q l  � � s���� s r   � � t u t c   � � v w v o   � ����� 0 source_folder   w m   � ���
�� 
TEXT u o      ���� 0 source_folder  ��  ��   r  x y x l  � z���� z Y   � {�� | }�� { k   � ~ ~   �  r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � l  � � ����� � o   � ����� 0 	item_list  ��  ��   � o      ���� 0 	this_item   �  � � � r   � � � � � c   � � � � � l  � � ����� � b   � � � � � o   � ����� 0 source_folder   � o   � ����� 0 	this_item  ��  ��   � m   � ���
�� 
alis � o      ���� 0 	this_item   �  � � � r   � � � � � I  � ��� ���
�� .sysonfo4asfe       fss  � o   � ����� 0 	this_item  ��   � o      ���� 0 	this_info   �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 	this_info  ��  ��   � l      ����� � o      ���� 0 current_name  ��  ��   �  ��� � Z   � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
asdr � o   � ����� 0 	this_info   � m   � ���
�� boovtrue � k   � � �  � � � Z   � � ��� � � =  � � � � � l  � � ����� � o   � ����� 0 button_pressed  ��  ��   � m   � � � � � � �  P r e f i x � r   � � � � � c   � � � � � l  � � ����� � l  � � ����� � b   � � � � � l  � � ����� � o   � ����� 0 prefix_or_suffix  ��  ��   � l  � � ����� � o   � ����� 0 current_name  ��  ��  ��  ��  ��  ��   � m   � ���
�� 
TEXT � l      ���~ � o      �}�} 0 new_file_name  �  �~  ��   � r   � � � � c   � � � � � l  � � ��|�{ � l  � � ��z�y � b   � � � � � l  � � ��x�w � o   � ��v�v 0 current_name  �x  �w   � l  � � ��u�t � o   � ��s�s 0 prefix_or_suffix  �u  �t  �z  �y  �|  �{   � m   � ��r
�r 
TEXT � l      ��q�p � o      �o�o 0 new_file_name  �q  �p   �  ��n � n  � � � I  �m ��l�m 0 set_item_name   �  � � � o  �k�k 0 	this_item   �  ��j � l 
 ��i�h � o  
�g�g 0 new_file_name  �i  �h  �j  �l   �  f  �n  ��  ��  ��  �� 0 i   | m   � ��f�f  } n   � � � � � m   � ��e
�e 
nmbr � n  � � � � � 2  � ��d
�d 
cobj � l  � � ��c�b � o   � ��a�a 0 	item_list  �c  �b  ��  ��  ��   y  � � � l  ��`�_ � I �^ ��]
�^ .sysobeepnull��� ��� long � m  �\�\ �]  �`  �_   �  � � � l     �[�Z�Y�[  �Z  �Y   �  ��X � i      � � � I      �W ��V�W 0 set_item_name   �  � � � o      �U�U 0 	this_item   �  ��T � o      �S�S 0 new_item_name  �T  �V   � O     � � � � k    � � �  � � � l   �R � ��R   �  activate    � � � �  a c t i v a t e �  � � � r     � � � c    	 � � � l    ��Q�P � l    ��O�N � n     � � � m    �M
�M 
ctnr � o    �L�L 0 	this_item  �O  �N  �Q  �P   � m    �K
�K 
ctxt � l      ��J�I � o      �H�H 0 parent_container_path  �J  �I   �  ��G � Z    � � ��F � � H     � � l    ��E�D � I   �C ��B
�C .coredoexbool        obj  � 4    �A �
�A 
cobj � l    ��@�? � b     � � � l    ��>�= � o    �<�< 0 parent_container_path  �>  �=   � o    �;�; 0 new_item_name  �@  �?  �B  �E  �D   � Q    � � �  � r    " o    �:�: 0 new_item_name   l     �9�8 n       1    !�7
�7 
pnam o    �6�6 0 	this_item  �9  �8   � R      �5
�5 .ascrerr ****      � **** l     �4�3 o      �2�2 0 error_message  �4  �3   �1	�0
�1 
errn	 l     
�/�.
 o      �-�- 0 error_number  �/  �.  �0    k   * �  Z   * 9�, =  * - l  * +�+�* o   * +�)�) 0 error_number  �+  �*   m   + ,�(�(�� r   0 3 m   0 1 � x T h i s   n a m e   c o n t a i n s   i m p r o p e r   c h a r a c t e r s ,   s u c h   a s   a   c o l o n   ( : ) . l     �'�& o      �%�% 0 error_message  �'  �&  �,   l  6 9 l  6 9 r   6 9  o   6 7�$�$ 0 error_message    l     !�#�"! o      �!�! 0 error_message  �#  �"   2 , "The name is more than 31 characters long."    �"" X   " T h e   n a m e   i s   m o r e   t h a n   3 1   c h a r a c t e r s   l o n g . " $ the suggested name is too long    �## < t h e   s u g g e s t e d   n a m e   i s   t o o   l o n g $%$ l  : :� &'�   & 
 beep   ' �((  b e e p% )*) O  : P+,+ I  > O�-.
� .sysodlogaskr        TEXT- l  > ?/��/ o   > ?�� 0 error_message  �  �  . �01
� 
dtxt0 o   @ A�� 0 new_item_name  1 �23
� 
btns2 J   B G44 565 m   B C77 �88  C a n c e l6 9:9 m   C D;; �<<  S k i p: =�= m   D E>> �??  O K�  3 �@�
� 
dflt@ m   H I�� �  ,  f   : ;* ABA s   Q iCDC c   Q XEFE l  Q TG��G 1   Q T�
� 
rslt�  �  F m   T W�
� 
listD J      HH IJI o      �� 0 new_item_name  J K�K o      �� 0 button_pressed  �  B LML Z  j xNO��N =  j oPQP l  j kR��
R o   j k�	�	 0 button_pressed  �  �
  Q m   k nSS �TT  S k i pO L   r tUU m   r s��  �  �  M V�V n  y �WXW I   z ��Y�� 0 set_item_name  Y Z[Z o   z {�� 0 	this_item  [ \�\ o   { |�� 0 new_item_name  �  �  X  f   y z�  �F   � l  � �]^_] k   � �`` aba l  � ��cd�  c 
 beep   d �ee  b e e pb fgf O  � �hih I  � �� jk
�  .sysodlogaskr        TEXTj m   � �ll �mm T T h i s   n a m e   i s   a l r e a d y   t a k e n ,   p l e a s e   r e n a m e .k ��no
�� 
dtxtn o   � ����� 0 new_item_name  o ��pq
�� 
btnsp J   � �rr sts m   � �uu �vv  C a n c e lt wxw m   � �yy �zz  S k i px {��{ m   � �|| �}}  O K��  q ��~��
�� 
dflt~ m   � ����� ��  i  f   � �g � s   � ���� c   � ���� l  � ������� 1   � ���
�� 
rslt��  ��  � m   � ���
�� 
list� J      �� ��� o      ���� 0 new_item_name  � ���� o      ���� 0 button_pressed  ��  � ��� Z  � �������� =  � ���� l  � ������� o   � ����� 0 button_pressed  ��  ��  � m   � ��� ���  S k i p� L   � ��� m   � �����  ��  ��  � ���� n  � ���� I   � �������� 0 set_item_name  � ��� o   � ����� 0 	this_item  � ���� o   � ����� 0 new_item_name  ��  ��  �  f   � ���  ^  the name already exists   _ ��� . t h e   n a m e   a l r e a d y   e x i s t s�G   � m     ���                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��  �X       �������  � ������ 0 set_item_name  
�� .aevtoappnull  �   � ****� �� ����������� 0 set_item_name  �� ����� �  ������ 0 	this_item  �� 0 new_item_name  ��  � �������������� 0 	this_item  �� 0 new_item_name  �� 0 parent_container_path  �� 0 error_message  �� 0 error_number  �� 0 button_pressed  � ��������������������7;>����������S��luy|�
�� 
ctnr
�� 
ctxt
�� 
cobj
�� .coredoexbool        obj 
�� 
pnam�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  ����
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
list�� 0 set_item_name  �� �� Ϡ�,�&E�O*㢡%/j  k 
���,FW ]X  ��  �E�Y �E�O) ������mv�ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO)��l+ Y P) a ��a a a mv�ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO)��l+ U� �����������
�� .aevtoappnull  �   � ****� k    ��  ��  0��  8��  h��  q��  x��  �����  ��  ��  � ���� 0 i  � ( #������������������ 5�� A���� J N Q������������ f���������������������� �������
�� 
cwin
�� 
cfol
�� 
alis�� 0 source_folder  ��  ��  
�� afdmdesk
�� 
rtyp
�� .earsffdralis        afdr�� 0 prefix_or_suffix  
�� 
dtxt
�� 
btns�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
list
�� 
cobj�� 0 button_pressed  
�� 
lfiv
�� .earslfdrlist  @     fss �� 0 	item_list  
�� 
TEXT
�� 
nmbr�� 0 	this_item  
�� .sysonfo4asfe       fss �� 0 	this_info  
�� 
pnam�� 0 current_name  
�� 
asdr�� 0 new_file_name  �� 0 set_item_name  
�� .sysobeepnull��� ��� long�� � *�k/�,�&E�UW X  ���l 	E�O�E�O IhZ�����a a mva  O_ a &E[a k/EQ�Z[a l/EQ` ZO�a  Y h[OY��O�a fl E` O�a &E�O �k_ a -a ,Ekh  _ a �/E` O�_ %�&E` O_ j E`  O_  a !,E` "O_  a #,e  8_ a $  �_ "%a &E` %Y _ "�%a &E` %O)_ _ %l+ &Y h[OY��Olj ' ascr  ��ޭ