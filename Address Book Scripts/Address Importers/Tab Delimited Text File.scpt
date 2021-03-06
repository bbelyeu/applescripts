FasdUAS 1.101.10   ��   ��    k             l      �� ��   
Tab Delimited Text File

Copyright � 2002-2006 Apple Computer, Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
       	  l     ������  ��   	  
  
 l      �� ��    � �
This script is used in conjunction with the Import Addresses script. It
implements address importing from tab delimited text files through the
importToAddressBook handler.
         l     ������  ��        i         I      �� ���� *0 importtoaddressbook importToAddressBook   ��  o      ���� $0 tabdelimitedfile tabDelimitedFile��  ��    k     �       l     �� ��      (file or alias)         l     �� ��      returns integer         l     ������  ��        r        !   I    �� "��
�� .rdwropenshor       file " o     ���� $0 tabdelimitedfile tabDelimitedFile��   ! o      ���� 0 importfileref importFileRef   # $ # r     % & % I   �� ' (
�� .rdwrread****        **** ' o    	���� 0 importfileref importFileRef ( �� )��
�� 
deli ) J   
  * *  + , + o   
 ��
�� 
ret  ,  - . - I   �� /��
�� .sysontocTEXT       shor / m    ���� 
��   .  0�� 0 b     1 2 1 o    ��
�� 
ret  2 l    3�� 3 I   �� 4��
�� .sysontocTEXT       shor 4 m    ���� 
��  ��  ��  ��   & o      ���� 0 
theentries 
theEntries $  5 6 5 I    %�� 7��
�� .rdwrclosnull���     **** 7 o     !���� 0 importfileref importFileRef��   6  8 9 8 l  & &������  ��   9  : ; : r   & + < = < 1   & )��
�� 
txdl = o      ���� "0 saveddelimiters savedDelimiters ;  > ? > r   , 1 @ A @ 1   , -��
�� 
tab  A 1   - 0��
�� 
txdl ?  B C B r   2 : D E D n   2 8 F G F 2   6 8��
�� 
citm G l  2 6 H�� H n   2 6 I J I 4   3 6�� K
�� 
cobj K m   4 5����  J o   2 3���� 0 
theentries 
theEntries��   E o      ����  0 thefieldlabels theFieldLabels C  L M L r   ; @ N O N o   ; <���� "0 saveddelimiters savedDelimiters O 1   < ?��
�� 
txdl M  P Q P l  A A������  ��   Q  R S R r   A H T U T I  A F�� V��
�� .corecnte****       **** V o   A B���� 0 
theentries 
theEntries��   U o      ���� "0 numberofentries numberOfEntries S  W X W r   I L Y Z Y m   I J [ [       Z o      ���� 0 	vcarddata 	vCardData X  \ ] \ O   M � ^ _ ^ k   Q � ` `  a b a Y   Q � c�� d e�� c k   [ { f f  g h g r   [ k i j i I  [ i�� k l�� 0 makenewperson makeNewPerson k  f   [ \ l �� m n
�� 
from m l  ] a o�� o n   ] a p q p 4   ^ a�� r
�� 
cobj r o   _ `���� 0 entrynumber entryNumber q o   ] ^���� 0 
theentries 
theEntries��   n �� s���� 0 fieldlabels fieldLabels s o   b c����  0 thefieldlabels theFieldLabels��   j o      ���� 0 	newperson 	newPerson h  t u t r   l u v w v b   l s x y x o   l m���� 0 	vcarddata 	vCardData y l  m r z�� z n   m r { | { 1   n r��
�� 
az49 | o   m n���� 0 	newperson 	newPerson��   w o      ���� 0 	vcarddata 	vCardData u  }�� } I  v {�� ~��
�� .coredelonull���     obj  ~ o   v w���� 0 	newperson 	newPerson��  ��  �� 0 entrynumber entryNumber d m   T U����  e o   U V���� "0 numberofentries numberOfEntries��   b   �  l  � �������  ��   �  ��� � I  � �������
�� .az00az15null��� ��� obj ��  ��  ��   _ m   M N � ��null     s����  <Address Book.app �x��8����  ��+�18 X���[���x�� ����0i����adrb   alis    h  Mac OS X 10.4              �,�H+    <Address Book.app                                                ��|�        ����  	                Applications    �-P�      ��      <  +Mac OS X 10.4:Applications:Address Book.app   "  A d d r e s s   B o o k . a p p    M a c   O S   X   1 0 . 4  Applications/Address Book.app   / ��   ]  � � � l  � �������  ��   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � l  � � ��� � I  � ��� � �
�� .earsffdralis        afdr � m   � ���
�� afdrtemp � �� � �
�� 
from � m   � ���
�� fldmfldu � �� ���
�� 
rtyp � m   � ���
�� 
TEXT��  ��   � m   � � � �  TabDelimitedContacts    � l  � � ��� � c   � � � � � l  � � ��� � I  � �������
�� .sysorandnmbr    ��� nmbr��  ��  ��   � m   � ���
�� 
TEXT��   � m   � � � � 
 .vcf    � o      ���� 0 	vcardpath 	vCardPath �  � � � l  � �������  ��   �  � � � r   � � � � � I  � ��� � �
�� .rdwropenshor       file � 4   � ��� �
�� 
file � o   � ����� 0 	vcardpath 	vCardPath � �� ���
�� 
perm � m   � ���
�� boovtrue��   � o      ���� 0 	vcardfile 	vCardFile �  � � � l  � � � � � I  � ��� � �
�� .rdwrseofnull���     **** � o   � ����� 0 	vcardfile 	vCardFile � �� ���
�� 
set2 � m   � �����  ��   � W Q in case there happens to be a temporary file with this name already, wipe it out    �  � � � I  � ��� � �
�� .rdwrwritnull���     **** � o   � ����� 0 	vcarddata 	vCardData � �� ���
�� 
refn � o   � ����� 0 	vcardfile 	vCardFile��   �  � � � I  � ��� ���
�� .rdwrclosnull���     **** � o   � ����� 0 	vcardfile 	vCardFile��   �  � � � l  � �������  ��   �  � � � O   � � � � � k   � � � �  � � � I  � ���~�}
� .miscactvnull��� ��� null�~  �}   �  ��| � I  � ��{ ��z
�{ .aevtodocnull  �    alis � 4   � ��y �
�y 
file � o   � ��x�x 0 	vcardpath 	vCardPath�z  �|   � m   � � � �  � � � l  � ��w�v�w  �v   �  ��u � L   � � � � \   � � � � � o   � ��t�t "0 numberofentries numberOfEntries � m   � ��s�s �u     � � � l     �r�q�r  �q   �  � � � i     � � � I      �p�o ��p 0 makenewperson makeNewPerson�o   � �n � �
�n 
from � o      �m�m 0 theentry theEntry � �l ��k�l 0 fieldlabels fieldLabels � o      �j�j 0 	thelabels 	theLabels�k   � k    
L � �  � � � l     �i ��i   � 7 1 from: string, given fieldLabels: list of strings    �  � � � l     �h ��h   �   returns person    �  � � � O     � � � r     � � � I   �g�f �
�g .corecrel****      � null�f   � �e ��d
�e 
kocl � m    �c
�c 
azf4�d   � o      �b�b 0 	newperson 	newPerson � m      � �  � � � l   �a�`�a  �`   �  � � � r     � � � 1    �_
�_ 
txdl � o      �^�^ "0 saveddelimiters savedDelimiters �  � � � r     � � � 1    �]
�] 
tab  � 1    �\
�\ 
txdl �  � � � r      � � � n     � � � 2    �[
�[ 
citm � o    �Z�Z 0 theentry theEntry � o      �Y�Y 0 
entryitems 
entryItems �  � � � r   ! & � � � o   ! "�X�X "0 saveddelimiters savedDelimiters � 1   " %�W
�W 
txdl �  � � � l  ' '�V�U�V  �U   �  � � � l  ' '�T ��T   �   Palm Desktop specific    �  � � � r   ' * � � � m   ' ( � �       � o      �S�S 0 address1label address1Label �  � � � r   + . �  � m   + ,        o      �R�R 0 address2label address2Label �  r   / 2 m   / 0       o      �Q�Q 0 phone1label phone1Label  r   3 6	
	 m   3 4      
 o      �P�P 0 phone2label phone2Label  r   7 : m   7 8       o      �O�O 0 phone3label phone3Label  r   ; > m   ; <       o      �N�N 0 phone4label phone4Label  l  ? ?�M�L�M  �L    r   ? F I  ? D�K�J
�K .corecnte****       **** o   ? @�I�I 0 
entryitems 
entryItems�J   o      �H�H 0 numberofitems numberOfItems  O  G
>  O   K
=!"! Y   O
<#�G$%�F# k   Y
7&& '(' Q   Y r)*+) k   \ i,, -.- r   \ b/0/ n   \ `121 4   ] `�E3
�E 
cobj3 o   ^ _�D�D 0 
itemnumber 
itemNumber2 o   \ ]�C�C 0 	thelabels 	theLabels0 o      �B�B 0 thefield theField. 4�A4 r   c i565 n   c g787 4   d g�@9
�@ 
cobj9 o   e f�?�? 0 
itemnumber 
itemNumber8 o   c d�>�> 0 
entryitems 
entryItems6 o      �=�= 0 itemdata itemData�A  * R      �<�;�:
�< .ascrerr ****      � ****�;  �:  +  S   q r( :;: l  s s�9�8�9  �8  ; <�7< Z   s
7=>�6�5= >  s x?@? o   s t�4�4 0 itemdata itemData@ m   t wAA      > Z   {
3BCDEB C  { �FGF o   { |�3�3 0 thefield theFieldG m   | HH  
First Name   C r   � �IJI o   � ��2�2 0 itemdata itemDataJ 1   � ��1
�1 
azf7D KLK C  � �MNM o   � ��0�0 0 thefield theFieldN m   � �OO  	Last Name   L PQP r   � �RSR o   � ��/�/ 0 itemdata itemDataS 1   � ��.
�. 
azf8Q TUT =  � �VWV o   � ��-�- 0 thefield theFieldW m   � �XX  Title   U YZY r   � �[\[ o   � ��,�, 0 itemdata itemData\ 1   � ��+
�+ 
az39Z ]^] =  � �_`_ o   � ��*�* 0 thefield theField` m   � �aa  Suffix   ^ bcb r   � �ded o   � ��)�) 0 itemdata itemDatae 1   � ��(
�( 
az41c fgf =  � �hih o   � ��'�' 0 thefield theFieldi m   � �jj  Nickname   g klk r   � �mnm o   � ��&�& 0 itemdata itemDatan 1   � ��%
�% 
az43l opo =  � �qrq o   � ��$�$ 0 thefield theFieldr m   � �ss  Company   p tut r   � �vwv o   � ��#�# 0 itemdata itemDataw 1   � ��"
�" 
az38u xyx =  � �z{z o   � ��!�! 0 thefield theField{ m   � �||  	Job Title   y }~} r   � �� o   � �� �  0 itemdata itemData� 1   � ��
� 
az12~ ��� =  � ���� o   � ��� 0 thefield theField� m   � ��� 
 Dept   � ��� r  ��� o  �� 0 itemdata itemData� 1  �
� 
az55� ��� = ��� o  �� 0 thefield theField� m  ��  Birthday   � ��� r  ��� o  �� 0 itemdata itemData� 1  �
� 
az11� ��� = "��� o  �� 0 thefield theField� m  !��  Furigana First Name   � ��� r  %,��� o  %&�� 0 itemdata itemData� 1  &+�
� 
azf9� ��� = /4��� o  /0�� 0 thefield theField� m  03��  Furigana Last Name   � ��� k  7@�� ��� r  7>��� o  78�� 0 itemdata itemData� 1  8=�
� 
az10� ��� l ??���  �  �  � ��� D  CH��� o  CD�� 0 thefield theField� m  DG��  Street Address   � ��� k  K��� ��� r  KS��� l KQ��� n  KQ��� 4 LQ��
� 
cwor� m  OP�� � o  KL�� 0 thefield theField�  � o      �
�
 0 thelabel theLabel� ��	� Q  T����� k  Ww�� ��� r  Wm��� l Wi��� 6 Wi��� 3  W\�
� 
az27� = _h��� 1  `d�
� 
az18� o  eg�� 0 thelabel theLabel�  � o      �� 0 
theaddress 
theAddress� ��� r  nw��� o  no�� 0 itemdata itemData� n      ��� 1  rv�
� 
az28� o  or� �  0 
theaddress 
theAddress�  � R      ������
�� .ascrerr ****      � ****��  ��  � I ������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
az27� �����
�� 
prdt� K  ���� ����
�� 
az18� o  ������ 0 thelabel theLabel� �����
�� 
az28� o  ������ 0 itemdata itemData��  ��  �	  � ��� D  ����� o  ������ 0 thefield theField� m  ���� 
 City   � ��� k  ���� ��� r  ����� l ������ n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thefield theField��  � o      ���� 0 thelabel theLabel� ���� Q  ������ k  ���� ��� r  ����� l ������ 6 ����� 3  ����
