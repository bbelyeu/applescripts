FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Add to File Names

This script is designed to add a prefix or suffix to files in the front window of the desktop.
If no folder windows are open, the script will affect items on the desktop.

Copyright � 2001�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	V 
 A d d   t o   F i l e   N a m e s 
 
 T h i s   s c r i p t   i s   d e s i g n e d   t o   a d d   a   p r e f i x   o r   s u f f i x   t o   f i l e s   i n   t h e   f r o n t   w i n d o w   o f   t h e   d e s k t o p . 
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
 l     ��������  ��  ��        l     ��  ��    ? 9 The following line is disabled due to a Menu Manager bug     �   r   T h e   f o l l o w i n g   l i n e   i s   d i s a b l e d   d u e   t o   a   M e n u   M a n a g e r   b u g      l     ��  ��    l fset the source_folder to (choose folder with prompt "Pick the folder containing the files to rename:")     �   � s e t   t h e   s o u r c e _ f o l d e r   t o   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " P i c k   t h e   f o l d e r   c o n t a i n i n g   t h e   f i l e s   t o   r e n a m e : " )      l     ��������  ��  ��        l    # ����  Q     #     O       r       !   c     " # " l    $���� $ n     % & % m    ��
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
alis��   / l      3���� 3 o      ���� 0 source_folder  ��  ��   ,   no open folder windows    - � 4 4 .   n o   o p e n   f o l d e r   w i n d o w s��  ��     5 6 5 l     ��������  ��  ��   6  7 8 7 l  $ ' 9���� 9 r   $ ' : ; : m   $ % < < � = =   ; l      >���� > o      ���� 0 prefix_or_suffix  ��  ��  ��  ��   8  ? @ ? l  ( r A���� A T   ( r B B k   - m C C  D E D I  - @�� F G
�� .sysodlogaskr        TEXT F m   - . H H � I I D E n t e r   t h e   p r e f i x   o r   s u f f i x   t o   u s e : G �� J K
�� 
dtxt J l  / 0 L���� L o   / 0���� 0 prefix_or_suffix  ��  ��   K �� M��
�� 
btns M J   1 : N N  O P O m   1 2 Q Q � R R  C a n c e l P  S T S m   2 5 U U � V V  P r e f i x T  W�� W m   5 8 X X � Y Y  S u f f i x��  ��   E  Z [ Z s   A _ \ ] \ c   A H ^ _ ^ l  A D `���� ` 1   A D��
�� 
rslt��  ��   _ m   D G��
�� 
list ] J       a a  b c b l      d���� d o      ���� 0 prefix_or_suffix  ��  ��   c  e�� e l      f���� f o      ���� 0 button_pressed  ��  ��  ��   [  g�� g Z  ` m h i���� h >  ` e j k j l  ` a l���� l o   ` a���� 0 prefix_or_suffix  ��  ��   k m   a d m m � n n   i  S   h i��  ��  ��  ��  ��   @  o p o l  s � q���� q r   s � r s r I  s |�� t u
�� .earslfdrlist  @     fss  t o   s t���� 0 source_folder   u �� v��
�� 
lfiv v m   w x��
�� boovfals��   s l      w���� w o      ���� 0 	item_list  ��  ��  ��  ��   p  x y x l  � � z���� z r   � � { | { c   � � } ~ } o   � ����� 0 source_folder   ~ m   � ���
�� 
TEXT | o      ���� 0 source_folder  ��  ��   y   �  l  �% ����� � Y   �% ��� � ��� � k   �  � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � l  � � ����� � o   � ����� 0 	item_list  ��  ��   � o      ���� 0 	this_item   �  � � � r   � � � � � c   � � � � � l  � � ����� � b   � � � � � o   � ����� 0 source_folder   � o   � ����� 0 	this_item  ��  ��   � m   � ���
�� 
alis � o      ���� 0 	this_item   �  � � � r   � � � � � I  � ��� ���
�� .sysonfo4asfe       fss  � o   � ����� 0 	this_item  ��   � o      ���� 0 	this_info   �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 	this_info  ��  ��   � l      ����� � o      ���� 0 current_name  ��  ��   �  ��� � Z   �  � ����� � F   � � � � � =  � � � � � n   � � � � � 1   � ���
�� 
asdr � o   � ����� 0 	this_info   � m   � ���
�� boovfals � =  � � � � � n   � � � � � l 	 � � ����� � m   � ���
�� 
alis��  ��   � o   � ����� 0 	this_info   � m   � ���
�� boovfals � k   � � �  � � � Z   � � ��� � � =  � � � � � l  � � ����� � o   � ����� 0 button_pressed  ��  ��   � m   � � � � � � �  P r e f i x � r   �  � � � c   � � � � � l  � � ����� � l  � � ���~ � b   � � � � � l  � � ��}�| � o   � ��{�{ 0 prefix_or_suffix  �}  �|   � l  � � ��z�y � o   � ��x�x 0 current_name  �z  �y  �  �~  ��  ��   � m   � ��w
�w 
TEXT � l      ��v�u � o      �t�t 0 new_file_name  �v  �u  ��   � r   � � � c   � � � l  ��s�r � l  ��q�p � b   � � � l  ��o�n � o  �m�m 0 current_name  �o  �n   � l  ��l�k � o  �j�j 0 prefix_or_suffix  �l  �k  �q  �p  �s  �r   � m  �i
�i 
TEXT � l      ��h�g � o      �f�f 0 new_file_name  �h  �g   �  ��e � n  � � � I  �d ��c�d 0 set_item_name   �  � � � o  �b�b 0 	this_item   �  ��a � l  ��`�_ � o  �^�^ 0 new_file_name  �`  �_  �a  �c   �  f  �e  ��  ��  ��  �� 0 i   � m   � ��]�]  � n   � � � � � m   � ��\
�\ 
nmbr � n  � � � � � 2  � ��[
�[ 
cobj � l  � � ��Z�Y � o   � ��X�X 0 	item_list  �Z  �Y  ��  ��  ��   �  � � � l &+ ��W�V � I &+�U ��T
�U .sysobeepnull��� ��� long � m  &'�S�S �T  �W  �V   �  � � � l     �R�Q�P�R  �Q  �P   �  ��O � i      � � � I      �N ��M�N 0 set_item_name   �  � � � o      �L�L 0 	this_item   �  ��K � o      �J�J 0 new_item_name  �K  �M   � O     � � � � k    � � �  � � � l   �I � ��I   �  activate    � � � �  a c t i v a t e �  � � � r     � � � c    	 � � � l    ��H�G � l    ��F�E � n     � � � m    �D
�D 
ctnr � o    �C�C 0 	this_item  �F  �E  �H  �G   � m    �B
�B 
ctxt � l      ��A�@ � o      �?�? 0 parent_container_path  �A  �@   �  �>  Z    ��= H     l   �<�; I   �:�9
�: .coredoexbool        obj  4    �8
�8 
cobj l   �7�6 b    	
	 l   �5�4 o    �3�3 0 parent_container_path  �5  �4  
 o    �2�2 0 new_item_name  �7  �6  �9  �<  �;   Q    � r    " o    �1�1 0 new_item_name   l     �0�/ n       1    !�.
�. 
pnam o    �-�- 0 	this_item  �0  �/   R      �,
�, .ascrerr ****      � **** l     �+�* o      �)�) 0 error_message  �+  �*   �(�'
�( 
errn l     �&�% o      �$�$ 0 error_number  �&  �%  �'   k   * �  Z   * 9�# =  * -  l  * +!�"�!! o   * +� �  0 error_number  �"  �!    m   + ,���� r   0 3"#" m   0 1$$ �%% x T h i s   n a m e   c o n t a i n s   i m p r o p e r   c h a r a c t e r s ,   s u c h   a s   a   c o l o n   ( : ) .# l     &��& o      �� 0 error_message  �  �  �#   l  6 9'()' l  6 9*+,* r   6 9-.- o   6 7�� 0 error_message  . l     /��/ o      �� 0 error_message  �  �  + 2 , "The name is more than 31 characters long."   , �00 X   " T h e   n a m e   i s   m o r e   t h a n   3 1   c h a r a c t e r s   l o n g . "( $ the suggested name is too long   ) �11 < t h e   s u g g e s t e d   n a m e   i s   t o o   l o n g 232 l  : :�45�  4 
 beep   5 �66  b e e p3 787 O  : P9:9 I  > O�;<
� .sysodlogaskr        TEXT; l  > ?=��= o   > ?�� 0 error_message  �  �  < �>?
� 
dtxt> o   @ A�� 0 new_item_name  ? �@A
� 
btns@ J   B GBB CDC m   B CEE �FF  C a n c e lD GHG m   C DII �JJ  S k i pH K�K m   D ELL �MM  O K�  A �N�
� 
dfltN m   H I�� �  :  f   : ;8 OPO s   Q iQRQ c   Q XSTS l  Q TU��
U 1   Q T�	
�	 
rslt�  �
  T m   T W�
� 
listR J      VV WXW o      �� 0 new_item_name  X Y�Y o      �� 0 button_pressed  �  P Z[Z Z  j x\]��\ =  j o^_^ l  j k`��` o   j k� �  0 button_pressed  �  �  _ m   k naa �bb  S k i p] L   r tcc m   r s����  �  �  [ d��d n  y �efe I   z ���g���� 0 set_item_name  g hih o   z {���� 0 	this_item  i j��j o   { |���� 0 new_item_name  ��  ��  f  f   y z��  �=   l  � �klmk k   � �nn opo l  � ���qr��  q 
 beep   r �ss  b e e pp tut O  � �vwv I  � ���xy
�� .sysodlogaskr        TEXTx m   � �zz �{{ T T h i s   n a m e   i s   a l r e a d y   t a k e n ,   p l e a s e   r e n a m e .y ��|}
�� 
dtxt| o   � ����� 0 new_item_name  } ��~
�� 
btns~ J   � ��� ��� m   � ��� ���  C a n c e l� ��� m   � ��� ���  S k i p� ���� m   � ��� ���  O K��   �����
�� 
dflt� m   � ����� ��  w  f   � �u ��� s   � ���� c   � ���� l  � ������� 1   � ���
�� 
rslt��  ��  � m   � ���
�� 
list� J      �� ��� o      ���� 0 new_item_name  � ���� o      ���� 0 button_pressed  ��  � ��� Z  � �������� =  � ���� l  � ������� o   � ����� 0 button_pressed  ��  ��  � m   � ��� ���  S k i p� L   � ��� m   � �����  ��  ��  � ���� n  � ���� I   � �������� 0 set_item_name  � ��� o   � ����� 0 	this_item  � ���� o   � ����� 0 new_item_name  ��  ��  �  f   � ���  l  the name already exists   m ��� . t h e   n a m e   a l r e a d y   e x i s t s�>   � m     ���                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��  �O       �������  � ������ 0 set_item_name  
�� .aevtoappnull  �   � ****� �� ����������� 0 set_item_name  �� ����� �  ������ 0 	this_item  �� 0 new_item_name  ��  � �������������� 0 	this_item  �� 0 new_item_name  �� 0 parent_container_path  �� 0 error_message  �� 0 error_number  �� 0 button_pressed  � ����������������$����EIL����������a��z����
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
�� .aevtoappnull  �   � ****� k    +��  ��  7��  ?��  o��  x��  ��  �����  ��  ��  � ���� 0 i  � ) *������������������ <�� H���� Q U X������������ m������������������������ �������
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
asdr
�� 
bool�� 0 new_file_name  �� 0 set_item_name  
�� .sysobeepnull��� ��� long��, � *�k/�,�&E�UW X  ���l 	E�O�E�O IhZ�����a a mva  O_ a &E[a k/EQ�Z[a l/EQ` ZO�a  Y h[OY��O�a fl E` O�a &E�O �k_ a -a ,Ekh  _ a �/E` O�_ %�&E` O_ j E`  O_  a !,E` "O_  a #,f 	 _  �,f a $& 8_ a %  �_ "%a &E` &Y _ "�%a &E` &O)_ _ &l+ 'Y h[OY�xOlj ( ascr  ��ޭ