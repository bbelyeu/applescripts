FasdUAS 1.101.10   ��   ��    k             l      �� ��   
Entourage

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
implements address importing from Microsoft Entourage through the
importToAddressBook handler.
         l     ������  ��        i         I      �� ���� *0 importtoaddressbook importToAddressBook   ��  o      ���� 
0 unused  ��  ��    k           l     �� ��      (anything)         l     �� ��      returns integer         l     ������  ��        O     ,   !   k    + " "  # $ # r     % & % m     ' '       & o      ���� 0 	vcarddata 	vCardData $  ( ) ( r     * + * I   �� ,��
�� .corecnte****       **** , 2   ��
�� 
cAbE��   + o      ���� $0 numberofcontacts numberOfContacts )  -�� - Y    + .�� / 0�� . r    & 1 2 1 b    $ 3 4 3 o    ���� 0 	vcarddata 	vCardData 4 l   # 5�� 5 n    # 6 7 6 1   ! #��
�� 
vCdd 7 4    !�� 8
�� 
cAbE 8 o     ���� 0 contactnumber contactNumber��   2 o      ���� 0 	vcarddata 	vCardData�� 0 contactnumber contactNumber / m    ����  0 o    ���� $0 numberofcontacts numberOfContacts��  ��   ! m      9 92null     c����   Microsoft Entourage��X����  ���\> x���;���X��$�~����0I����rhap  alis    �   Applications                   NJ ����Microsoft Entourage                                            ����    APPLOPIM����  �cu             Microsoft Office 2004   Q/:Network:Applications:Microsoft Office:Microsoft Office 2004:Microsoft Entourage   (  M i c r o s o f t   E n t o u r a g e    A p p l i c a t i o n s  ;/Microsoft Office/Microsoft Office 2004/Microsoft Entourage   /Network/Applications  	 " "crbm  posx/Network/Applications ��     : ; : l  - -������  ��   ;  < = < r   - D > ? > b   - B @ A @ b   - @ B C B b   - 8 D E D l  - 6 F�� F I  - 6�� G H
�� .earsffdralis        afdr G m   - .��
�� afdrtemp H �� I J
�� 
from I m   / 0��
�� fldmfldu J �� K��
�� 
rtyp K m   1 2��
�� 
TEXT��  ��   E m   6 7 L L  EntourageContacts    C l  8 ? M�� M c   8 ? N O N l  8 = P�� P I  8 =������
�� .sysorandnmbr    ��� nmbr��  ��  ��   O m   = >��
�� 
TEXT��   A m   @ A Q Q 
 .vcf    ? o      ���� 0 	vcardpath 	vCardPath =  R S R l  E E������  ��   S  T U T r   E S V W V I  E Q�� X Y
�� .rdwropenshor       file X 4   E I�� Z
�� 
file Z o   G H���� 0 	vcardpath 	vCardPath Y �� [��
�� 
perm [ m   L M��
�� boovtrue��   W o      ���� 0 	vcardfile 	vCardFile U  \ ] \ l  T ] ^ _ ^ I  T ]�� ` a
�� .rdwrseofnull���     **** ` o   T U���� 0 	vcardfile 	vCardFile a �� b��
�� 
set2 b m   X Y����  ��   _ W Q in case there happens to be a temporary file with this name already, wipe it out    ]  c d c I  ^ g�� e f
�� .rdwrwritnull���     **** e o   ^ _���� 0 	vcarddata 	vCardData f �� g��
�� 
refn g o   b c���� 0 	vcardfile 	vCardFile��   d  h i h I  h m�� j��
�� .rdwrclosnull���     **** j o   h i���� 0 	vcardfile 	vCardFile��   i  k l k l  n n������  ��   l  m n m O   n � o p o k   t � q q  r s r I  t y������
�� .miscactvnull��� ��� null��  ��   s  t�� t I  z ��� u��
�� .aevtodocnull  �    alis u 4   z ~�� v
�� 
file v o   | }���� 0 	vcardpath 	vCardPath��  ��   p m   n q w w�null     s����  vAddress Book.app �X��8���:  ����6 X���;���X���~����0I����adrb   alis    n  Mac OS X 10.4.5            ��BH+    vAddress Book.app                                                b���H        ����  	                Applications    ����      ����      v  -Mac OS X 10.4.5:Applications:Address Book.app   "  A d d r e s s   B o o k . a p p     M a c   O S   X   1 0 . 4 . 5  Applications/Address Book.app   / ��   n  x y x l  � �������  ��   y  z { z l  � � | } | I  � ��� ~��
�� .sysodelanull��� ��� nmbr ~ m   � ����� ��   } ? 9 give the user time to confirm the import in Address Book    {   �  I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � V PImporting people to Address Book. Press Continue when finished to import groups.    � �� ���
�� 
btns � J   � � � �  ��� � m   � � � �  Continue   ��  ��   �  � � � l  � �������  ��   �  � � � O   � � � � � k   � � � �  � � � r   � � � � � 2   � ���
�� 
cAdG � o      ���� 0 
everygroup 
everyGroup �  � � � l  � �������  ��   �  ��� � X   � � ��� � � k   � � � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 	eachgroup 	eachGroup � o      ���� 0 	groupname 	groupName �  ��� � O   � � � � � Q   � � � � � � e   � � � � 4   � ��� �
�� 
azf5 � o   � ����� 0 	groupname 	groupName � R      ������
�� .ascrerr ****      � ****��  ��   � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
azf5 � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � o   � ����� 0 	groupname 	groupName��  ��   � m   � � w��  �� 0 	eachgroup 	eachGroup � o   � ����� 0 
everygroup 
everyGroup��   � m   � � 9 �  � � � l  � �������  ��   �  � � � I   � ��� ����� (0 addmemberstogroups addMembersToGroups �  ��� � o   � ����� 0 
everygroup 
everyGroup��  ��   �  � � � O  �	 � � � I ������
�� .az00az15null��� ��� obj ��  ��   � m   �  w �  � � � l 

������  ��   �  ��� � L  
 � � o  
�� $0 numberofcontacts numberOfContacts��     � � � l     �~�}�~  �}   �  � � � i     � � � I      �| ��{�| (0 addmemberstogroups addMembersToGroups �  ��z � o      �y�y 0 	thegroups 	theGroups�z  �{   � k     � � �  � � � l     �x ��x   �   (list of groups)    �  � � � l     �w ��w   �   returns nothing    �  ��v � O     � � � � X    � ��u � � k    � � �  � � � r     � � � n     � � � 1    �t
�t 
pnam � o    �s�s 0 	eachgroup 	eachGroup � o      �r�r 0 	groupname 	groupName �  � � � O   % � � � r    $ � � � 4    "�q �
�q 
azf5 � o     !�p�p 0 	groupname 	groupName � o      �o�o 0 abgroup abGroup � m     w �  � � � l  & &�n�m�n  �m   �  � � � r   & + � � � n   & ) � � � 2   ' )�l
�l 
cAgM � o   & '�k�k 0 	eachgroup 	eachGroup � o      �j�j "0 everygroupentry everyGroupEntry �  ��i � X   , � ��h � � k   < � � �  � � � r   < C � � � n   < A � � � m   ? A�g
�g 
addr � n   < ? � � � 1   = ?�f
�f 
ctnt � o   < =�e�e  0 eachgroupentry eachGroupEntry � o      �d�d 0 
theaddress 
theAddress �  � � � r   D K � � � n   D I � � � 1   G I�c
�c 
dspn � n   D G � � � 1   E G�b
�b 
ctnt � o   D E�a�a  0 eachgroupentry eachGroupEntry � o      �`�` 0 thename theName �  � � � l  L L�_�^�_  �^   �  ��] � Q   L � � ��\ � O   O y � � � Z   S x �[  >  S V o   S T�Z�Z 0 
theaddress 
theAddress m   T U       l  Y g k   Y g 	
	 l  Y _ r   Y _ 4   Y ]�Y
�Y 
azf4 o   [ \�X�X 0 thename theName o      �W�W 0 theentry theEntry Q K this will fail when the group entry is not in Entourage's list of contacts   
 �V l  ` g I  ` g�U
�U .az00az44null��� ��� azf6 o   ` a�T�T 0 theentry theEntry �S�R
�S 
az45 o   b c�Q�Q 0 abgroup abGroup�R   D > this will fail if the person is already a member of the group   �V   #  the group entry is a contact   �[   l  j x k   j x  r   j p 4   j n�P
�P 
azf5 o   l m�O�O 0 thename theName o      �N�N 0 theentry theEntry �M l  q x  I  q x�L!"
�L .az00az44null��� ��� azf6! o   q r�K�K 0 theentry theEntry" �J#�I
�J 
az45# o   s t�H�H 0 abgroup abGroup�I    C = this will fail if the group is already a member of the group   �M   !  the group entry is a group    � m   O P w � R      �G�F�E
�G .ascrerr ****      � ****�F  �E  �\  �]  �h  0 eachgroupentry eachGroupEntry � o   / 0�D�D "0 everygroupentry everyGroupEntry�i  �u 0 	eachgroup 	eachGroup � o    �C�C 0 	thegroups 	theGroups � m      9�v   � $%$ l     �B�A�B  �A  % &�@& i    '(' I     �?�>�=
�? .aevtoappnull  �   � ****�>  �=  ( I    �<)*
�< .sysodisAaleR        TEXT) m     ++  Address Importer Script   * �;,�:
�; 
mesS, m    -- � �This script is an address importer script to be used with the Import Addresses script. It supports importing contacts and groups from Microsoft Entourage.   �:  �@       �9./01�9  . �8�7�6�8 *0 importtoaddressbook importToAddressBook�7 (0 addmemberstogroups addMembersToGroups
�6 .aevtoappnull  �   � ****/ �5 �4�323�2�5 *0 importtoaddressbook importToAddressBook�4 �14�1 4  �0�0 
0 unused  �3  2 	�/�.�-�,�+�*�)�(�'�/ 
0 unused  �. 0 	vcarddata 	vCardData�- $0 numberofcontacts numberOfContacts�, 0 contactnumber contactNumber�+ 0 	vcardpath 	vCardPath�* 0 	vcardfile 	vCardFile�) 0 
everygroup 
everyGroup�( 0 	eachgroup 	eachGroup�' 0 	groupname 	groupName3 * 9 '�&�%�$�#�"�!� ��� L� Q�������� w��� �� �������
�	�����
�& 
cAbE
�% .corecnte****       ****
�$ 
vCdd
�# afdrtemp
�" 
from
�! fldmfldu
�  
rtyp
� 
TEXT� 
� .earsffdralis        afdr
� .sysorandnmbr    ��� nmbr
� 
file
� 
perm
� .rdwropenshor       file
� 
set2
� .rdwrseofnull���     ****
� 
refn
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****
� .miscactvnull��� ��� null
� .aevtodocnull  �    alis
� .sysodelanull��� ��� nmbr
� 
btns
� .sysodlogaskr        TEXT
� 
cAdG
� 
kocl
� 
cobj
� 
pnam
�
 
azf5�	  �  
� 
prdt
� .corecrel****      � null� (0 addmemberstogroups addMembersToGroups
� .az00az15null��� ��� obj �2� )�E�O*�-j E�O k�kh �*�/�,%E�[OY��UO������ �%*j �&%�%E�O*�/a el E�O�a jl O�a �l O�j Oa  *j O*�/j UOmj Oa a a kvl O� X*a -E�O M�[a  a !l kh �a ",E�Oa  ( *a #�/EW X $ %*a  a #a &a "�l� 'U[OY��UO*�k+ (Oa  *j )UO�0 � ���56� � (0 addmemberstogroups addMembersToGroups� ��7�� 7  ���� 0 	thegroups 	theGroups�  5 	�������������������� 0 	thegroups 	theGroups�� 0 	eachgroup 	eachGroup�� 0 	groupname 	groupName�� 0 abgroup abGroup�� "0 everygroupentry everyGroupEntry��  0 eachgroupentry eachGroupEntry�� 0 
theaddress 
theAddress�� 0 thename theName�� 0 theentry theEntry6  9�������� w��������������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
azf5
�� 
cAgM
�� 
ctnt
�� 
addr
�� 
dspn
�� 
azf4
�� 
az45
�� .az00az44null��� ��� azf6��  ��  �  �� � ��[��l kh ��,E�O� *�/E�UO��-E�O Z�[��l kh ��,�,E�O��,�,E�O /� '�� *�/E�O���l Y *�/E�O���l UW X  h[OY��[OY��U1 ��(����89��
�� .aevtoappnull  �   � ****��  ��  8  9 +��-��
�� 
mesS
�� .sysodisAaleR        TEXT�� ���l ascr  ��ޭ