�� 
az27� = ����� 1  ����
�� 
az18� o  ������ 0 thelabel theLabel��  � o      ���� 0 
theaddress 
theAddress� ���� r  ����� o  ������ 0 itemdata itemData� n      ��� 1  ����
�� 
az29� o  ������ 0 
theaddress 
theAddress��  � R      ������
�� .ascrerr ****      � ****��  ��  � I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
az27� �����
�� 
prdt� K  ���� ����
�� 
az18� o  ������ 0 thelabel theLabel� �����
�� 
az29� o  ������ 0 itemdata itemData��  ��  ��  � � � D  �� o  ������ 0 thefield theField m  ��  State      k  �K  r  �	
	 l ��� n  � 4 ���
�� 
cwor m  ����  o  ������ 0 thefield theField��  
 o      ���� 0 thelabel theLabel �� Q  K k  	)  r  	 l 	�� 6 	 3  	��
�� 
az27 =  1  ��
�� 
az18 o  ���� 0 thelabel theLabel��   o      ���� 0 
theaddress 
theAddress �� r   ) o   !���� 0 itemdata itemData n       !  1  $(��
�� 
az30! o  !$���� 0 
theaddress 
theAddress��   R      ������
�� .ascrerr ****      � ****��  ��   I 1K����"
�� .corecrel****      � null��  " ��#$
�� 
kocl# m  36��
�� 
az27$ ��%��
�� 
prdt% K  9E&& ��'(
�� 
az18' o  <=���� 0 thelabel theLabel( ��)��
�� 
az30) o  @A���� 0 itemdata itemData��  ��  ��   *+* D  NS,-, o  NO���� 0 thefield theField- m  OR.. 	 Zip   + /0/ k  V�11 232 r  V^454 l V\6��6 n  V\787 4 W\��9
�� 
cwor9 m  Z[���� 8 o  VW���� 0 thefield theField��  5 o      ���� 0 thelabel theLabel3 :��: Q  _�;<=; k  b�>> ?@? r  bxABA l btC��C 6 btDED 3  bg��
�� 
az27E = jsFGF 1  ko��
�� 
az18G o  pr���� 0 thelabel theLabel��  B o      ���� 0 
theaddress 
theAddress@ H��H r  y�IJI o  yz���� 0 itemdata itemDataJ n      KLK 1  }���
�� 
az31L o  z}���� 0 
theaddress 
theAddress��  < R      ������
�� .ascrerr ****      � ****��  ��  = I ������M
�� .corecrel****      � null��  M ��NO
�� 
koclN m  ����
�� 
az27O ��P��
�� 
prdtP K  ��QQ ��RS
�� 
az18R o  ������ 0 thelabel theLabelS ��T��
�� 
az31T o  ������ 0 itemdata itemData��  ��  ��  0 UVU D  ��WXW o  ������ 0 thefield theFieldX m  ��YY  Country/Region   V Z[Z k  ��\\ ]^] r  ��_`_ l ��a��a n  ��bcb 4 ����d
�� 
cword m  ������ c o  ������ 0 thefield theField��  ` o      ���� 0 thelabel theLabel^ efe Q  ��ghig k  ��jj klk r  ��mnm l ��o��o 6 ��pqp 3  ����
�� 
az27q = ��rsr 1  ����
�� 
az18s o  ������ 0 thelabel theLabel��  n o      ���� 0 
theaddress 
theAddressl t��t r  ��uvu o  ������ 0 itemdata itemDatav n      wxw 1  ����
�� 
az32x o  ������ 0 
theaddress 
theAddress��  h R      ������
�� .ascrerr ****      � ****��  ��  i I ������y
�� .corecrel****      � null��  y ��z{
�� 
koclz m  ����
�� 
az27{ ��|��
�� 
prdt| K  ��}} �~
� 
az18~ o  ���~�~ 0 thelabel theLabel �}��|
�} 
az31� o  ���{�{ 0 itemdata itemData�|  ��  f ��z� l ���y�x�y  �x  �z  [ ��� = ��� l ��w� n  ��� 4 �v�
�v 
cwor� m  �u�u � o  �t�t 0 thefield theField�w  � m  ��  Phone   � ��� k  T�� ��� r  ��� l ��s� n  ��� 4 �r�
�r 
cwor� m  �q�q � o  �p�p 0 thefield theField�s  � o      �o�o 0 thelabel theLabel� ��� Z  9����n� = ��� o  �m�m 0 thelabel theLabel� m  �� 
 Cell   � r   %��� m   #��  mobile   � o      �l�l 0 thelabel theLabel� ��� = (-��� o  ()�k�k 0 thelabel theLabel� m  ),��  Custom   � ��j� r  05��� m  03��  other   � o      �i�i 0 thelabel theLabel�j  �n  � ��h� I :T�g�f�
�g .corecrel****      � null�f  � �e��
�e 
kocl� m  <?�d
�d 
az20� �c��b
�c 
prdt� K  BN�� �a��
�a 
az18� o  EF�`�` 0 thelabel theLabel� �_��^
�_ 
az17� o  IJ�]�] 0 itemdata itemData�^  �b  �h  � ��� E  W\��� o  WX�\�\ 0 thefield theField� m  X[�� 	 Fax   � ��� k  _��� ��� r  _k��� b  _i��� l _e��[� l _e��Z� n  _e��� 4 `e�Y�
�Y 
cwor� m  cd�X�X � o  _`�W�W 0 thefield theField�Z  �[  � m  eh�� 
  fax   � o      �V�V 0 thelabel theLabel� ��U� I l��T�S�
�T .corecrel****      � null�S  � �R��
�R 
kocl� m  nq�Q
�Q 
az20� �P��O
�P 
prdt� K  t��� �N��
�N 
az18� o  wx�M�M 0 thelabel theLabel� �L��K
�L 
az17� o  {|�J�J 0 itemdata itemData�K  �O  �U  � ��� E  ����� o  ���I�I 0 thefield theField� m  ����  Pager   � ��� k  ���� ��� I ���H�G�
�H .corecrel****      � null�G  � �F��
�F 
kocl� m  ���E
�E 
az20� �D��C
�D 
prdt� K  ���� �B��
�B 
az18� m  ����  pager   � �A��@
�A 
az17� o  ���?�? 0 itemdata itemData�@  �C  � ��>� l ���=�<�=  �<  �>  � ��� l ����;� G  ����� C ����� o  ���:�: 0 thefield theField� m  ����  Email   � = ����� o  ���9�9 0 thefield theField� m  ����  E-mail   �;  � ��� I ���8�7�
�8 .corecrel****      � null�7  � �6��
�6 
kocl� m  ���5
�5 
az21� �4��3
�4 
prdt� K  ���� �2��
�2 
az18� m  ����  other   � �1��0
�1 
az17� o  ���/�/ 0 itemdata itemData�0  �3  � ��� D  ����� o  ���.�. 0 thefield theField� m  ���� 	 URL   � � � k  �  r  �� l ���- n  �� 4 ���,	
�, 
cwor	 m  ���+�+  o  ���*�* 0 thefield theField�-   o      �)�) 0 thelabel theLabel 
�(
 I ��'�&
�' .corecrel****      � null�&   �%
�% 
kocl m  ���$
�$ 
az70 �#�"
�# 
prdt K  �
 �!
�! 
az18 o  � �  0 thelabel theLabel ��
� 
az17 o  �� 0 itemdata itemData�  �"  �(     C  o  �� 0 thefield theField m    Instant Messaging     I 5��
� .corecrel****      � null�   �
� 
kocl m   �
� 
az24 ��
� 
prdt K  #/ � 
� 
az18 o  &'�� 0 thelabel theLabel  �!�
� 
az17! o  *+�� 0 itemdata itemData�  �   "#" = 8=$%$ o  89�� 0 thefield theField% m  9<&&  Spouse   # '(' I @\��)
� .corecrel****      � null�  ) �*+
� 
kocl* m  BE�
� 
az53+ �,�

� 
prdt, K  HV-- �	./
�	 
az18. m  KN00  spouse   / �1�
� 
az171 o  QR�� 0 itemdata itemData�  �
  ( 232 C _d454 o  _`�� 0 thefield theField5 m  `c66  Custom Date   3 787 I g���9
� .corecrel****      � null�  9 �:;
� 
kocl: m  il�
� 
az52; � <��
�  
prdt< K  o}== ��>?
�� 
az18> m  ru@@  other   ? ��A��
�� 
az17A o  xy���� 0 itemdata itemData��  ��  8 BCB = ��DED o  ������ 0 thefield theFieldE m  ��FF  Anniversary   C GHG I ������I
�� .corecrel****      � null��  I ��JK
�� 
koclJ m  ����
�� 
az52K ��L��
�� 
prdtL K  ��MM ��NO
�� 
az18N m  ��PP  anniversary   O ��Q��
�� 
az17Q o  ������ 0 itemdata itemData��  ��  H RSR = ��TUT o  ������ 0 thefield theFieldU m  ��VV  Notes   S WXW k  ��YY Z[Z r  ��\]\ b  ��^_^ b  ��`a` b  ��bcb o  ������ 0 itemdata itemDatac o  ����
�� 
ret a o  ����
�� 
ret _ 1  ����
�� 
az37] 1  ����
�� 
az37[ ded l ��������  ��  e f��f l ����g��  g   Palm Desktop specific   ��  X hih = ��jkj o  ������ 0 thefield theFieldk m  ��ll  Address 1 Label   i mnm r  ��opo o  ������ 0 itemdata itemDatap o      ���� 0 address1label address1Labeln qrq = ��sts o  ������ 0 thefield theFieldt m  ��uu  Address 2 Label   r vwv r  ��xyx o  ������ 0 itemdata itemDatay o      ���� 0 address2label address2Labelw z{z = ��|}| o  ������ 0 thefield theField} m  ��~~  Phone 1 Label   { � r  ����� o  ������ 0 itemdata itemData� o      ���� 0 phone1label phone1Label� ��� = ����� o  ������ 0 thefield theField� m  ����  Phone 2 Label   � ��� r  ��� o  ���� 0 itemdata itemData� o      ���� 0 phone2label phone2Label� ��� = ��� o  ���� 0 thefield theField� m  ��  Phone 3 Label   � ��� r  ��� o  ���� 0 itemdata itemData� o      ���� 0 phone3label phone3Label� ��� = ��� o  ���� 0 thefield theField� m  ��  Phone 4 Label   � ��� k  "�� ��� r   ��� o  ���� 0 itemdata itemData� o      ���� 0 phone4label phone4Label� ���� l !!������  ��  ��  � ��� = %*��� o  %&���� 0 thefield theField� m  &)��  Street 1 (Line 1)   � ��� Q  -r���� k  0P�� ��� r  0F��� l 0B���� 6 0B��� 3  05��
�� 
az27� = 8A��� 1  9=��
�� 
az18� o  >@���� 0 address1label address1Label��  � o      ���� 0 
theaddress 
theAddress� ���� r  GP��� o  GH���� 0 itemdata itemData� n      ��� 1  KO��
�� 
az28� o  HK���� 0 
theaddress 
theAddress��  � R      ������
�� .ascrerr ****      � ****��  ��  � I Xr�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  Z]��
�� 
az27� �����
�� 
prdt� K  `l�� ����
�� 
az18� o  cd���� 0 address1label address1Label� �����
�� 
az28� o  gh���� 0 itemdata itemData��  ��  � ��� = uz��� o  uv���� 0 thefield theField� m  vy��  Street 1 (Line 2)   � ��� Q  }������ k  ���� ��� r  ����� l ������ 6 ����� 3  ����
�� 
az27� = ����� 1  ����
�� 
az18� o  ������ 0 address1label address1Label��  � o      ���� 0 
theaddress 
theAddress� ��� r  ����� n  ����� 1  ����
�� 
az28� o  ������ 0 
theaddress 
theAddress� o      ���� 0 	thestreet 	theStreet� ���� r  ����� l ������ b  ����� b  ����� o  ������ 0 	thestreet 	theStreet� o  ����
�� 
ret � o  ������ 0 itemdata itemData��  � n      ��� 1  ����
�� 
az28� o  ������ 0 
theaddress 
theAddress��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� = ����� o  ������ 0 thefield theField� m  ����  City 1   � ��� Q  ����� k  ���� ��� r  ����� l ������ 6 ����� 3  ����
�� 
az27� = ����� 1  ����
�� 
az18� o  ������ 0 address1label address1Label��  � o      ���� 0 
theaddress 
theAddress� ���� r  ����� o  ������ 0 itemdata itemData� n      ��� 1  ����
�� 
az29� o  ������ 0 
theaddress 
theAddress��  � R      ������
�� .ascrerr ****      � ****��  ��  � I ������
�� .corecrel****      � null��  � �� 
�� 
kocl  m  ����
�� 
az27 ����
�� 
prdt K  � ��
�� 
az18 o  ������ 0 address1label address1Label ����
�� 
az29 o  ���� 0 itemdata itemData��  ��  �  = 	
	 o  ���� 0 thefield theField
 m    State 1     Q  ] k  ;  r  1 l -�� 6 - 3   ��
�� 
az27 = #, 1  $(��
�� 
az18 o  )+���� 0 address1label address1Label��   o      ���� 0 
theaddress 
theAddress �� r  2; o  23���� 0 itemdata itemData n       1  6:��
�� 
az30 o  36���� 0 
theaddress 
theAddress��   R      ������
�� .ascrerr ****      � ****��  ��   I C]��~ 
� .corecrel****      � null�~    �}!"
�} 
kocl! m  EH�|
�| 
az27" �{#�z
�{ 
prdt# K  KW$$ �y%&
�y 
az18% o  NO�x�x 0 address1label address1Label& �w'�v
�w 
az30' o  RS�u�u 0 itemdata itemData�v  �z   ()( = `e*+* o  `a�t�t 0 thefield theField+ m  ad,,  Zip 1   ) -.- Q  h�/01/ k  k�22 343 r  k�565 l k}7�s7 6 k}898 3  kp�r
�r 
az279 = s|:;: 1  tx�q
�q 
az18; o  y{�p�p 0 address1label address1Label�s  6 o      �o�o 0 
theaddress 
theAddress4 <�n< r  ��=>= o  ���m�m 0 itemdata itemData> n      ?@? 1  ���l
�l 
az31@ o  ���k�k 0 
theaddress 
theAddress�n  0 R      �j�i�h
�j .ascrerr ****      � ****�i  �h  1 I ���g�fA
�g .corecrel****      � null�f  A �eBC
�e 
koclB m  ���d
�d 
az27C �cD�b
�c 
prdtD K  ��EE �aFG
�a 
az18F o  ���`�` 0 address1label address1LabelG �_H�^
�_ 
az31H o  ���]�] 0 itemdata itemData�^  �b  . IJI = ��KLK o  ���\�\ 0 thefield theFieldL m  ��MM  	Country 1   J NON k  ��PP QRQ Q  ��STUS k  ��VV WXW r  ��YZY l ��[�[[ 6 ��\]\ 3  ���Z
�Z 
az27] = ��^_^ 1  ���Y
�Y 
az18_ o  ���X�X 0 address1label address1Label�[  Z o      �W�W 0 
theaddress 
theAddressX `�V` r  ��aba o  ���U�U 0 itemdata itemDatab n      cdc 1  ���T
�T 
az32d o  ���S�S 0 
theaddress 
theAddress�V  T R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  U I ���O�Ne
�O .corecrel****      � null�N  e �Mfg
�M 
koclf m  ���L
�L 
az27g �Kh�J
�K 
prdth K  ��ii �Ijk
�I 
az18j o  ���H�H 0 address1label address1Labelk �Gl�F
�G 
az32l o  ���E�E 0 itemdata itemData�F  �J  R m�Dm l ���C�B�C  �B  �D  O non = pqp o  �A�A 0 thefield theFieldq m  rr  Street 2 (Line 1)   o sts Q  
Ouvwu k  -xx yzy r  #{|{ l }�@} 6 ~~ 3  �?
�? 
az27 = ��� 1  �>
�> 
az18� o  �=�= 0 address2label address2Label�@  | o      �<�< 0 
theaddress 
theAddressz ��;� r  $-��� o  $%�:�: 0 itemdata itemData� n      ��� 1  (,�9
�9 
az28� o  %(�8�8 0 
theaddress 
theAddress�;  v R      �7�6�5
�7 .ascrerr ****      � ****�6  �5  w I 5O�4�3�
�4 .corecrel****      � null�3  � �2��
�2 
kocl� m  7:�1
�1 
az27� �0��/
�0 
prdt� K  =I�� �.��
�. 
az18� o  @A�-�- 0 address2label address2Label� �,��+
�, 
az28� o  DE�*�* 0 itemdata itemData�+  �/  t ��� = RW��� o  RS�)�) 0 thefield theField� m  SV��  Street 2 (Line 2)   � ��� Q  Z����(� k  ]��� ��� r  ]s��� l ]o��'� 6 ]o��� 3  ]b�&
�& 
az27� = en��� 1  fj�%
�% 
az18� o  km�$�$ 0 address2label address2Label�'  � o      �#�# 0 
theaddress 
theAddress� ��� r  t��� n  t{��� 1  w{�"
�" 
az28� o  tw�!�! 0 
theaddress 
theAddress� o      � �  0 	thestreet 	theStreet� ��� r  ����� l ����� b  ����� b  ����� o  ���� 0 	thestreet 	theStreet� o  ���
� 
ret � o  ���� 0 itemdata itemData�  � n      ��� 1  ���
� 
az28� o  ���� 0 
theaddress 
theAddress�  � R      ���
� .ascrerr ****      � ****�  �  �(  � ��� = ����� o  ���� 0 thefield theField� m  ����  City 2   � ��� Q  ������ k  ���� ��� r  ����� l ����� 6 ����� 3  ���
� 
az27� = ����� 1  ���
� 
az18� o  ���� 0 address2label address2Label�  � o      �� 0 
theaddress 
theAddress� ��� r  ����� o  ���� 0 itemdata itemData� n      ��� 1  ���
� 
az29� o  ���� 0 
theaddress 
theAddress�  � R      ��
�	
� .ascrerr ****      � ****�
  �	  � I �����
� .corecrel****      � null�  � ���
� 
kocl� m  ���
� 
az27� ���
� 
prdt� K  ���� ���
� 
az18� o  ���� 0 address2label address2Label� � ���
�  
az29� o  ������ 0 itemdata itemData��  �  � ��� = ����� o  ������ 0 thefield theField� m  ����  State 2   � ��� Q  �:���� k  ��� ��� r  ���� l �
���� 6 �
��� 3  ����
�� 
az27� =  	��� 1  ��
�� 
az18� o  ���� 0 address2label address2Label��  � o      ���� 0 
theaddress 
theAddress� ���� r  ��� o  ���� 0 itemdata itemData� n      ��� 1  ��
�� 
az30� o  ���� 0 
theaddress 
theAddress��  � R      ������
�� .ascrerr ****      � ****��  ��  � I  :�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  "%��
�� 
az27� �����
�� 
prdt� K  (4�� ����
�� 
az18� o  +,���� 0 address2label address2Label� �����
�� 
az30� o  /0���� 0 itemdata itemData��  ��  � ��� = =B��� o  =>���� 0 thefield theField� m  >A��  Zip 2   � ��� Q  E����� k  Hh�� � � r  H^ l HZ�� 6 HZ 3  HM��
�� 
az27 = PY 1  QU��
�� 
az18 o  VX���� 0 address2label address2Label��   o      ���� 0 
theaddress 
theAddress  �� r  _h	
	 o  _`���� 0 itemdata itemData
 n       1  cg��
�� 
az31 o  `c���� 0 
theaddress 
theAddress��  � R      ������
�� .ascrerr ****      � ****��  ��  � I p�����
�� .corecrel****      � null��   ��
�� 
kocl m  ru��
�� 
az27 ����
�� 
prdt K  x� ��
�� 
az18 o  {|���� 0 address2label address2Label ����
�� 
az31 o  ����� 0 itemdata itemData��  ��  �  = �� o  ������ 0 thefield theField m  ��  	Country 2     k  ��  Q  �� ! k  ��"" #$# r  ��%&% l ��'��' 6 ��()( 3  ����
�� 
az27) = ��*+* 1  ����
�� 
az18+ o  ������ 0 address2label address2Label��  & o      ���� 0 
theaddress 
theAddress$ ,��, r  ��-.- o  ������ 0 itemdata itemData. n      /0/ 1  ����
�� 
az320 o  ������ 0 
theaddress 
theAddress��    R      ������
�� .ascrerr ****      � ****��  ��  ! I ������1
�� .corecrel****      � null��  1 ��23
�� 
kocl2 m  ����
�� 
az273 ��4��
�� 
prdt4 K  ��55 ��67
�� 
az186 o  ������ 0 address2label address2Label7 ��8��
�� 
az328 o  ������ 0 itemdata itemData��  ��   9��9 l ��������  ��  ��   :;: C ��<=< o  ������ 0 thefield theField= m  ��>>  Phone 1   ; ?@? I �	����A
�� .corecrel****      � null��  A ��BC
�� 
koclB m  ����
�� 
az20C ��D��
�� 
prdtD K  ��EE ��FG
�� 
az18F o  ������ 0 phone1label phone1LabelG ��H��
�� 
az17H o  ������ 0 itemdata itemData��  ��  @ IJI C 			KLK o  		���� 0 thefield theFieldL m  		MM  Phone 2   J NON I 		&����P
�� .corecrel****      � null��  P ��QR
�� 
koclQ m  		��
�� 
az20R ��S��
�� 
prdtS K  		 TT ��UV
�� 
az18U o  		���� 0 phone2label phone2LabelV ��W��
�� 
az17W o  		���� 0 itemdata itemData��  ��  O XYX C 	)	.Z[Z o  	)	*���� 0 thefield theField[ m  	*	-\\  Phone 3   Y ]^] I 	1	K����_
�� .corecrel****      � null��  _ ��`a
�� 
kocl` m  	3	6��
�� 
az20a ��b��
�� 
prdtb K  	9	Ecc ��de
�� 
az18d o  	<	=���� 0 phone3label phone3Labele ��f��
�� 
az17f o  	@	A���� 0 itemdata itemData��  ��  ^ ghg C 	N	Siji o  	N	O���� 0 thefield theFieldj m  	O	Rkk  Phone 4   h lml k  	V	rnn opo I 	V	p����q
�� .corecrel****      � null��  q ��rs
�� 
koclr m  	X	[��
�� 
az20s ��t��
�� 
prdtt K  	^	juu ��vw
�� 
az18v o  	a	b���� 0 phone4label phone4Labelw ��x��
�� 
az17x o  	e	f���� 0 itemdata itemData��  ��  p y��y l 	q	q������  ��  ��  m z{z = 	u	z|}| o  	u	v�� 0 thefield theField} m  	v	y~~  Comments   { � r  	}	���� b  	}	���� b  	}	���� b  	}	���� o  	}	~�~�~ 0 itemdata itemData� o  	~	��}
�} 
ret � o  	�	��|
�| 
ret � 1  	�	��{
�{ 
az37� 1  	�	��z
�z 
az37� ��� C 	�	���� o  	�	��y�y 0 thefield theField� m  	�	���  Category   � ��� k  	�	��� ��� O  	�	���� Q  	�	����� k  	�	��� ��� r  	�	���� l 	�	���x� 6 	�	���� 3  	�	��w
�w 
azf5� = 	�	���� 1  	�	��v
�v 
pnam� o  	�	��u�u 0 itemdata itemData�x  � o      �t�t 0 thegroup theGroup� ��s� I 	�	��r��
�r .az00az44null��� ��� azf6� o  	�	��q�q 0 	newperson 	newPerson� �p��o
�p 
az45� o  	�	��n�n 0 thegroup theGroup�o  �s  � R      �m�l�k
�m .ascrerr ****      � ****�l  �k  � k  	�	��� ��� r  	�	���� I 	�	��j�i�
�j .corecrel****      � null�i  � �h��
�h 
kocl� m  	�	��g
�g 
azf5� �f��e
�f 
prdt� K  	�	��� �d��c
�d 
pnam� o  	�	��b�b 0 itemdata itemData�c  �e  � o      �a�a 0 thegroup theGroup� ��`� I 	�	��_��
�_ .az00az44null��� ��� azf6� o  	�	��^�^ 0 	newperson 	newPerson� �]��\
�] 
az45� o  	�	��[�[ 0 thegroup theGroup�\  �`  � m  	�	� �� ��Z� l 	�	��Y�X�Y  �X  �Z  � ��� l 	�
��W� G  	�
��� G  	�
	��� = 	�	���� o  	�	��V�V 0 thefield theField� m  	�	���  Marked   � = 
 
��� o  
 
�U�U 0 thefield theField� m  

��  Modified   � = 

��� o  

�T�T 0 thefield theField� m  

��  Private   �W  � ��S� k  

�� ��� l 

�R��R  �   skip these fields   � ��Q� l 

�P�O�P  �O  �Q  �S  E r  

3��� b  

-��� b  

+��� b  

'��� b  

%��� 1  

!�N
�N 
az37� o  
!
$�M
�M 
ret � o  
%
&�L�L 0 thefield theField� m  
'
*��  :    � o  
+
,�K�K 0 itemdata itemData� 1  
-
2�J
�J 
az37�6  �5  �7  �G 0 
itemnumber 
itemNumber$ m   R S�I�I % o   S T�H�H 0 numberofitems numberOfItems�F  " o   K L�G�G 0 	newperson 	newPerson  m   G H � ��� l 
?
?�F�E�F  �E  � ��� O 
?
I��� I 
C
H�D�C�B
�D .az00az15null��� ��� obj �C  �B  � m  
?
@ �� ��A� L  
J
L�� o  
J
K�@�@ 0 	newperson 	newPerson�A   � ��� l     �?�>�?  �>  � ��=� i    ��� I     �<�;�:
�< .aevtoappnull  �   � ****�;  �:  � I    �9��
�9 .sysodisAaleR        TEXT� m     ��  Address Importer Script   � �8��7
�8 
mesS� m    �� � �This script is an address importer script to be used with the Import Addresses script. It supports importing contacts and groups from a tab delimited text file.   �7  �=       �6�����6  � �5�4�3�5 *0 importtoaddressbook importToAddressBook�4 0 makenewperson makeNewPerson
�3 .aevtoappnull  �   � ****� �2 �1�0���/�2 *0 importtoaddressbook importToAddressBook�1 �.��. �  �-�- $0 tabdelimitedfile tabDelimitedFile�0  � �,�+�*�)�(�'�&�%�$�#�"�, $0 tabdelimitedfile tabDelimitedFile�+ 0 importfileref importFileRef�* 0 
theentries 
theEntries�) "0 saveddelimiters savedDelimiters�(  0 thefieldlabels theFieldLabels�' "0 numberofentries numberOfEntries�& 0 	vcarddata 	vCardData�% 0 entrynumber entryNumber�$ 0 	newperson 	newPerson�# 0 	vcardpath 	vCardPath�" 0 	vcardfile 	vCardFile� %�!� ���������� [ �������������
 ��	 ���������
�! .rdwropenshor       file
�  
deli
� 
ret � 

� .sysontocTEXT       shor
� .rdwrread****        ****
� .rdwrclosnull���     ****
� 
txdl
� 
tab 
� 
cobj
� 
citm
� .corecnte****       ****
� 
from� 0 fieldlabels fieldLabels� � 0 makenewperson makeNewPerson
� 
az49
� .coredelonull���     obj 
� .az00az15null��� ��� obj 
� afdrtemp
� fldmfldu
� 
rtyp
� 
TEXT
�
 .earsffdralis        afdr
�	 .sysorandnmbr    ��� nmbr
� 
file
� 
perm
� 
set2
� .rdwrseofnull���     ****
� 
refn
� .rdwrwritnull���     ****
� .miscactvnull��� ��� null
� .aevtodocnull  �    alis�/ ��j  E�O����j ��j %mvl E�O�j O*�,E�O�*�,FO��k/�-E�O�*�,FO�j E�O�E�O� 7 .l�kh )��/�a  E�O��a ,%E�O�j [OY��O*j UOa �a a a a  a %*j a &%a %E�O*a �/a el  E�O�a jl  O�a !�l "O�j O� *j #O*a �/j $UO�k� �  ����������  0 makenewperson makeNewPerson��  �� �����
�� 
from�� 0 theentry theEntry� �������� 0 fieldlabels fieldLabels�� 0 	thelabels 	theLabels��  � ���������������������������������������� 0 theentry theEntry�� 0 	thelabels 	theLabels�� 0 	newperson 	newPerson�� "0 saveddelimiters savedDelimiters�� 0 
entryitems 
entryItems�� 0 address1label address1Label�� 0 address2label address2Label�� 0 phone1label phone1Label�� 0 phone2label phone2Label�� 0 phone3label phone3Label�� 0 phone4label phone4Label�� 0 numberofitems numberOfItems�� 0 
itemnumber 
itemNumber�� 0 thefield theField�� 0 itemdata itemData�� 0 thelabel theLabel�� 0 
theaddress 
theAddress�� 0 	thestreet 	theStreet�� 0 thegroup theGroup� x ������������� ���������AH��O��X��a��j��s��|���������������������������������.��Y���������������������������&��06��@FPV����lu~������,Mr����>M\k~���������������
�� 
kocl
�� 
azf4
�� .corecrel****      � null
�� 
txdl
�� 
tab 
�� 
citm
�� .corecnte****       ****
�� 
cobj��  ��  
�� 
azf7
�� 
azf8
�� 
az39
�� 
az41
�� 
az43
�� 
az38
�� 
az12
�� 
az55
�� 
az11
�� 
azf9
�� 
az10
�� 
cwor
�� 
az27�  
�� 
az18
�� 
az28
�� 
prdt�� 
�� 
az29
�� 
az30
�� 
az31
�� 
az32
�� 
az20
�� 
az17
�� 
bool
�� 
az21
�� 
az70
�� 
az24
�� 
az53
�� 
az52
�� 
ret 
�� 
az37
�� 
azf5
�� 
pnam
�� 
az45
�� .az00az44null��� ��� azf6
�� .az00az15null��� ��� obj ��
M� *��l E�UO*�,E�O�*�,FO��-E�O�*�,FO�E�O�E�O�E�O�E�O�E�O�E�O�j E�O�	��	�	�k�kh  ��/E�O��/E�W X  O�a 	��a  �*a ,FY	��a  �*a ,FY	��a   �*a ,FY	��a   �*a ,FY	r�a   �*a ,FY	`�a   �*a ,FY	N�a   �*a ,FY	<�a    �*a !,FY	*�a "  �*a #,FY	�a $  �*a %,FY	�a &  �*a ',FOPY�a ( S�a )k/E�O %*a *.a +[a ,,\Z�81E^ O�] a -,FW !X  *�a *a .a ,�a -�a /a / Y��a 0 S�a )k/E�O %*a *.a +[a ,,\Z�81E^ O�] a 1,FW !X  *�a *a .a ,�a 1�a /a / Y@�a 2 S�a )k/E�O %*a *.a +[a ,,\Z�81E^ O�] a 3,FW !X  *�a *a .a ,�a 3�a /a / Y�a 4 S�a )k/E�O %*a *.a +[a ,,\Z�81E^ O�] a 5,FW !X  *�a *a .a ,�a 5�a /a / Y��a 6 U�a )k/E�O %*a *.a +[a ,,\Z�81E^ O�] a 7,FW !X  *�a *a .a ,�a 5�a /a / OPY3�a )l/a 8  J�a )k/E�O�a 9  
a :E�Y �a ;  
a <E�Y hO*�a =a .a ,�a >�a /a / Yޭa ? ,�a )k/a @%E�O*�a =a .a ,�a >�a /a / Y��a A #*�a =a .a ,a Ba >�a /a / OPY��a C
 �a D a E& !*�a Fa .a ,a Ga >�a /a / YP�a H (�a )k/E�O*�a Ia .a ,�a >�a /a / Y"�a J *�a Ka .a ,�a >�a /a / Y��a L  !*�a Ma .a ,a Na >�a /a / Y֭a O !*�a Pa .a ,a Qa >�a /a / Y��a R  !*�a Pa .a ,a Sa >�a /a / Y��a T  �_ U%_ U%*a V,%*a V,FOPYf�a W  �E�YX�a X  �E�YJ�a Y  �E�Y<�a Z  �E�Y.�a [  �E�Y �a \  
�E�OPY�a ]  J %*a *.a +[a ,,\Z�81E^ O�] a -,FW !X  *�a *a .a ,�a -�a /a / Y��a ^  E 9*a *.a +[a ,,\Z�81E^ O] a -,E^ O] _ U%�%] a -,FW X  hYu�a _  J %*a *.a +[a ,,\Z�81E^ O�] a 1,FW !X  *�a *a .a ,�a 1�a /a / Y%�a `  J %*a *.a +[a ,,\Z�81E^ O�] a 3,FW !X  *�a *a .a ,�a 3�a /a / Yխa a  J %*a *.a +[a ,,\Z�81E^ O�] a 5,FW !X  *�a *a .a ,�a 5�a /a / Y��a b  L %*a *.a +[a ,,\Z�81E^ O�] a 7,FW !X  *�a *a .a ,�a 7�a /a / OPY3�a c  J %*a *.a +[a ,,\Z�81E^ O�] a -,FW !X  *�a *a .a ,�a -�a /a / Y�a d  E 9*a *.a +[a ,,\Z�81E^ O] a -,E^ O] _ U%�%] a -,FW X  hY��a e  J %*a *.a +[a ,,\Z�81E^ O�] a 1,FW !X  *�a *a .a ,�a 1�a /a / YH�a f  J %*a *.a +[a ,,\Z�81E^ O�] a 3,FW !X  *�a *a .a ,�a 3�a /a / Y��a g  J %*a *.a +[a ,,\Z�81E^ O�] a 5,FW !X  *�a *a .a ,�a 5�a /a / Y��a h  L %*a *.a +[a ,,\Z�81E^ O�] a 7,FW !X  *�a *a .a ,�a 7�a /a / OPYV�a i *�a =a .a ,�a >�a /a / Y1�a j *�a =a .a ,�a >�a /a / Y�a k *�a =a .a ,�a >�a /a / Y �a l !*�a =a .a ,�a >�a /a / OPY ��a m  �_ U%_ U%*a V,%*a V,FY ��a n ]� S '*a o.a +[a p,\Z�81E^ O�a q] l rW +X  *�a oa .a p�la / E^ O�a q] l rUOPY =�a s 
 �a t a E&
 �a u a E& hY *a V,_ U%�%a v%�%*a V,FY h[OY�UUO� *j wUO�� �����������
�� .aevtoappnull  �   � ****��  ��  �  � ������
�� 
mesS
�� .sysodisAaleR        TEXT�� ���l  ascr  ��ޭ