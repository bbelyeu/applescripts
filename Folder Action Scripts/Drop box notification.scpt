FasdUAS 1.101.10   ��   ��    k             l         j     �� 	�� 0 dialog_timeout   	 m     ����,  9 3 set the amount of time before dialogs auto-answer.      
  
 l     ������  ��        l     ������  ��        i        I     ��  
�� .facofget****      � ****  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    k           l     ������  ��        l    E    X     E ��   k    @        l   �� !��   ! ) # wait for the all items to be there       " # " r     $ % $ m    ����   % o      ���� 
0 was Was #  & ' & r     ( ) ( m    ����  ) o      ���� 0 isnow isNow '  *�� * V    @ + , + k     ; - -  . / . l     �� 0��   0 � � the basic idea is that the script loops until the file size is the same for more than 30 seconds. That means the file has finished copying.    /  1 2 1 r     ) 3 4 3 n     ' 5 6 5 1   % '��
�� 
ptsz 6 l    % 7�� 7 I    %�� 8��
�� .sysonfo4asfe        file 8 o     !���� 0 i  ��  ��   4 o      ���� 
0 was Was 2  9 : 9 l  * *�� ;��   ; 9 3 this section is getting the file size of the video    :  < = < I  * /�� >��
�� .sysodelanull��� ��� nmbr > m   * +���� ��   =  ? @ ? r   0 9 A B A n   0 7 C D C 1   5 7��
�� 
ptsz D l  0 5 E�� E I  0 5�� F��
�� .sysonfo4asfe        file F o   0 1���� 0 i  ��  ��   B o      ���� 0 isnow isNow @  G�� G l  : :�� H��   H > 8 this section is sampling the file size 30 seconds later   ��   , >     I J I o    ���� 0 isnow isNow J o    ���� 
0 was Was��  �� 0 i    o    ���� 0 added_items    $  get next item i in thisFolder      K L K l  F F������  ��   L  M�� M Q   F N O�� N k   Iv P P  Q R Q r   I L S T S m   I J U U       T o      ���� 0 notification   R  V W V r   M R X Y X c   M P Z [ Z l  M N \�� \ m   M N ] ]      ��   [ m   N O��
�� 
utxt Y o      ���� 0 filelist fileList W  ^ _ ^ r   S X ` a ` c   S V b c b l  S T d�� d m   S T e e      ��   c m   T U��
�� 
utxt a o      ���� 0 notifytitle notifyTitle _  f g f l  Y Y������  ��   g  h i h O   Y c j k j k   ] b l l  m n m l  ] ]�� o��   o   get the name of the folder    n  p�� p r   ] b q r q l  ] ` s�� s n   ] ` t u t 1   ^ `��
�� 
pnam u o   ] ^���� 0 this_folder  ��   r l      v�� v o      ���� 0 folder_name  ��  ��   k m   Y Z w w�null     ߀��  x
Finder.appU  0��'WM�����  �c�P��8����4I�WM�4 ������BI���MACS   alis    r  Macintosh HD               �|~�H+    x
Finder.app                                                       E����        ����  	                CoreServices    �|�9      ��'b      x  T  S  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   i  x y x r   d k z { z l  d i |�� | n   d i } ~ } m   g i��
�� 
nmbr ~ n  d g  �  2  e g��
�� 
cobj � l  d e ��� � o   d e���� 0 added_items  ��  ��   { l      ��� � o      ���� 0 
item_count  ��   y  � � � X   l � ��� � � k   | � � �  � � � O   | � � � � k   � � � �  � � � l  � ��� ���   �   get the name of the folder    �  ��� � r   � � � � � l  � � ��� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thisfile thisFile��   � l      ��� � o      ���� 0 	file_name  ��  ��   � m   | } w �  ��� � Z   � � � ��� � � =  � � � � � l  � � ��� � o   � ����� 0 filelist fileList��   � m   � � � �       � r   � � � � � b   � � � � � l  � � ��� � o   � ����� 0 filelist fileList��   � o   � ����� 0 	file_name   � l      ��� � o      ���� 0 filelist fileList��  ��   � r   � � � � � b   � � � � � b   � � � � � l  � � ��� � o   � ����� 0 filelist fileList��   � m   � � � �  ,     � o   � ����� 0 	file_name   � l      ��� � o      ���� 0 filelist fileList��  ��  �� 0 thisfile thisFile � o   o p���� 0 added_items   �  � � � Z   �G � ��� � � =  � � � � � l  � � ��� � o   � ����� 0 
item_count  ��   � m   � �����  � k   � � � �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � �  New Item in     � l  � � ��� � o   � ����� 0 folder_name  ��   � m   � � � �   folder    � o      ���� 0 notifytitle notifyTitle �  � � � I  � ��� ���
�� .sysottosnull���     TEXT � o   � ����� 0 notifytitle notifyTitle��   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 filelist fileList � m   � � � �   has been added to     � l  � � ��� � o   � ����� 0 folder_name  ��   � m   � � � �   folder.    � o   � ���
�� 
ret  � o   � ���
�� 
ret  � m   � � � � - 'Would you like to view the added items?    � o      ���� 0 notification   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � o   � ����� 0 notification   � �� � �
�� 
btns � J   � � � �  � � � m   � � � � 	 Yes    �  ��� � m   � � � �  No   ��   � �� � �
�� 
dflt � m   � �����  � �� � �
�� 
disp � m   � �����  � �� ���
�� 
givu � o   � ����� 0 dialog_timeout  ��  ��  ��   � k   �G � �  � � � r   � � � � b   � � � � b   � � � � � m   � � � �  New Items in     � l  � � ��� � o   � ����� 0 folder_name  ��   � m   � � �   folder    � o      ���� 0 notifytitle notifyTitle �  � � � I 
�� ���
�� .sysottosnull���     TEXT � o  ���� 0 notifytitle notifyTitle��   �  � � � r  $ � � � b  " � � � b   � � � b     b   b   b   o  ���� 0 filelist fileList m     have been added to     l 	�	 o  �~�~ 0 folder_name  �   m  

   folder.    o  �}
�} 
ret  � o  �|
�| 
ret  � m  ! - 'Would you like to view the added items?    � o      �{�{ 0 notification   � �z I %G�y
�y .sysodlogaskr        TEXT o  %&�x�x 0 notification   �w
�w 
btns J  )1  m  ), 	 Yes    �v m  ,/  No   �v   �u
�u 
dflt m  45�t�t  �s
�s 
disp m  89�r�r  �q�p
�q 
givu o  <A�o�o 0 dialog_timeout  �p  �z   �  r  HQ l HO �n  n  HO!"! 1  KO�m
�m 
bhit" l HK#�l# 1  HK�k
�k 
rslt�l  �n   l     $�j$ o      �i�i 0 user_choice  �j   %&% l RR�h�g�h  �g  & '(' Z  Rt)*�f�e) = RW+,+ o  RS�d�d 0 user_choice  , m  SV-- 	 Yes   * O  Zp./. k  ^o00 121 l ^^�c3�c  3  go to the desktop    2 454 I ^c�b�a�`
�b .miscactvnull��� ��� null�a  �`  5 676 l dd�_8�_  8  open the folder   7 9:9 I di�^;�]
�^ .aevtodocnull  �    alis; o  de�\�\ 0 this_folder  �]  : <=< l jj�[>�[  >  select the items   = ?�Z? I jo�Y@�X
�Y .miscmvisnull���    obj @ l jkA�WA o  jk�V�V 0 added_items  �W  �X  �Z  / m  Z[ w�f  �e  ( B�UB l uu�T�S�T  �S  �U   O R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  ��  ��    C�OC l     �N�M�N  �M  �O       �LD�KE�L  D �J�I�J 0 dialog_timeout  
�I .facofget****      � ****�K,E �H �G�FFG�E
�H .facofget****      � ****�G 0 this_folder  �F �D�C�B
�D 
flst�C 0 added_items  �B  F �A�@�?�>�=�<�;�:�9�8�7�6�5�A 0 this_folder  �@ 0 added_items  �? 0 i  �> 
0 was Was�= 0 isnow isNow�< 0 notification  �; 0 filelist fileList�: 0 notifytitle notifyTitle�9 0 folder_name  �8 0 
item_count  �7 0 thisfile thisFile�6 0 	file_name  �5 0 user_choice  G .�4�3�2�1�0�/�. U ]�- e w�,�+ � � � ��* � ��) ��( � ��'�&�%�$�# � �
�"�!-� ����
�4 
kocl
�3 
cobj
�2 .corecnte****       ****
�1 .sysonfo4asfe        file
�0 
ptsz�/ 
�. .sysodelanull��� ��� nmbr
�- 
utxt
�, 
pnam
�+ 
nmbr
�* .sysottosnull���     TEXT
�) 
ret 
�( 
btns
�' 
dflt
�& 
disp
�% 
givu�$ 
�# .sysodlogaskr        TEXT
�" 
rslt
�! 
bhit
�  .miscactvnull��� ��� null
� .aevtodocnull  �    alis
� .miscmvisnull���    obj �  �  �E� D�[��l kh jE�OkE�O 'h���j �,E�O�j O�j �,E�OP[OY��[OY��O2�E�O��&E�O��&E�O� ��,E�UO��-�,E�O 4�[��l kh 
� ��,E�UO��  
��%E�Y 	��%�%E�[OY��O�k  Sa �%a %E�O�j O�a %�%a %_ %_ %a %E�O�a a a lva la ka b   a  Y Pa �%a  %E�O�j O�a !%�%a "%_ %_ %a #%E�O�a a $a %lva la ka b   a  O_ &a ',E�O�a (  � *j )O�j *O�j +UY hOPW X , -hascr  ��ޭ