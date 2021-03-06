FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Replace Text In Item Names

This script is designed to replace text in the names of specific files and/or folders in the front window of the desktop. 
If no folder windows are open, the script will affect files and/or folders on the desktop.

Copyright � 2001�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	� 
 R e p l a c e   T e x t   I n   I t e m   N a m e s 
 
 T h i s   s c r i p t   i s   d e s i g n e d   t o   r e p l a c e   t e x t   i n   t h e   n a m e s   o f   s p e c i f i c   f i l e s   a n d / o r   f o l d e r s   i n   t h e   f r o n t   w i n d o w   o f   t h e   d e s k t o p .   
 I f   n o   f o l d e r   w i n d o w s   a r e   o p e n ,   t h e   s c r i p t   w i l l   a f f e c t   f i l e s   a n d / o r   f o l d e r s   o n   t h e   d e s k t o p . 
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
 l     ��������  ��  ��        l     ��  ��    [ Uset the source_folder to choose folder with prompt "Folder containing items to edit:"     �   � s e t   t h e   s o u r c e _ f o l d e r   t o   c h o o s e   f o l d e r   w i t h   p r o m p t   " F o l d e r   c o n t a i n i n g   i t e m s   t o   e d i t : "      l     ��������  ��  ��        l     ��  ��    5 / get the path to the folder of the front window     �   ^   g e t   t h e   p a t h   t o   t h e   f o l d e r   o f   t h e   f r o n t   w i n d o w      l     ��  ��    > 8 if no windows are open, the desktop folder will be used     �   p   i f   n o   w i n d o w s   a r e   o p e n ,   t h e   d e s k t o p   f o l d e r   w i l l   b e   u s e d      l    # ����  Q     #   ! "   O    # $ # r     % & % c     ' ( ' l    )���� ) n     * + * m    ��
�� 
cfol + l    ,���� , 4   �� -
�� 
cwin - m   	 
���� ��  ��  ��  ��   ( m    ��
�� 
alis & l      .���� . o      ���� 0 source_folder  ��  ��   $ m     / /�                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��   ! R      ������
�� .ascrerr ****      � ****��  ��   " l   # 0 1 2 0 r    # 3 4 3 I   !�� 5 6
�� .earsffdralis        afdr 5 m    ��
�� afdmdesk 6 �� 7��
�� 
rtyp 7 m    ��
�� 
alis��   4 l      8���� 8 o      ���� 0 source_folder  ��  ��   1   no open folder windows    2 � 9 9 .   n o   o p e n   f o l d e r   w i n d o w s��  ��     : ; : l  $ 3 <���� < I  $ 3�� = >
�� .sysodlogaskr        TEXT = m   $ % ? ? � @ @ , S e a r c h   a n d   r e p l a c e   i n : > �� A B
�� 
btns A J   & + C C  D E D m   & ' F F � G G  F i l e   N a m e s E  H I H m   ' ( J J � K K  F o l d e r   N a m e s I  L�� L m   ( ) M M � N N  B o t h��   B �� O��
�� 
dflt O m   , -���� ��  ��  ��   ;  P Q P l  4 ? R���� R r   4 ? S T S l  4 ; U���� U n   4 ; V W V 1   7 ;��
�� 
bhit W l  4 7 X���� X 1   4 7��
�� 
rslt��  ��  ��  ��   T l      Y���� Y o      ���� 0 search_parameter  ��  ��  ��  ��   Q  Z [ Z l     ��������  ��  ��   [  \ ] \ l  @ � ^���� ^ T   @ � _ _ k   E { ` `  a b a I  E _�� c d
�� .sysodlogaskr        TEXT c m   E H e e � f f J E n t e r   t e x t   t o   f i n d   i n   t h e   i t e m   n a m e s : d �� g h
�� 
dtxt g m   K N i i � j j   h �� k l
�� 
btns k J   O W m m  n o n m   O R p p � q q  C a n c e l o  r�� r m   R U s s � t t  O K��   l �� u��
�� 
dflt u m   X Y���� ��   b  v w v r   ` k x y x l  ` g z���� z n   ` g { | { 1   c g��
�� 
ttxt | l  ` c }���� } 1   ` c��
�� 
rslt��  ��  ��  ��   y l      ~���� ~ o      ���� 0 search_string  ��  ��   w  ��  Z  l { � ����� � >  l s � � � l  l o ����� � o   l o���� 0 search_string  ��  ��   � m   o r � � � � �   �  S   v w��  ��  ��  ��  ��   ]  � � � l     ��������  ��  ��   �  � � � l  � ����� � T   � � � k   � � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � . E n t e r   r e p l a c e m e n t   t e x t : � �� � �
�� 
dtxt � m   � � � � � � �   � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � ����� ��   �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
ttxt � l  � � ����� � 1   � ���
�� 
rslt��  ��  ��  ��   � l      ����� � o      ���� 0 replacement_string  ��  ��   �  ��� � Z   � � � � � � � E   � � � � � l  � � ����� � o   � ����� 0 replacement_string  ��  ��   � m   � � � � � � �  : � k   � � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � b A   f i l e   o r   f o l d e r   n a m e   c a n n o t   c o n t a i n   a   c o l o n   ( : ) . � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � ����� ��  ��   �  � � � E   � � � � � l  � � ����� � o   � ����� 0 replacement_string  ��  ��   � m   � � � � � � �  / �  ��� � k   � � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � r A   f i l e   o r   f o l d e r   n a m e   c a n n o t   c o n t a i n   a   f o r w a r d   s l a s h   ( / ) . � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  ��� � m   � � � � � � �  O K��   � �� ��
�� 
dflt � m   � ��~�~ �  ��  ��   �  S   � ���  ��  ��   �  � � � l     �}�|�{�}  �|  �{   �  � � � l & ��z�y � I &�x � �
�x .sysodlogaskr        TEXT � b   � � � b   � � � b   � � � b  	 � � � m   � � � � �  R e p l a c e    � l  ��w�v � o  �u�u 0 search_string  �w  �v   � m  	 � � � � �     w i t h    � l  ��t�s � o  �r�r 0 replacement_string  �t  �s   � m   � � � � � *    i n   e v e r y   i t e m   n a m e ? � �q � �
�q 
btns � J   � �  � � � m     �  C a n c e l � �p m   �  O K�p   � �o�n
�o 
dflt m   �m�m �n  �z  �y   �  l     �l�k�j�l  �k  �j   	 l '4
�i�h
 r  '4 I '0�g
�g .earslfdrlist  @     fss  o  '(�f�f 0 source_folder   �e�d
�e 
lfiv m  +,�c
�c boovfals�d   l     �b�a o      �`�` 0 	item_list  �b  �a  �i  �h  	  l 5<�_�^ r  5< c  5: o  56�]�] 0 source_folder   m  69�\
�\ 
TEXT o      �[�[ 0 source_folder  �_  �^    l =G�Z�Y Y  =G�X�W k  RB   r  R^!"! n  RZ#$# 4  UZ�V%
�V 
cobj% o  XY�U�U 0 i  $ l RU&�T�S& o  RU�R�R 0 	item_list  �T  �S  " o      �Q�Q 0 	this_item    '(' r  _j)*) c  _f+,+ l _d-�P�O- b  _d./. o  _`�N�N 0 source_folder  / o  `c�M�M 0 	this_item  �P  �O  , m  de�L
�L 
alis* o      �K�K 0 	this_item  ( 010 r  kv232 I kr�J4�I
�J .sysonfo4asfe       fss 4 o  kn�H�H 0 	this_item  �I  3 o      �G�G 0 	this_info  1 565 r  w�787 l w~9�F�E9 n  w~:;: 1  z~�D
�D 
pnam; o  wz�C�C 0 	this_info  �F  �E  8 l     <�B�A< o      �@�@ 0 current_name  �B  �A  6 =>= r  ��?@? m  ���?
�? boovfals@ o      �>�> 0 change_flag  > A�=A Z  �BBC�<�;B E  ��DED l ��F�:�9F o  ���8�8 0 current_name  �:  �9  E l ��G�7�6G o  ���5�5 0 search_string  �7  �6  C k  �>HH IJI Z  ��KLM�4K F  ��NON = ��PQP l ��R�3�2R o  ���1�1 0 search_parameter  �3  �2  Q m  ��SS �TT  F o l d e r   N a m e sO = ��UVU n  ��WXW l 	��Y�0�/Y 1  ���.
�. 
asdr�0  �/  X o  ���-�- 0 	this_info  V m  ���,
�, boovtrueL r  ��Z[Z m  ���+
�+ boovtrue[ l     \�*�)\ o      �(�( 0 change_flag  �*  �)  M ]^] F  ��_`_ = ��aba l ��c�'�&c o  ���%�% 0 search_parameter  �'  �&  b m  ��dd �ee  F i l e   N a m e s` = ��fgf n  ��hih l 	��j�$�#j 1  ���"
�" 
asdr�$  �#  i o  ���!�! 0 	this_info  g m  ��� 
�  boovfals^ klk r  ��mnm m  ���
� boovtruen l     o��o o      �� 0 change_flag  �  �  l pqp = ��rsr l ��t��t o  ���� 0 search_parameter  �  �  s m  ��uu �vv  B o t hq w�w r  ��xyx m  ���
� boovtruey l     z��z o      �� 0 change_flag  �  �  �  �4  J {�{ Z  �>|}��| = ��~~ l ������ o  ���� 0 change_flag  �  �   m  ���
� boovtrue} k  �:�� ��� l ������  � - ' replace target string using delimiters   � ��� N   r e p l a c e   t a r g e t   s t r i n g   u s i n g   d e l i m i t e r s� ��� r  ����� l �����
� o  ���	�	 0 search_string  �  �
  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  �
��� n  ���� 2  �
� 
citm� l ����� o  ��� 0 current_name  �  �  � l     ���� o      � �  0 text_item_list  �  �  � ��� r  ��� l ������ o  ���� 0 replacement_string  ��  ��  � n     ��� 1  ��
�� 
txdl� 1  ��
�� 
ascr� ��� r  "��� c  ��� l ������ o  ���� 0 text_item_list  ��  ��  � m  ��
�� 
TEXT� l     ������ o      ���� 0 new_item_name  ��  ��  � ��� r  #.��� m  #&�� ���  � n     ��� 1  )-��
�� 
txdl� 1  &)��
�� 
ascr� ���� n /:��� I  0:������� 0 set_item_name  � ��� o  03���� 0 	this_item  � ���� o  36���� 0 new_item_name  ��  ��  �  f  /0��  �  �  �  �<  �;  �=  �X 0 i   m  @A����  n  AM��� m  HL��
�� 
nmbr� n AH��� 2 DH��
�� 
cobj� l AD������ o  AD���� 0 	item_list  ��  ��  �W  �Z  �Y   ��� l     ��������  ��  ��  � ��� l HM������ I HM�����
�� .sysobeepnull��� ��� long� m  HI���� ��  ��  ��  � ��� l     ��������  ��  ��  � ���� i     ��� I      ������� 0 set_item_name  � ��� o      ���� 0 	this_item  � ���� o      ���� 0 new_item_name  ��  ��  � O     ���� k    ��� ��� l   ������  �  activate   � ���  a c t i v a t e� ��� r    ��� c    	��� l   ������ l   ������ n    ��� m    ��
�� 
ctnr� o    ���� 0 	this_item  ��  ��  ��  ��  � m    ��
�� 
ctxt� l     ������ o      ���� 0 parent_container_path  ��  ��  � ���� Z    ������� H    �� l   ������ I   �����
�� .coredoexbool        obj � 4    ���
�� 
cobj� l   ������ b    ��� l   ������ o    ���� 0 parent_container_path  ��  ��  � o    ���� 0 new_item_name  ��  ��  ��  ��  ��  � Q    ����� r    "��� o    ���� 0 new_item_name  � l     ������ n      ��� 1    !��
�� 
pnam� o    ���� 0 	this_item  ��  ��  � R      ����
�� .ascrerr ****      � ****� l     ������ o      ���� 0 error_message  ��  ��  � �����
�� 
errn� l     ������ o      ���� 0 error_number  ��  ��  ��  � k   * ��� ��� Z   * 9������ =  * -��� l  * +������ o   * +���� 0 error_number  ��  ��  � m   + ,������� r   0 3��� m   0 1�� �   x T h i s   n a m e   c o n t a i n s   i m p r o p e r   c h a r a c t e r s ,   s u c h   a s   a   c o l o n   ( : ) .� l     ���� o      ���� 0 error_message  ��  ��  ��  � l  6 9 l  6 9 r   6 9	 o   6 7���� 0 error_message  	 l     
����
 o      ���� 0 error_message  ��  ��   2 , "The name is more than 31 characters long."    � X   " T h e   n a m e   i s   m o r e   t h a n   3 1   c h a r a c t e r s   l o n g . " $ the suggested name is too long    � < t h e   s u g g e s t e d   n a m e   i s   t o o   l o n g�  l  : :����   
 beep    �  b e e p  O  : P I  > O��
�� .sysodlogaskr        TEXT l  > ?���� o   > ?���� 0 error_message  ��  ��   ��
�� 
dtxt o   @ A���� 0 new_item_name   ��
�� 
btns J   B G  m   B C   �!!  C a n c e l "#" m   C D$$ �%%  S k i p# &��& m   D E'' �((  O K��   ��)��
�� 
dflt) m   H I���� ��    f   : ; *+* s   Q i,-, c   Q X./. l  Q T0����0 1   Q T��
�� 
rslt��  ��  / m   T W��
�� 
list- J      11 232 o      ���� 0 new_item_name  3 4��4 o      ���� 0 button_pressed  ��  + 565 Z  j x78����7 =  j o9:9 l  j k;����; o   j k���� 0 button_pressed  ��  ��  : m   k n<< �==  S k i p8 L   r t>> m   r s����  ��  ��  6 ?��? n  y �@A@ I   z ���B���� 0 set_item_name  B CDC o   z {���� 0 	this_item  D E��E o   { |���� 0 new_item_name  ��  ��  A  f   y z��  ��  � l  � �FGHF k   � �II JKJ l  � ���LM��  L 
 beep   M �NN  b e e pK OPO O  � �QRQ I  � ���ST
�� .sysodlogaskr        TEXTS m   � �UU �VV T T h i s   n a m e   i s   a l r e a d y   t a k e n ,   p l e a s e   r e n a m e .T ��WX
�� 
dtxtW o   � ����� 0 new_item_name  X �YZ
� 
btnsY J   � �[[ \]\ m   � �^^ �__  C a n c e l] `a` m   � �bb �cc  S k i pa d�~d m   � �ee �ff  O K�~  Z �}g�|
�} 
dfltg m   � ��{�{ �|  R  f   � �P hih s   � �jkj c   � �lml l  � �n�z�yn 1   � ��x
�x 
rslt�z  �y  m m   � ��w
�w 
listk J      oo pqp o      �v�v 0 new_item_name  q r�ur o      �t�t 0 button_pressed  �u  i sts Z  � �uv�s�ru =  � �wxw l  � �y�q�py o   � ��o�o 0 button_pressed  �q  �p  x m   � �zz �{{  S k i pv L   � �|| m   � ��n�n  �s  �r  t }�m} n  � �~~ I   � ��l��k�l 0 set_item_name  � ��� o   � ��j�j 0 	this_item  � ��i� o   � ��h�h 0 new_item_name  �i  �k    f   � ��m  G  the name already exists   H ��� . t h e   n a m e   a l r e a d y   e x i s t s��  � m     ���                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��  ��       �g����g  � �f�e�f 0 set_item_name  
�e .aevtoappnull  �   � ****� �d��c�b���a�d 0 set_item_name  �c �`��` �  �_�^�_ 0 	this_item  �^ 0 new_item_name  �b  � �]�\�[�Z�Y�X�] 0 	this_item  �\ 0 new_item_name  �[ 0 parent_container_path  �Z 0 error_message  �Y 0 error_number  �X 0 button_pressed  � ��W�V�U�T�S�R��Q��P�O $'�N�M�L�K�J<�IU^bez
�W 
ctnr
�V 
ctxt
�U 
cobj
�T .coredoexbool        obj 
�S 
pnam�R 0 error_message  � �H�G�F
�H 
errn�G 0 error_number  �F  �Q��
�P 
dtxt
�O 
btns
�N 
dflt�M 
�L .sysodlogaskr        TEXT
�K 
rslt
�J 
list�I 0 set_item_name  �a �� Ϡ�,�&E�O*㢡%/j  k 
���,FW ]X  ��  �E�Y �E�O) ������mv�ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO)��l+ Y P) a ��a a a mv�ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO)��l+ U� �E��D�C���B
�E .aevtoappnull  �   � ****� k    M��  ��  :��  P��  \��  ���  ��� �� �� �� ��A�A  �D  �C  � �@�@ 0 i  � I /�?�>�=�<�;�:�9�8�7 ?�6 F J M�5�4�3�2�1�0 e�/ i p s�.�-�, � � � � ��+ ��* � � � � � � � � � � �)�(�'�&�%�$�#�"�!� ��S��du�������
�? 
cwin
�> 
cfol
�= 
alis�< 0 source_folder  �;  �:  
�9 afdmdesk
�8 
rtyp
�7 .earsffdralis        afdr
�6 
btns
�5 
dflt�4 
�3 .sysodlogaskr        TEXT
�2 
rslt
�1 
bhit�0 0 search_parameter  
�/ 
dtxt�. 
�- 
ttxt�, 0 search_string  �+ 0 replacement_string  
�* .sysobeepnull��� ��� long
�) 
lfiv
�( .earslfdrlist  @     fss �' 0 	item_list  
�& 
TEXT
�% 
cobj
�$ 
nmbr�# 0 	this_item  
�" .sysonfo4asfe       fss �! 0 	this_info  
�  
pnam� 0 current_name  � 0 change_flag  
� 
asdr
� 
bool
� 
ascr
� 
txdl
� 
citm� 0 text_item_list  � 0 new_item_name  � 0 set_item_name  �BN � *�k/�,�&E�UW X  ���l 	E�O�����mv�ma  O_ a ,E` O ?hZa a a �a a lv�la  O_ a ,E` O_ a  Y h[OY��O hZa a a �a  a !lv�la  O_ a ,E` "O_ "a # *j $Oa %�a &a 'lv�la  Y *_ "a ( *j $Oa )�a *a +lv�la  Y [OY��Oa ,_ %a -%_ "%a .%�a /a 0lv�la  O�a 1fl 2E` 3O�a 4&E�O	k_ 3a 5-a 6,Ekh  _ 3a 5�/E` 7O�_ 7%�&E` 7O_ 7j 8E` 9O_ 9a :,E` ;OfE` <O_ ;_  �_ a = 	 _ 9a >,e a ?& 
eE` <Y 7_ a @ 	 _ 9a >,f a ?& 
eE` <Y _ a A  
eE` <Y hO_ <e  L_ _ Ba C,FO_ ;a D-E` EO_ "_ Ba C,FO_ Ea 4&E` FOa G_ Ba C,FO)_ 7_ Fl+ HY hY h[OY�
Olj $ ascr  ��ޭ