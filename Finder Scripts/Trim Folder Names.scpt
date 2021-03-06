FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Trim Folder Names

This script is designed to trim the name of specific folders in the front window of the desktop. 
If no folder windows are open, the script will affect folders on the desktop.

Copyright � 2001�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	` 
 T r i m   F o l d e r   N a m e s 
 
 T h i s   s c r i p t   i s   d e s i g n e d   t o   t r i m   t h e   n a m e   o f   s p e c i f i c   f o l d e r s   i n   t h e   f r o n t   w i n d o w   o f   t h e   d e s k t o p .   
 I f   n o   f o l d e r   w i n d o w s   a r e   o p e n ,   t h e   s c r i p t   w i l l   a f f e c t   f o l d e r s   o n   t h e   d e s k t o p . 
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
 l     ��������  ��  ��        l     ��  ��    ? 9 The following line is disabled due to a Menu Manager bug     �   r   T h e   f o l l o w i n g   l i n e   i s   d i s a b l e d   d u e   t o   a   M e n u   M a n a g e r   b u g      l     ��  ��    n hset the source_folder to (choose folder with prompt "Pick the folder containing the folders to rename:")     �   � s e t   t h e   s o u r c e _ f o l d e r   t o   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " P i c k   t h e   f o l d e r   c o n t a i n i n g   t h e   f o l d e r s   t o   r e n a m e : " )      l     ��������  ��  ��        l    # ����  Q     #     O       r       !   c     " # " l    $���� $ n     % & % m    ��
�� 
cfol & l    '���� ' 4   �� (
�� 
cwin ( m   	 
���� ��  ��  ��  ��   # m    ��
�� 
alis ! l      )���� ) o      ���� 0 source_folder  ��  ��    m     * *�                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��    R      ������
�� .ascrerr ****      � ****��  ��    l   # + , - + r    # . / . I   !�� 0 1
�� .earsffdralis        afdr 0 m    ��
�� afdmdesk 1 �� 2��
�� 
rtyp 2 m    ��
�� 
alis��   / l      3���� 3 o      ���� 0 source_folder  ��  ��   ,   no open folder windows    - � 4 4 .   n o   o p e n   f o l d e r   w i n d o w s��  ��     5 6 5 l  $ p 7���� 7 T   $ p 8 8 k   ) k 9 9  : ; : I  ) :�� < =
�� .sysodlogaskr        TEXT < m   ) * > > � ? ? H T e x t   t o   t r i m   f r o m   e v e r y   f o l d e r   n a m e : = �� @ A
�� 
dtxt @ m   + , B B � C C   A �� D��
�� 
btns D J   - 4 E E  F G F m   - . H H � I I  C a n c e l G  J K J m   . / L L � M M  T r i m   S t a r t K  N�� N m   / 2 O O � P P  T r i m   E n d��  ��   ;  Q R Q s   ; [ S T S c   ; B U V U l  ; > W���� W 1   ; >��
�� 
rslt��  ��   V m   > A��
�� 
list T J       X X  Y Z Y l      [���� [ o      ���� 0 text_to_trim  ��  ��   Z  \�� \ l      ]���� ] o      ���� 0 button_pressed  ��  ��  ��   R  ^�� ^ Z  \ k _ `���� _ >  \ c a b a l  \ _ c���� c o   \ _���� 0 text_to_trim  ��  ��   b m   _ b d d � e e   `  S   f g��  ��  ��  ��  ��   6  f g f l  q � h���� h r   q � i j i l  q | k���� k n   q | l m l m   x |��
�� 
nmbr m n   q x n o n 2  t x��
�� 
cha  o l  q t p���� p o   q t���� 0 text_to_trim  ��  ��  ��  ��   j l      q���� q o      ���� 0 character_count  ��  ��  ��  ��   g  r s r l  � � t���� t r   � � u v u I  � ��� w x
�� .earslfdrlist  @     fss  w o   � ����� 0 source_folder   x �� y��
�� 
lfiv y m   � ���
�� boovfals��   v l      z���� z o      ���� 0 	item_list  ��  ��  ��  ��   s  { | { l  � � }���� } r   � � ~  ~ c   � � � � � o   � ����� 0 source_folder   � m   � ���
�� 
TEXT  o      ���� 0 source_folder  ��  ��   |  � � � l  �j ����� � Y   �j ��� � ��� � k   �e � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � l  � � ����� � o   � ����� 0 	item_list  ��  ��   � o      ���� 0 	this_item   �  � � � r   � � � � � c   � � � � � l  � � ����� � b   � � � � � o   � ����� 0 source_folder   � o   � ����� 0 	this_item  ��  ��   � m   � ���
�� 
alis � o      ���� 0 	this_item   �  � � � r   � � � � � I  � ��� ���
�� .sysonfo4asfe       fss  � o   � ����� 0 	this_item  ��   � o      ���� 0 	this_info   �  ��� � Z   �e � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
asdr � o   � ����� 0 	this_info   � m   � ���
�� boovtrue � k   �a � �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 	this_info  ��  ��   � l      ����� � o      ���� 0 current_name  ��  ��   �  ��� � Z   �a � ��� � � =  � � � � � l  � � ����� � o   � ����� 0 button_pressed  ��  ��   � m   � � � � � � �  T r i m   S t a r t � Z   �( � ����� � C  � � � � � l  � � ����� � o   � ����� 0 current_name  ��  ��   � l  � � ���~ � o   � ��}�} 0 text_to_trim  �  �~   � k   �$ � �  � � � r   � � � � c   � � � � l  � ��|�{ � n   � � � � 7  �z � �
�z 
cha  � l  ��y�x � [   � � � l 
 ��w�v � o  
�u�u 0 character_count  �w  �v   � m  
�t�t �y  �x   � m  �s�s�� � l  �  ��r�q � o   � �p�p 0 current_name  �r  �q  �|  �{   � m  �o
�o 
TEXT � l      ��n�m � o      �l�l 0 new_name  �n  �m   �  ��k � I  $�j ��i�j 0 set_item_name   �  � � � o  �h�h 0 	this_item   �  ��g � o   �f�f 0 new_name  �g  �i  �k  ��  ��  ��   � Z  +a � ��e�d � D  +2 � � � l +. ��c�b � o  +.�a�a 0 current_name  �c  �b   � l .1 ��`�_ � o  .1�^�^ 0 text_to_trim  �`  �_   � k  5] � �  � � � r  5Q � � � c  5M � � � l 5I ��]�\ � n  5I � � � 7 8I�[ � �
�[ 
cha  � m  >@�Z�Z  � d  AH � � l BG ��Y�X � [  BG � � � l BE ��W�V � o  BE�U�U 0 character_count  �W  �V   � m  EF�T�T �Y  �X   � l 58 ��S�R � o  58�Q�Q 0 current_name  �S  �R  �]  �\   � m  IL�P
�P 
TEXT � l      ��O�N � o      �M�M 0 new_name  �O  �N   �  ��L � I  R]�K ��J�K 0 set_item_name   �  � � � o  SV�I�I 0 	this_item   �  ��H � o  VY�G�G 0 new_name  �H  �J  �L  �e  �d  ��  ��  ��  ��  �� 0 i   � m   � ��F�F  � n   � � � � � m   � ��E
�E 
nmbr � n  � � � � � 2  � ��D
�D 
cobj � l  � � ��C�B � o   � ��A�A 0 	item_list  �C  �B  ��  ��  ��   �  � � � l kp ��@�? � I kp�> ��=
�> .sysobeepnull��� ��� long � m  kl�<�< �=  �@  �?   �  � � � l     �;�:�9�;  �:  �9   �  ��8 � i      �  � I      �7�6�7 0 set_item_name    o      �5�5 0 	this_item   �4 o      �3�3 0 new_item_name  �4  �6    O     � k    � 	 l   �2
�2  
  activate    �  a c t i v a t e	  r     c    	 l   �1�0 l   �/�. n     m    �-
�- 
ctnr o    �,�, 0 	this_item  �/  �.  �1  �0   m    �+
�+ 
ctxt l     �*�) o      �(�( 0 parent_container_path  �*  �)   �' Z    ��& H     l   �%�$ I   �#�"
�# .coredoexbool        obj  4    �!
�! 
cobj l    � �  b    !"! l   #��# o    �� 0 parent_container_path  �  �  " o    �� 0 new_item_name  �   �  �"  �%  �$   Q    �$%&$ r    "'(' o    �� 0 new_item_name  ( l     )��) n      *+* 1    !�
� 
pnam+ o    �� 0 	this_item  �  �  % R      �,-
� .ascrerr ****      � ****, l     .��. o      �� 0 error_message  �  �  - �/�
� 
errn/ l     0��0 o      �� 0 error_number  �  �  �  & k   * �11 232 Z   * 945�64 =  * -787 l  * +9��
9 o   * +�	�	 0 error_number  �  �
  8 m   + ,����5 r   0 3:;: m   0 1<< �== x T h i s   n a m e   c o n t a i n s   i m p r o p e r   c h a r a c t e r s ,   s u c h   a s   a   c o l o n   ( : ) .; l     >��> o      �� 0 error_message  �  �  �  6 l  6 9?@A? l  6 9BCDB r   6 9EFE o   6 7�� 0 error_message  F l     G��G o      �� 0 error_message  �  �  C 2 , "The name is more than 31 characters long."   D �HH X   " T h e   n a m e   i s   m o r e   t h a n   3 1   c h a r a c t e r s   l o n g . "@ $ the suggested name is too long   A �II < t h e   s u g g e s t e d   n a m e   i s   t o o   l o n g3 JKJ l  : :� LM�   L 
 beep   M �NN  b e e pK OPO O  : PQRQ I  > O��ST
�� .sysodlogaskr        TEXTS l  > ?U����U o   > ?���� 0 error_message  ��  ��  T ��VW
�� 
dtxtV o   @ A���� 0 new_item_name  W ��XY
�� 
btnsX J   B GZZ [\[ m   B C]] �^^  C a n c e l\ _`_ m   C Daa �bb  S k i p` c��c m   D Edd �ee  O K��  Y ��f��
�� 
dfltf m   H I���� ��  R  f   : ;P ghg s   Q iiji c   Q Xklk l  Q Tm����m 1   Q T��
�� 
rslt��  ��  l m   T W��
�� 
listj J      nn opo o      ���� 0 new_item_name  p q��q o      ���� 0 button_pressed  ��  h rsr Z  j xtu����t =  j ovwv l  j kx����x o   j k���� 0 button_pressed  ��  ��  w m   k nyy �zz  S k i pu L   r t{{ m   r s����  ��  ��  s |��| n  y �}~} I   z ������� 0 set_item_name   ��� o   z {���� 0 	this_item  � ���� o   { |���� 0 new_item_name  ��  ��  ~  f   y z��  �&   l  � ����� k   � ��� ��� l  � �������  � 
 beep   � ���  b e e p� ��� O  � ���� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� T T h i s   n a m e   i s   a l r e a d y   t a k e n ,   p l e a s e   r e n a m e .� ����
�� 
dtxt� o   � ����� 0 new_item_name  � ����
�� 
btns� J   � ��� ��� m   � ��� ���  C a n c e l� ��� m   � ��� ���  S k i p� ���� m   � ��� ���  O K��  � �����
�� 
dflt� m   � ����� ��  �  f   � �� ��� s   � ���� c   � ���� l  � ������� 1   � ���
�� 
rslt��  ��  � m   � ���
�� 
list� J      �� ��� o      ���� 0 new_item_name  � ���� o      ���� 0 button_pressed  ��  � ��� Z  � �������� =  � ���� l  � ������� o   � ����� 0 button_pressed  ��  ��  � m   � ��� ���  S k i p� L   � ��� m   � �����  ��  ��  � ���� n  � ���� I   � �������� 0 set_item_name  � ��� o   � ����� 0 	this_item  � ���� o   � ����� 0 new_item_name  ��  ��  �  f   � ���  �  the name already exists   � ��� . t h e   n a m e   a l r e a d y   e x i s t s�'   m     ���                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��  �8       �������  � ������ 0 set_item_name  
�� .aevtoappnull  �   � ****� �� ���������� 0 set_item_name  �� ����� �  ������ 0 	this_item  �� 0 new_item_name  ��  � �������������� 0 	this_item  �� 0 new_item_name  �� 0 parent_container_path  �� 0 error_message  �� 0 error_number  �� 0 button_pressed  � ����������������<����]ad����������y�������
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
�� .aevtoappnull  �   � ****� k    p��  ��  5��  f��  r��  {��  ���  �����  ��  ��  � ���� 0 i  � * *������������������ >�� B�� H L O�������������� d������������������������� ��~�}�|
�� 
cwin
�� 
cfol
�� 
alis�� 0 source_folder  ��  ��  
�� afdmdesk
�� 
rtyp
�� .earsffdralis        afdr
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
cobj�� 0 text_to_trim  �� 0 button_pressed  
�� 
cha 
�� 
nmbr�� 0 character_count  
�� 
lfiv
�� .earslfdrlist  @     fss �� 0 	item_list  
�� 
TEXT�� 0 	this_item  
�� .sysonfo4asfe       fss �� 0 	this_info  
�� 
asdr
�� 
pnam� 0 current_name  �~ 0 new_name  �} 0 set_item_name  
�| .sysobeepnull��� ��� long��q � *�k/�,�&E�UW X  ���l 	E�O KhZ������a mva  O_ a &E[a k/EQ` Z[a l/EQ` ZO_ a  Y h[OY��O_ a -a ,E` O�a fl E` O�a &E�O �k_ a -a ,Ekh  _ a �/E`  O�_  %�&E`  O_  j !E` "O_ "a #,e  �_ "a $,E` %O_ a &  :_ %_  ,_ %[a \[Z_ k\Zi2a &E` 'O*_  _ 'l+ (Y hY 8_ %_  -_ %[a \[Zk\Z_ k'2a &E` 'O*_  _ 'l+ (Y hY h[OY�AOlj ) ascr  ��ޭ