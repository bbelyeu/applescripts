FasdUAS 1.101.10   ��   ��    k             l      �� ��   �
Eudora

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
implements address importing from Qualcomm Eudora through the
importToAddressBook handler.
         l     ������  ��        i         I      �� ���� *0 importtoaddressbook importToAddressBook   ��  o      ���� 
0 unused  ��  ��    k             l     �� ��      (anything)         l     �� ��      returns integer         l     ������  ��     ��  l     ������  ��  ��         l     ������  ��      ! " ! i     # $ # I      �� %���� $0 importfromeudora importFromEudora %  &�� & o      ���� ,0 totalrecordsimported totalRecordsImported��  ��   $ k    
� ' '  ( ) ( r      * + * n     , - , I    �������� 20 getscriptfolderlocation getScriptFolderLocation��  ��   -  f      + o      ���� ,0 scriptfolderlocation scriptFolderLocation )  . / . r     0 1 0 I   �� 2��
�� .sysoloadscpt        alis 2 4    �� 3
�� 
alis 3 l  
  4�� 4 b   
  5 6 5 o   
 ���� ,0 scriptfolderlocation scriptFolderLocation 6 m     7 7  Import Helper.scpt   ��  ��   1 o      ���� 0 	thescript 	theScript /  8 9 8 O    l : ; : k    k < <  = > = r      ? @ ? c     A B A 1    ��
�� 
home B m    ��
�� 
TEXT @ o      ���� 0 homedir homeDir >  C D C r   ! & E F E b   ! $ G H G o   ! "���� 0 homedir homeDir H m   " # I I . (Documents:Eudora Folder:Eudora Nicknames    F o      ���� 0 pathname   D  J�� J Q   ' k K L M K r   * 0 N O N 4   * .�� P
�� 
alis P o   , -���� 0 pathname   O o      ���� 0 
eudorafile 
eudoraFile L R      ������
�� .ascrerr ****      � ****��  ��   M Q   8 k Q R S Q k   ; G T T  U V U r   ; @ W X W b   ; > Y Z Y o   ; <���� 0 homedir homeDir Z m   < = [ [ ? 9Documents:Eudora Folder:Nicknames Folder:Eudora Nicknames    X o      ���� 0 pathname   V  \�� \ r   A G ] ^ ] 4   A E�� _
�� 
alis _ o   C D���� 0 pathname   ^ o      ���� 0 
eudorafile 
eudoraFile��   R R      ������
�� .ascrerr ****      � ****��  ��   S k   O k ` `  a b a I  O T������
�� .miscactvnull��� ��� null��  ��   b  c d c r   U ^ e f e I  U \���� g
�� .sysostdfalis    ��� null��   g �� h��
�� 
prmp h m   W X i i O ILocate your Eudora Nicknames file, usually located in your Eudora Folder:   ��   f o      ���� $0 thenicknamesfile theNicknamesFile d  j k j r   _ d l m l l  _ b n�� n c   _ b o p o o   _ `���� $0 thenicknamesfile theNicknamesFile p m   ` a��
�� 
TEXT��   m o      ���� 0 pathname   k  q�� q r   e k r s r 4   e i�� t
�� 
alis t o   g h���� 0 pathname   s o      ���� 0 
eudorafile 
eudoraFile��  ��   ; m     u u�null     ����  

Finder.app^   T9 �x��X���  ��+�18 x���[���x��$ ����0i����MACS   alis    t  Mac OS X 10.4              �,�H+    

Finder.app                                                       Cɿ���        ����  	                CoreServices    �-P�      ��6n      
  �  �  4Mac OS X 10.4:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c   O S   X   1 0 . 4  &System/Library/CoreServices/Finder.app  / ��   9  v w v r   m v x y x I  m t�� z��
�� .rdwropenshor       file z c   m p { | { o   m n���� 0 
eudorafile 
eudoraFile | m   n o��
�� 
fss ��   y o      ���� 0 thefile theFile w  } ~ } Q   w
�  � �  k   z
� � �  � � � r   z � � � � I  z ��� � �
�� .rdwrread****        **** � o   z {���� 0 thefile theFile � �� � �
�� 
rdfm � m   ~ ����  � �� ���
�� 
rdto � m   � ���
�� rdwreof ��   � o      ���� 0 thecontents theContents �  � � � I  � ��� ���
�� .rdwrclosnull���     **** � c   � � � � � o   � ����� 0 
eudorafile 
eudoraFile � m   � ���
�� 
fss ��   �  � � � r   � � � � � n  � � � � � I   � ��������� 20 getscriptfolderlocation getScriptFolderLocation��  ��   �  f   � � � o      ���� ,0 scriptfolderlocation scriptFolderLocation �  � � � r   � � � � � I  � ��� ���
�� .sysoloadscpt        alis � 4   � ��� �
�� 
alis � l  � � ��� � b   � � � � � o   � ����� ,0 scriptfolderlocation scriptFolderLocation � m   � � � �  Import Helper.scpt   ��  ��   � o      ���� 0 	thescript 	theScript �  � � � r   � � � � � n  � � � � � I   � ��� ����� (0 snifflinedelimiter sniffLineDelimiter �  ��� � o   � ����� 0 thecontents theContents��  ��   � o   � ����� 0 	thescript 	theScript � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  � � � r   � � � � � n   � � � � � 2   � ���
�� 
citm � o   � ����� 0 thecontents theContents � o      ���� 0 everylineitem everyLineItem �  � � � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � m   � � � ��null     s����  <Address Book.app �x��8����  ��+�18 X���[���x�� ����0i����adrb   alis    h  Mac OS X 10.4              �,�H+    <Address Book.app                                                ��|�        ����  	                Applications    �-P�      ��      <  +Mac OS X 10.4:Applications:Address Book.app   "  A d d r e s s   B o o k . a p p    M a c   O S   X   1 0 . 4  Applications/Address Book.app   / ��   �  � � � r   � � � � � J   � �����   � o      ���� 20 lineitemstoprocessatend lineItemsToProcessAtEnd �  � � � X   � ��� � � k   � � �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 findnickname findNickname �  ��� � o   � ����� 0 eachlineitem eachLineItem��  ��   �  f   � � � o      ���� 0 thenickname theNickname �  ��� � Z   � � ����� � l  � � ��� � >  � � � � � o   � ����� 0 thenickname theNickname � m   � � � �      ��   � Z   � � � ��� � C  �  � � � o   � ����� 0 eachlineitem eachLineItem � m   � � � �  alias    � r   � � � b   � � � o  ���� 20 lineitemstoprocessatend lineItemsToProcessAtEnd � o  ���� 0 eachlineitem eachLineItem � o      �� 20 lineitemstoprocessatend lineItemsToProcessAtEnd �  � � � C  � � � o  �~�~ 0 eachlineitem eachLineItem � m   � � 
 note    �  ��} � k   � �  � � � r   � � � m   � �       � o      �|�| 0 appendtonotes appendToNotes �  � � � O > � � � r  = � � � I ;�{�z �
�{ .corecrel****      � null�z   � �y � �
�y 
kocl � m  #&�x
�x 
azf4 � �w ��v
�w 
prdt � K  )5 � � �u � �
�u 
azf7 � o  ,-�t�t 0 thenickname theNickname � �s ��r
�s 
az43 � o  01�q�q 0 thenickname theNickname�r  �v   � o      �p�p 0 newentry newEntry � m   � �  � � � r  ?P � � � I ?N�o�n �
�o .sysooffslong    ��� null�n   � �m � �
�m 
psof � o  CD�l�l 0 thenickname theNickname � �k ��j
�k 
psin � o  GH�i�i 0 eachlineitem eachLineItem�j   � o      �h�h 0 	theoffset 	theOffset �  � � � r  Qj � � � c  Qh � � � n  Qf   7 Rf�g
�g 
cha  l Xb�f [  Xb [  Y` o  YZ�e�e 0 	theoffset 	theOffset l Z_	�d	 n  Z_

 1  [_�c
�c 
leng o  Z[�b�b 0 thenickname theNickname�d   m  `a�a�a �f   m  ce�`�`�� o  QR�_�_ 0 eachlineitem eachLineItem � m  fg�^
�^ 
TEXT � o      �]�] 0 eachlineitem eachLineItem �  r  kq J  km�\�\   o      �[�[ "0 processedfields processedFields  Z  ry�Z C rw o  rs�Y�Y 0 eachlineitem eachLineItem m  sv  <    k  zq  r  z� m  z}  <    n      1  ���X
�X 
txdl 1  }��W
�W 
ascr  !  r  ��"#" n  ��$%$ 2  ���V
�V 
citm% o  ���U�U 0 eachlineitem eachLineItem# o      �T�T 0 
everyfield 
everyField! &'& r  ��()( m  ��**      ) n     +,+ 1  ���S
�S 
txdl, 1  ���R
�R 
ascr' -�Q- Y  �q.�P/0�O. k  �l11 232 r  ��454 n  ��676 4  ���N8
�N 
cobj8 o  ���M�M 0 
thecounter 
theCounter7 o  ���L�L 0 
everyfield 
everyField5 o      �K�K 0 thisitem thisItem3 9�J9 Z  �l:;<=: l ��>�I> = ��?@? n  ��ABA 4 ���HC
�H 
cha C m  ���G�G��B o  ���F�F 0 thisitem thisItem@ m  ��DD  >   �I  ; k  ��EE FGF r  ��HIH c  ��JKJ l ��L�EL n  ��MNM 7 ���DOP
�D 
cha O m  ���C�C P m  ���B�B��N o  ���A�A 0 thisitem thisItem�E  K m  ���@
�@ 
TEXTI o      �?�? 0 thisitem thisItemG Q�>Q r  ��RSR b  ��TUT o  ���=�= "0 processedfields processedFieldsU J  ��VV W�<W o  ���;�; 0 thisitem thisItem�<  S o      �:�: "0 processedfields processedFields�>  < XYX l ��Z�9Z H  ��[[ E  ��\]\ o  ���8�8 0 thisitem thisItem] m  ��^^  >   �9  Y _�7_ r  �`a` c  �bcb b  �ded o  ���6�6 0 appendtonotes appendToNotese o  ��5�5 0 
everyfield 
everyFieldc m  �4
�4 
TEXTa o      �3�3 0 appendtonotes appendToNotes�7  = k  	lff ghg r  	iji I 	�2�1k
�2 .sysooffslong    ��� null�1  k �0lm
�0 
psofl m  nn  >   m �/o�.
�/ 
psino o  �-�- 0 thisitem thisItem�.  j o      �,�, 0 	theoffset 	theOffseth pqp r  &rsr o  "�+�+ 0 thisitem thisItems o      �*�*  0 originalstring originalStringq tut r  '>vwv c  ':xyx l '8z�)z n  '8{|{ 7 *8�(}~
�( 
cha } m  02�'�' ~ l 37�& \  37��� o  45�%�% 0 	theoffset 	theOffset� m  56�$�$ �&  | o  '*�#�#  0 originalstring originalString�)  y m  89�"
�" 
TEXTw o      �!�! 0 thisitem thisItemu ��� r  ?^��� b  ?\��� b  ?X��� l ?T�� � c  ?T��� b  ?R��� o  ?@�� 0 appendtonotes appendToNotes� l @Q��� n  @Q��� 7 CQ���
� 
cha � l IM��� [  IM��� o  JK�� 0 	theoffset 	theOffset� m  KL�� �  � m  NP����� o  @C��  0 originalstring originalString�  � m  RS�
� 
TEXT�   � o  TW�
� 
ret � o  X[�
� 
ret � o      �� 0 appendtonotes appendToNotes� ��� r  _l��� b  _h��� o  _b�� "0 processedfields processedFields� J  bg�� ��� o  be�� 0 thisitem thisItem�  � o      �� "0 processedfields processedFields�  �J  �P 0 
thecounter 
theCounter/ m  ���� 0 I �����
� .corecnte****       ****� o  ���� 0 
everyfield 
everyField�  �O  �Q  �Z   r  ty��� b  tw��� o  tu�
�
 0 appendtonotes appendToNotes� o  uv�	�	 0 eachlineitem eachLineItem� o      �� 0 appendtonotes appendToNotes ��� X  z����� k  ���� ��� r  ����� m  ����  :   � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� Q  ������ k  ���� ��� r  ����� n  ����� 4  ����
� 
citm� m  ���� � o  ���� 0 	eachfield 	eachField� o      � �  0 thefield theField� ��� r  ����� n ����� I  ��������� 0 	fixascii3 	fixAscii3� ���� n  ����� 4  �����
�� 
citm� m  ������ � o  ������ 0 	eachfield 	eachField��  ��  �  f  ��� o      ���� 0 thevalue theValue� ��� l ��������  ��  � ���� Z  ������� = ����� o  ������ 0 thefield theField� m  ����  first   � n ����� I  ��������� 0 setfirstname setFirstName� ��� o  ������ 0 newentry newEntry� ���� o  ������ 0 thevalue theValue��  ��  � o  ������ 0 	thescript 	theScript� ��� = ����� o  ������ 0 thefield theField� m  ���� 
 last   � ��� n ����� I  ��������� 0 setlastname setLastName� ��� o  ������ 0 newentry newEntry� ���� o  ������ 0 thevalue theValue��  ��  � o  ������ 0 	thescript 	theScript� ��� = ����� o  ������ 0 thefield theField� m  ����  address   � ��� n � ��� I  � ������� $0 setstreetaddress setStreetAddress� ��� o  ������ 0 newentry newEntry� ��� m  ���� 
 home   � ���� o  ������ 0 thevalue theValue��  ��  � o  ������ 0 	thescript 	theScript� ��� = 
��� o  ���� 0 thefield theField� m  	��  address2   � ��� n ��� I  ������� $0 setstreetaddress setStreetAddress� ��� o  ���� 0 newentry newEntry� � � m   
 work     �� o  ���� 0 thevalue theValue��  ��  � o  ���� 0 	thescript 	theScript�  = # o  ���� 0 thefield theField m  "  title    	 n &/

 I  '/������ 0 settitle setTitle  o  '(���� 0 newentry newEntry �� o  (+���� 0 thevalue theValue��  ��   o  &'���� 0 	thescript 	theScript	  = 29 o  25���� 0 thefield theField m  58 
 city     n <H I  =H������ 0 setcity setCity  o  =>���� 0 newentry newEntry  m  >A 
 home    �� o  AD���� 0 thevalue theValue��  ��   o  <=���� 0 	thescript 	theScript  !  = KR"#" o  KN���� 0 thefield theField# m  NQ$$ 	 zip   ! %&% n Ua'(' I  Va��)���� 0 setzip setZip) *+* o  VW���� 0 newentry newEntry+ ,-, m  WZ.. 
 home   - /��/ o  Z]���� 0 thevalue theValue��  ��  ( o  UV���� 0 	thescript 	theScript& 010 = dk232 o  dg���� 0 thefield theField3 m  gj44  state   1 565 n nz787 I  oz��9���� 0 setstate setState9 :;: o  op���� 0 newentry newEntry; <=< m  ps>> 
 home   = ?��? o  sv���� 0 thevalue theValue��  ��  8 o  no���� 0 	thescript 	theScript6 @A@ = }�BCB o  }����� 0 thefield theFieldC m  ��DD  state2   A EFE n ��GHG I  ����I���� 0 setstate setStateI JKJ o  ������ 0 newentry newEntryK LML m  ��NN 
 work   M O��O o  ������ 0 thevalue theValue��  ��  H o  ������ 0 	thescript 	theScriptF PQP = ��RSR o  ������ 0 thefield theFieldS m  ��TT  country   Q UVU n ��WXW I  ����Y���� 0 
setcountry 
setCountryY Z[Z o  ������ 0 newentry newEntry[ \]\ m  ��^^ 
 home   ] _��_ o  ������ 0 thevalue theValue��  ��  X o  ������ 0 	thescript 	theScriptV `a` = ��bcb o  ������ 0 thefield theFieldc m  ��dd  city2   a efe n ��ghg I  ����i���� 0 setcity setCityi jkj o  ������ 0 newentry newEntryk lml m  ��nn 
 work   m o��o o  ������ 0 thevalue theValue��  ��  h o  ������ 0 	thescript 	theScriptf pqp = ��rsr o  ������ 0 thefield theFields m  ��tt 
 zip2   q uvu n ��wxw I  ����y���� 0 setzip setZipy z{z o  ������ 0 newentry newEntry{ |}| m  ��~~ 
 work   } �� o  ������ 0 thevalue theValue��  ��  x o  ������ 0 	thescript 	theScriptv ��� = ����� o  ������ 0 thefield theField� m  ����  country2   � ��� n ����� I  ��������� 0 
setcountry 
setCountry� ��� o  ������ 0 newentry newEntry� ��� m  ���� 
 work   � ���� o  ������ 0 thevalue theValue��  ��  � o  ������ 0 	thescript 	theScript� ��� = ���� o  ������ 0 thefield theField� m  � ��  company   � ��� n ��� I  ������� 0 
setcompany 
setCompany� ��� o  ���� 0 newentry newEntry� ���� o  	���� 0 thevalue theValue��  ��  � o  ���� 0 	thescript 	theScript� ��� = ��� o  ���� 0 thefield theField� m  ��  phone   � ��� n &��� I  &������� 0 setphone setPhone� ��� o  ���� 0 newentry newEntry� ��� m  �� 
 home   � ���� o  "���� 0 thevalue theValue��  ��  � o  ���� 0 	thescript 	theScript� ��� = )0��� o  ),���� 0 thefield theField� m  ,/�� 	 fax   � ��� n 3?��� I  4?������� 0 setphone setPhone� ��� o  45���� 0 newentry newEntry� ��� m  58��  home fax   � ���� o  8;���� 0 thevalue theValue��  ��  � o  34���� 0 	thescript 	theScript� ��� = BI��� o  BE���� 0 thefield theField� m  EH��  mobile   � ��� n LX��� I  MX������� 0 setphone setPhone� ��� o  MN���� 0 newentry newEntry� ��� m  NQ��  mobile   � ���� o  QT���� 0 thevalue theValue��  ��  � o  LM�� 0 	thescript 	theScript� ��� = [b��� o  [^�~�~ 0 thefield theField� m  ^a��  phone2   � ��� n eq��� I  fq�}��|�} 0 setphone setPhone� ��� o  fg�{�{ 0 newentry newEntry� ��� m  gj�� 
 work   � ��z� o  jm�y�y 0 thevalue theValue�z  �|  � o  ef�x�x 0 	thescript 	theScript� ��� = t{��� o  tw�w�w 0 thefield theField� m  wz�� 
 fax2   � ��� n ~���� I  ��v��u�v 0 setphone setPhone� ��� o  ��t�t 0 newentry newEntry� ��� m  ����  work fax   � ��s� o  ���r�r 0 thevalue theValue�s  �u  � o  ~�q�q 0 	thescript 	theScript� ��� = ����� o  ���p�p 0 thefield theField� m  ����  mobile2   � ��� n ����� I  ���o��n�o 0 setphone setPhone� ��� o  ���m�m 0 newentry newEntry� ��� m  ����  work mobile   � ��l� o  ���k�k 0 thevalue theValue�l  �n  � o  ���j�j 0 	thescript 	theScript� ��� = ��� � o  ���i�i 0 thefield theField  m  �� 
 name   � �h l ���g�g     skip it   �h  � Z  ���f�e > �� o  ���d�d 0 thevalue theValue m  ��       r  ��	
	 b  �� b  �� b  �� b  �� o  ���c�c 0 appendtonotes appendToNotes o  ���b�b 0 thefield theField m  ��  :     o  ���a�a 0 thevalue theValue o  ���`
�` 
ret 
 o      �_�_ 0 appendtonotes appendToNotes�f  �e  ��  � R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  � r  �� b  �� o  ���[�[ 0 appendtonotes appendToNotes o  ���Z�Z 0 	eachfield 	eachField o      �Y�Y 0 appendtonotes appendToNotes�  � 0 	eachfield 	eachField� o  }��X�X "0 processedfields processedFields�  n �� I  ���W�V�W 0 setnotes setNotes  o  ���U�U 0 newentry newEntry �T o  ���S�S 0 appendtonotes appendToNotes�T  �V   o  ���R�R 0 	thescript 	theScript  !  r  ��"#" [  ��$%$ o  ���Q�Q ,0 totalrecordsimported totalRecordsImported% m  ���P�P # o      �O�O ,0 totalrecordsimported totalRecordsImported! &�N& Z  �'(�M�L' l ��)�K) = ��*+* `  ��,-, o  ���J�J ,0 totalrecordsimported totalRecordsImported- m  ���I�I 
+ m  ���H�H  �K  ( O ./. I �G�F�E
�G .az00az15null��� ��� obj �F  �E  / m   ��M  �L  �N  �}  ��  ��  ��  ��  �� 0 eachlineitem eachLineItem � o   � ��D�D 0 everylineitem everyLineItem � 010 l   �C2�C  2   for better performance   1 343 r   &565 J   "�B�B  6 o      �A�A &0 everyemailaddress everyEmailAddress4 787 O  '�9:9 k  -�;; <=< r  -6>?> 2  -2�@
�@ 
azf4? o      �?�? 0 everyperson everyPerson= @�>@ X  7�A�=BA k  M�CC DED r  MXFGF n  MTHIH 2  PT�<
�< 
az21I o  MP�;�; 0 
eachperson 
eachPersonG o      �:�: 0 everyaddress everyAddressE J�9J X  Y�K�8LK Z  o�MN�7�6M > ozOPO n  ovQRQ 1  rv�5
�5 
az17R o  or�4�4 0 eachaddress eachAddressP m  vySS      N r  }�TUT b  }�VWV o  }��3�3 &0 everyemailaddress everyEmailAddressW J  ��XX Y�2Y o  ���1�1 0 eachaddress eachAddress�2  U o      �0�0 &0 everyemailaddress everyEmailAddress�7  �6  �8 0 eachaddress eachAddressL o  \_�/�/ 0 everyaddress everyAddress�9  �= 0 
eachperson 
eachPersonB o  :=�.�. 0 everyperson everyPerson�>  : m  '* �8 Z[Z r  ��\]\ J  ���-�-  ] o      �,�, H0 "everylineitemtodefertothebitterend "everyLineItemToDeferToTheBitterEnd[ ^_^ X  �	�`�+a` k  �	�bb cdc r  ��efe J  ���*�*  f o      �)�) 0 deferreditems deferredItemsd ghg r  ��iji n ��klk I  ���(m�'�( 0 findnickname findNicknamem n�&n o  ���%�% 80 eachlineitemtoprocessatend eachLineItemToProcessAtEnd�&  �'  l  f  ��j o      �$�$ 0 thisnickname thisNicknameh opo r  ��qrq n ��sts I  ���#u�"�# $0 extractaddresses extractAddressesu vwv o  ���!�! 80 eachlineitemtoprocessatend eachLineItemToProcessAtEndw x� x o  ���� 0 thisnickname thisNickname�   �"  t  f  ��r o      �� 0 everyaddress everyAddressp yzy O  �	�{|{ k  �	}} ~~ r  ����� l ����� 6 ����� 2  ���
� 
azf4� = ����� 1  ���
� 
az43� o  ���� 0 thisnickname thisNickname�  � o      �� 0 	theresult 	theResult ��� Z  �	����� l ���� ? ���� l ����� I �����
� .corecnte****       ****� o  ���� 0 	theresult 	theResult�  �  � m  � ��  �  � k  s�� ��� r  ��� n  ��� 4  ��
� 
cobj� m  
�� � o  �� 0 	theresult 	theResult� o      ��  0 existingperson existingPerson� ��� X  s���� k  'n�� ��� r  'Q��� n '/��� I  (/�
��	�
 80 parsestringforemailandname parseStringForEmailAndName� ��� o  (+�� 0 eachaddress eachAddress�  �	  �  f  '(� J      �� ��� o      �� 0 thefirstname theFirstName� ��� o      �� 0 thelastname theLastName� ��� o      �� "0 theemailaddress theEmailAddress�  � ��� Z  Rn���� � > RY��� o  RU���� "0 theemailaddress theEmailAddress� m  UX��      � n \j��� I  ]j������� 0 setemail setEmail� ��� o  ]`����  0 existingperson existingPerson� ��� m  `c�� 
 home   � ���� o  cf���� "0 theemailaddress theEmailAddress��  ��  � o  \]���� 0 	thescript 	theScript�  �   �  � 0 eachaddress eachAddress� o  ���� 0 everyaddress everyAddress�  �  � k  v	�� ��� r  v{��� m  vw����  � o      ����  0 addresscounter addressCounter� ��� X  |������ Z  ��������� ? ����� n  ����� 1  ����
�� 
leng� o  ������ 0 eachaddress eachAddress� m  ������ � r  ����� [  ����� o  ������  0 addresscounter addressCounter� m  ������ � o      ����  0 addresscounter addressCounter��  ��  �� 0 eachaddress eachAddress� o  ����� 0 everyaddress everyAddress� ��� Z  �	^������ ? ����� l ������ o  ������  0 addresscounter addressCounter��  � m  ������ � k  ���� ��� r  ����� l ������ 6 ����� 2  ����
�� 
azf5� = ����� 1  ����
�� 
pnam� o  ������ 0 thisnickname thisNickname��  � o      ���� 0 
everygroup 
everyGroup� ��� Z  �	������ = ����� l ������ I �������
�� .corecnte****       ****� o  ������ 0 
everygroup 
everyGroup��  ��  � m  ������  � r  ����� I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
azf5� �����
�� 
prdt� K  ���� �����
�� 
pnam� o  ������ 0 thisnickname thisNickname��  ��  � o      ���� 0 newgroup newGroup��  � r  �	��� n  ���� 4   ���
�� 
cobj� m  ���� � o  � ���� 0 
everygroup 
everyGroup� o      ���� 0 newgroup newGroup� ���� X  
������ k   ��� ��� r   '��� m   #��      � o      ���� 0 matchedperson matchedPerson� ���� Z  (�������� > (1   l (/�� I (/����
�� .corecnte****       **** o  (+���� 0 eachaddress eachAddress��  ��   m  /0����  � k  4�  r  4^ n 4<	
	 I  5<������ 80 parsestringforemailandname parseStringForEmailAndName �� o  58���� 0 eachaddress eachAddress��  ��  
  f  45 J        o      ���� (0 extractedfirstname extractedFirstName  o      ���� &0 extractedlastname extractedLastName �� o      ���� .0 extractedemailaddress extractedEmailAddress��    Z  _^�� E  _f o  _b���� .0 extractedemailaddress extractedEmailAddress m  be  @    Z  i&�� E ip o  il���� &0 everyemailaddress everyEmailAddress o  lo���� .0 extractedemailaddress extractedEmailAddress k  s�   !"! r  s|#$# 2  sx��
�� 
azf4$ o      ���� 0 everyperson everyPerson" %��% X  }�&��'& k  ��(( )*) r  ��+,+ n  ��-.- 2  ����
�� 
az21. o  ������ 0 
eachperson 
eachPerson, o      ���� 0 
everyemail 
everyEmail* /0/ X  ��1��21 Z  ��34����3 = ��565 n  ��787 1  ����
�� 
az178 o  ������ 0 	eachemail 	eachEmail6 o  ������ .0 extractedemailaddress extractedEmailAddress4 k  ��99 :;: r  ��<=< o  ������ 0 
eachperson 
eachPerson= o      ���� 0 matchedperson matchedPerson; >��>  S  ����  ��  ��  �� 0 	eachemail 	eachEmail2 o  ������ 0 
everyemail 
everyEmail0 ?��? Z  ��@A����@ > ��BCB o  ������ 0 matchedperson matchedPersonC m  ��DD      A  S  ����  ��  ��  �� 0 
eachperson 
eachPerson' o  ������ 0 everyperson everyPerson��  ��   k  �&EE FGF r  �HIH I �����J
�� .corecrel****      � null��  J ��KL
�� 
koclK m  ����
�� 
azf4L ��M��
�� 
prdtM K  �NN ��OP
�� 
az43O o  ������ (0 extractedfirstname extractedFirstNameP ��QR
�� 
azf7Q o   ���� (0 extractedfirstname extractedFirstNameR ��S��
�� 
azf8S o  	���� &0 extractedlastname extractedLastName��  ��  I o      ���� 0 matchedperson matchedPersonG T��T n &UVU I  &��W���� 0 setemail setEmailW XYX o  ���� 0 matchedperson matchedPersonY Z[Z m  \\ 
 home   [ ]��] o  "���� .0 extractedemailaddress extractedEmailAddress��  ��  V o  ���� 0 	thescript 	theScript��  ��   k  )^^^ _`_ r  )Aaba l )=c��c 6 )=ded 2  ).��
�� 
azf4e = 1<fgf 1  26��
�� 
az43g o  7;���� 0 eachaddress eachAddress��  b o      ���� 0 	theresult 	theResult` h��h Z  B^ij����i ? BKklk l BIm��m I BI��n��
�� .corecnte****       ****n o  BE���� 0 	theresult 	theResult��  ��  l m  IJ��  j r  NZopo n  NVqrq 4  QV�~s
�~ 
cobjs m  TU�}�} r o  NQ�|�| 0 	theresult 	theResultp o      �{�{ 0 matchedperson matchedPerson��  ��  ��   t�zt Z  _�uv�ywu = _fxyx o  _b�x�x 0 matchedperson matchedPersony m  bezz      v Z  i�{|�w}{ = ip~~ o  il�v�v .0 extractedemailaddress extractedEmailAddress m  lo��      | r  s���� b  s|��� o  sv�u�u 0 deferreditems deferredItems� J  v{�� ��t� o  vy�s�s (0 extractedfirstname extractedFirstName�t  � o      �r�r 0 deferreditems deferredItems�w  } k  ���� ��� r  ����� I ���q�p�
�q .corecrel****      � null�p  � �o��
�o 
kocl� m  ���n
�n 
azf4� �m��l
�m 
prdt� K  ���� �k��
�k 
azf7� o  ���j�j (0 extractedfirstname extractedFirstName� �i��
�i 
az43� o  ���h�h (0 extractedfirstname extractedFirstName� �g��f
�g 
azf8� o  ���e�e &0 extractedlastname extractedLastName�f  �l  � o      �d�d 0 	newperson 	newPerson� ��� n ����� I  ���c��b�c 0 setemail setEmail� ��� o  ���a�a 0 	newperson 	newPerson� ��� m  ����  other   � ��`� o  ���_�_ .0 extractedemailaddress extractedEmailAddress�`  �b  � o  ���^�^ 0 	thescript 	theScript� ��]� I ���\��
�\ .az00az44null��� ��� azf6� o  ���[�[ 0 	newperson 	newPerson� �Z��Y
�Z 
az45� o  ���X�X 0 newgroup newGroup�Y  �]  �y  w I ���W��
�W .az00az44null��� ��� azf6� o  ���V�V 0 matchedperson matchedPerson� �U��T
�U 
az45� o  ���S�S 0 newgroup newGroup�T  �z  ��  ��  ��  �� 0 eachaddress eachAddress� o  �R�R 0 everyaddress everyAddress��  � ��� l ����Q� = ����� o  ���P�P  0 addresscounter addressCounter� m  ���O�O �Q  � ��N� k  �	Z�� ��� r  �	��� n ����� I  ���M��L�M 80 parsestringforemailandname parseStringForEmailAndName� ��K� n  ����� 4  ���J�
�J 
cobj� m  ���I�I � o  ���H�H 0 everyaddress everyAddress�K  �L  �  f  ��� J      �� ��� o      �G�G 0 thefirstname theFirstName� ��� o      �F�F 0 thelastname theLastName� ��E� o      �D�D "0 theemailaddress theEmailAddress�E  � ��� O 		M��� r  	$	L��� I 	$	J�C�B�
�C .corecrel****      � null�B  � �A��
�A 
kocl� m  	(	+�@
�@ 
azf4� �?��>
�? 
prdt� K  	.	D�� �=��
�= 
az43� o  	1	4�<�< 0 thisnickname thisNickname� �;��
�; 
azf7� o  	7	:�:�: 0 thefirstname theFirstName� �9��8
�9 
azf8� o  	=	@�7�7 0 thelastname theLastName�8  �>  � o      �6�6 0 newentry newEntry� m  		! �� ��5� n 	N	Z��� I  	O	Z�4��3�4 0 setemail setEmail� ��� o  	O	P�2�2 0 newentry newEntry� ��� m  	P	S�� 
 home   � ��1� o  	S	V�0�0 "0 theemailaddress theEmailAddress�1  �3  � o  	N	O�/�/ 0 	thescript 	theScript�5  �N  ��  � ��� r  	_	d��� [  	_	b��� o  	_	`�.�. ,0 totalrecordsimported totalRecordsImported� m  	`	a�-�- � o      �,�, ,0 totalrecordsimported totalRecordsImported� ��+� Z  	e	���*�)� l 	e	l��(� = 	e	l��� `  	e	j��� o  	e	f�'�' ,0 totalrecordsimported totalRecordsImported� m  	f	i�&�& � m  	j	k�%�%  �(  � O 	o	{��� I 	u	z�$�#�"
�$ .az00az15null��� ��� obj �#  �"  � m  	o	r ��*  �)  �+  �  | m  �� �z ��!� Z  	�	���� �� > 	�	���� o  	�	��� 0 deferreditems deferredItems� J  	�	���  � r  	�	���� b  	�	���� o  	�	��� H0 "everylineitemtodefertothebitterend "everyLineItemToDeferToTheBitterEnd� J  	�	��� ��� J  	�	��� ��� o  	�	��� 0 thisnickname thisNickname� ��� o  	�	��� 0 deferreditems deferredItems�  �  � o      �� H0 "everylineitemtodefertothebitterend "everyLineItemToDeferToTheBitterEnd�   �  �!  �+ 80 eachlineitemtoprocessatend eachLineItemToProcessAtEnda o  ���� 20 lineitemstoprocessatend lineItemsToProcessAtEnd_ ��� X  	�
v���� k  	�
q�� ��� r  	�	�   n  	�	� 4  	�	��
� 
cobj m  	�	���  o  	�	��� F0 !eachlineitemtodefertothebitterend !eachLineItemToDeferToTheBitterEnd o      �� 0 thegroupname theGroupName�  r  	�	� n  	�	�	
	 4  	�	��
� 
cobj m  	�	��� 
 o  	�	��� F0 !eachlineitemtodefertothebitterend !eachLineItemToDeferToTheBitterEnd o      �� 0 listofpeople listOfPeople � O  	�
q k  	�
p  r  	�	� l 	�	�� 6 	�	� 2  	�	��

�
 
azf5 = 	�	� 1  	�	��	
�	 
pnam o  	�	��� 0 thegroupname theGroupName�   o      �� 0 
everygroup 
everyGroup � Z  	�
p�� ? 	�	� l 	�	�� I 	�	���
� .corecnte****       **** o  	�	�� �  0 
everygroup 
everyGroup�  �   m  	�	�����   k  

l   !"! r  

#$# n  

	%&% 4  

	��'
�� 
cobj' m  

���� & o  

���� 0 
everygroup 
everyGroup$ o      ���� 0 thegroup theGroup" (��( X  

l)��*) k  
$
g++ ,-, r  
$
<./. l 
$
80��0 6 
$
8121 2  
$
)��
�� 
azf42 = 
,
7343 1  
-
1��
�� 
az434 o  
2
6���� 0 
eachperson 
eachPerson��  / o      ���� 0 everyperson everyPerson- 5��5 Z  
=
g67����6 ? 
=
F898 l 
=
D:��: I 
=
D��;��
�� .corecnte****       ****; o  
=
@���� 0 everyperson everyPerson��  ��  9 m  
D
E����  7 k  
I
c<< =>= r  
I
U?@? n  
I
QABA 4  
L
Q��C
�� 
cobjC m  
O
P���� B o  
I
L���� 0 everyperson everyPerson@ o      ���� 0 	theperson 	thePerson> D��D I 
V
c��EF
�� .az00az44null��� ��� azf6E o  
V
Y���� 0 	theperson 	thePersonF ��G��
�� 
az45G o  
\
_���� 0 thegroup theGroup��  ��  ��  ��  ��  �� 0 
eachperson 
eachPerson* o  

���� 0 listofpeople listOfPeople��  �  �  �   m  	�	� ��  � F0 !eachlineitemtodefertothebitterend !eachLineItemToDeferToTheBitterEnd� o  	�	����� H0 "everylineitemtodefertothebitterend "everyLineItemToDeferToTheBitterEnd� H��H O 
w
�IJI I 
}
�������
�� .az00az15null��� ��� obj ��  ��  J m  
w
z ���   � R      ��KL
�� .ascrerr ****      � ****K o      ���� 0 errtext errTextL ��M��
�� 
errnM o      ���� 0 errnum errNum��   � k  
�
�NN OPO Q  
�
�QR��Q I 
�
���S��
�� .rdwrclosnull���     ****S c  
�
�TUT o  
�
����� 0 
eudorafile 
eudoraFileU m  
�
���
�� 
fss ��  R R      ������
�� .ascrerr ****      � ****��  ��  ��  P V��V Z  
�
�WX����W > 
�
�YZY o  
�
����� 0 errnum errNumZ m  
�
������QX I 
�
���[\
�� .sysodlogaskr        TEXT[ b  
�
�]^] b  
�
�_`_ b  
�
�aba m  
�
�cc 2 ,No Eudora contacts were found in this file!    b o  
�
���
�� 
ret ` o  
�
���
�� 
ret ^ o  
�
����� 0 errtext errText\ ��de
�� 
btnsd J  
�
�ff g��g m  
�
�hh  OK   ��  e ��i��
�� 
dflti m  
�
����� ��  ��  ��  ��   ~ j��j L  
�
�kk o  
�
����� ,0 totalrecordsimported totalRecordsImported��   " lml l     ������  ��  m non i    pqp I      ��r���� 0 findnickname findNicknamer s��s o      ���� 0 eachlineitem eachLineItem��  ��  q k     stt uvu r     wxw m     yy      x o      ���� 0 thenickname theNicknamev z{z r    	|}| m    ~~      } n     � 1    ��
�� 
txdl� 1    ��
�� 
ascr{ ��� r   
 ��� n   
 ��� 2    ��
�� 
citm� o   
 ���� 0 eachlineitem eachLineItem� o      ���� 0 everytextitem everyTextItem� ��� Z    j������� ?   ��� l   ���� I   �����
�� .corecnte****       ****� o    ���� 0 everytextitem everyTextItem��  ��  � m    ���� � Z    f������ C    ��� n    ��� 4    ���
�� 
cobj� m    ���� � o    ���� 0 everytextitem everyTextItem� m    ��  "   � k   # I�� ��� r   # (��� m   # $��  "   � n     ��� 1   % '��
�� 
txdl� 1   $ %��
�� 
ascr� ��� r   ) .��� n   ) ,��� 2   * ,��
�� 
citm� o   ) *���� 0 eachlineitem eachLineItem� o      ���� 0 everytextitem everyTextItem� ��� r   / 4��� m   / 0��      � n     ��� 1   1 3��
�� 
txdl� 1   0 1��
�� 
ascr� ���� Q   5 I����� r   8 @��� c   8 >��� n   8 <��� 4   9 <���
�� 
citm� m   : ;���� � o   8 9���� 0 everytextitem everyTextItem� m   < =��
�� 
TEXT� o      ���� 0 thenickname theNickname� R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � k   L f�� ��� r   L Q��� m   L M��      � n     ��� 1   N P��
�� 
txdl� 1   M N��
�� 
ascr� ���� Q   R f����� r   U ]��� c   U [��� n   U Y��� 4   V Y���
�� 
citm� m   W X���� � o   U V���� 0 eachlineitem eachLineItem� m   Y Z��
�� 
TEXT� o      ���� 0 thenickname theNickname� R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  � ��� r   k p��� m   k l��      � n     ��� 1   m o��
�� 
txdl� 1   l m��
�� 
ascr� ��� l   q q�����  ���
	set AppleScript's text item delimiters to "\""
	set everyTextItem to every text item of eachLineItem
	set AppleScript's text item delimiters to ""
	if ((count of everyTextItem) is greater than 1) then
		set theNickname to (text item 2 of everyTextItem) as string
	else
		set AppleScript's text item delimiters to " "
		try
			set theNickname to text item 2 of eachLineItem as string
		end try
		set AppleScript's text item delimiters to ""
	end if
	   � ���� L   q s�� o   q r���� 0 thenickname theNickname��  o ��� l     ������  ��  � ��� i    ��� I      ������� $0 extractaddresses extractAddresses� ��� o      ���� 0 eachlineitem eachLineItem� ���� o      �� 0 thenickname theNickname��  ��  � k     F�� ��� r     ��� I    	�~�}�
�~ .sysooffslong    ��� null�}  � �|��
�| 
psof� o    �{�{ 0 thenickname theNickname� �z��y
�z 
psin� o    �x�x 0 eachlineitem eachLineItem�y  � o      �w�w 0 	theoffset 	theOffset� ��� Z    ���v�� l   ��u� E    ��� o    �t�t 0 thenickname theNickname� m    ��      �u  � r    ��� m    �s�s � o      �r�r  0 thespaceoffset theSpaceOffset�v  � r    ��� m    �q�q � o      �p�p  0 thespaceoffset theSpaceOffset� ��� r    1��� c    /��� l   -��o� n    -��� 7   -�n��
�n 
cha � l  ! ) �m  [   ! ) [   " ' o   " #�l�l 0 	theoffset 	theOffset l  # &�k n   # & 1   $ &�j
�j 
leng o   # $�i�i 0 thenickname theNickname�k   o   ' (�h�h  0 thespaceoffset theSpaceOffset�m  � m   * ,�g�g��� o    �f�f 0 eachlineitem eachLineItem�o  � m   - .�e
�e 
TEXT� o      �d�d (0 theremainingstring theRemainingString� 	 r   2 7

 m   2 3  ,    n      1   4 6�c
�c 
txdl 1   3 4�b
�b 
ascr	  r   8 = n  8 ; 2   9 ;�a
�a 
citm o   8 9�`�` (0 theremainingstring theRemainingString o      �_�_ 0 everyaddress everyAddress  l  > >�^�]�^  �]    r   > C m   > ?       n      1   @ B�\
�\ 
txdl 1   ? @�[
�[ 
ascr �Z L   D F o   D E�Y�Y 0 everyaddress everyAddress�Z  �  !  l     �X�W�X  �W  ! "#" i    $%$ I      �V&�U�V 0 	fixascii3 	fixAscii3& '�T' o      �S�S 0 thedata theData�T  �U  % k     8(( )*) r     +,+ o     �R�R 0 thedata theData, o      �Q�Q 0 returnvalue returnValue* -.- r    /0/ I   	�P1�O
�P .sysontocTEXT       shor1 m    �N�N �O  0 n     232 1   
 �M
�M 
txdl3 1   	 
�L
�L 
ascr. 454 r    676 n    898 2    �K
�K 
citm9 o    �J�J 0 thedata theData7 o      �I�I 0 everytextitem everyTextItem5 :;: r    <=< I   �H>�G
�H .corecnte****       ****> o    �F�F 0 everytextitem everyTextItem�G  = o      �E�E 0 thecount theCount; ?@? Z    5AB�D�CA ?   CDC o    �B�B 0 thecount theCountD m    �A�A B k   " 1EE FGF r   " +HIH I  " '�@J�?
�@ .sysontocTEXT       shorJ m   " #�>�> 
�?  I n     KLK 1   ( *�=
�= 
txdlL 1   ' (�<
�< 
ascrG M�;M r   , 1NON c   , /PQP o   , -�:�: 0 everytextitem everyTextItemQ m   - .�9
�9 
TEXTO o      �8�8 0 returnvalue returnValue�;  �D  �C  @ R�7R L   6 8SS o   6 7�6�6 0 returnvalue returnValue�7  # TUT l     �5�4�5  �4  U VWV i    XYX I      �3Z�2�3 80 parsestringforemailandname parseStringForEmailAndNameZ [�1[ o      �0�0 0 	thestring 	theString�1  �2  Y k    \\ ]^] I    �/_�.
�/ .ascrcmnt****      � ****_ b     `a` m     bb  theString:    a o    �-�- 0 	thestring 	theString�.  ^ cdc r    efe n   ghg I   	 �,i�+�,  0 stripcharacter stripCharacteri jkj o   	 
�*�* 0 	thestring 	theStringk l�)l m   
 mm  (   �)  �+  h  f    	f o      �(�( 0 	thestring 	theStringd non r    pqp n   rsr I    �'t�&�'  0 stripcharacter stripCharactert uvu o    �%�% 0 	thestring 	theStringv w�$w m    xx  )   �$  �&  s  f    q o      �#�# 0 	thestring 	theStringo yzy r    %{|{ n   #}~} I    #�"�!�"  0 stripcharacter stripCharacter ��� o    � �  0 	thestring 	theString� ��� m    ��  <   �  �!  ~  f    | o      �� 0 	thestring 	theStringz ��� r   & /��� n  & -��� I   ' -����  0 stripcharacter stripCharacter� ��� o   ' (�� 0 	thestring 	theString� ��� m   ( )��  >   �  �  �  f   & '� o      �� 0 	thestring 	theString� ��� r   0 9��� n  0 7��� I   1 7����  0 stripcharacter stripCharacter� ��� o   1 2�� 0 	thestring 	theString� ��� m   2 3��  "   �  �  �  f   0 1� o      �� 0 	thestring 	theString� ��� r   : ?��� m   : ;��      � n     ��� 1   < >�
� 
txdl� 1   ; <�
� 
ascr� ��� r   @ E��� n   @ C��� 2   A C�
� 
citm� o   @ A�� 0 	thestring 	theString� o      �� 0 everytextitem everyTextItem� ��� r   F I��� m   F G��      � o      �� 0 
namestring 
nameString� ��� r   J M��� m   J K��      � o      �� 0 emailstring emailString� ��� r   N Q��� m   N O��      � o      �� "0 firstnamestring firstNameString� ��� r   R U��� m   R S��      � o      ��  0 lastnamestring lastNameString� ��� X   V ���
�� Z   j ����	�� E   j o��� o   j k�� 0 eachitem eachItem� m   k n��  @   � r   r u��� o   r s�� 0 eachitem eachItem� o      �� 0 emailstring emailString�	  � k   x ��� ��� Z   x ������ >  x }��� o   x y�� 0 
namestring 
nameString� m   y |��      � r   � ���� b   � ���� o   � ��� 0 
namestring 
nameString� m   � ���      � o      �� 0 
namestring 
nameString�  �  � �� � r   � ���� b   � ���� o   � ����� 0 
namestring 
nameString� o   � ����� 0 eachitem eachItem� o      ���� 0 
namestring 
nameString�   �
 0 eachitem eachItem� o   Y Z���� 0 everytextitem everyTextItem� ��� Z   � �������� >  � ���� o   � ����� 0 
namestring 
nameString� m   � ���      � k   � ��� ��� r   � ���� n   � ���� 2   � ���
�� 
citm� o   � ����� 0 
namestring 
nameString� o      ���� 0 everytextitem everyTextItem� ���� Z   � ������� =  � ���� l  � ����� I  � ������
�� .corecnte****       ****� o   � ����� 0 everytextitem everyTextItem��  ��  � m   � ����� � r   � ���� c   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 everytextitem everyTextItem� m   � ���
�� 
TEXT� o      ���� "0 firstnamestring firstNameString��  � k   � ��� ��� r   � ���� c   � ���� n   � ���� 7  � ���� 
�� 
cobj� m   � �����   m   � �������� o   � ����� 0 everytextitem everyTextItem� m   � ���
�� 
TEXT� o      ���� "0 firstnamestring firstNameString� �� r   � � c   � � n   � � 4  � ���
�� 
cobj m   � ������� o   � ����� 0 everytextitem everyTextItem m   � ���
�� 
TEXT o      ����  0 lastnamestring lastNameString��  ��  ��  ��  � 	
	 r   � � m   � �       n      1   � ���
�� 
txdl 1   � ���
�� 
ascr
  I  � �����
�� .ascrcmnt****      � **** b   � � m   � �  firstNameString:     o   � ����� "0 firstnamestring firstNameString��    I  � ����
�� .ascrcmnt****      � **** b   � � m   � �  lastNameString:     o   � �����  0 lastnamestring lastNameString��    I 
����
�� .ascrcmnt****      � **** b    m  !!  emailString:      o  ���� 0 emailstring emailString��   "��" L  ## J  $$ %&% o  ���� "0 firstnamestring firstNameString& '(' o  ����  0 lastnamestring lastNameString( )��) o  ���� 0 emailstring emailString��  ��  W *+* l     ������  ��  + ,-, i    ./. I      ��0����  0 stripcharacter stripCharacter0 121 o      ���� 0 	thestring 	theString2 3��3 o      ���� 0 thecharacter theCharacter��  ��  / k     44 565 r     787 o     ���� 0 thecharacter theCharacter8 n     9:9 1    ��
�� 
txdl: 1    ��
�� 
ascr6 ;<; r    =>= n    	?@? 2    	��
�� 
citm@ o    ���� 0 	thestring 	theString> o      ���� 0 everytextitem everyTextItem< ABA r    CDC m    EE      D n     FGF 1    ��
�� 
txdlG 1    ��
�� 
ascrB HIH r    JKJ c    LML o    ���� 0 everytextitem everyTextItemM m    ��
�� 
TEXTK o      ���� 0 	thestring 	theStringI N��N L    OO o    ���� 0 	thestring 	theString��  - PQP l     ������  ��  Q RSR i    TUT I      �������� 20 getscriptfolderlocation getScriptFolderLocation��  ��  U k     VV WXW O    YZY r    [\[ c    	]^] 1    ��
�� 
sdsk^ m    ��
�� 
TEXT\ o      ���� 0 
bootvolume 
bootVolumeZ m      uX _`_ r    aba b    cdc o    ���� 0 
bootvolume 
bootVolumed m    ee 2 ,Library:Scripts:Mail Scripts:Helper Scripts:   b o      ���� 40 basepathtolibraryscripts basePathToLibraryScripts` f��f L    gg o    ���� 40 basepathtolibraryscripts basePathToLibraryScripts��  S hih l     ������  ��  i j��j i     #klk I     ������
�� .aevtoappnull  �   � ****��  ��  l I    ��mn
�� .sysodisAaleR        TEXTm m     oo  Address Importer Script   n ��p��
�� 
mesSp m    qq � �This script is an address importer script to be used with the Import Addresses script. It supports importing nicknames from Qualcomm Eudora.   ��  ��       ��rstuvwxyz{��  r 	�������������������� *0 importtoaddressbook importToAddressBook�� $0 importfromeudora importFromEudora�� 0 findnickname findNickname�� $0 extractaddresses extractAddresses�� 0 	fixascii3 	fixAscii3�� 80 parsestringforemailandname parseStringForEmailAndName��  0 stripcharacter stripCharacter�� 20 getscriptfolderlocation getScriptFolderLocation
�� .aevtoappnull  �   � ****s �� ����|}���� *0 importtoaddressbook importToAddressBook�� ��~�� ~  ���� 
0 unused  ��  | ���� 
0 unused  }  �� ht �� $��������� $0 importfromeudora importFromEudora�� ����� �  ���� ,0 totalrecordsimported totalRecordsImported��   7������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�� ,0 totalrecordsimported totalRecordsImported�� ,0 scriptfolderlocation scriptFolderLocation�� 0 	thescript 	theScript�� 0 homedir homeDir�� 0 pathname  �� 0 
eudorafile 
eudoraFile�� $0 thenicknamesfile theNicknamesFile�� 0 thefile theFile�� 0 thecontents theContents�� 0 everylineitem everyLineItem�� 20 lineitemstoprocessatend lineItemsToProcessAtEnd�� 0 eachlineitem eachLineItem�� 0 thenickname theNickname�� 0 appendtonotes appendToNotes� 0 newentry newEntry�~ 0 	theoffset 	theOffset�} "0 processedfields processedFields�| 0 
everyfield 
everyField�{ 0 
thecounter 
theCounter�z 0 thisitem thisItem�y  0 originalstring originalString�x 0 	eachfield 	eachField�w 0 thefield theField�v 0 thevalue theValue�u &0 everyemailaddress everyEmailAddress�t 0 everyperson everyPerson�s 0 
eachperson 
eachPerson�r 0 everyaddress everyAddress�q 0 eachaddress eachAddress�p H0 "everylineitemtodefertothebitterend "everyLineItemToDeferToTheBitterEnd�o 80 eachlineitemtoprocessatend eachLineItemToProcessAtEnd�n 0 deferreditems deferredItems�m 0 thisnickname thisNickname�l 0 	theresult 	theResult�k  0 existingperson existingPerson�j 0 thefirstname theFirstName�i 0 thelastname theLastName�h "0 theemailaddress theEmailAddress�g  0 addresscounter addressCounter�f 0 
everygroup 
everyGroup�e 0 newgroup newGroup�d 0 matchedperson matchedPerson�c (0 extractedfirstname extractedFirstName�b &0 extractedlastname extractedLastName�a .0 extractedemailaddress extractedEmailAddress�` 0 
everyemail 
everyEmail�_ 0 	eachemail 	eachEmail�^ 0 	newperson 	newPerson�] F0 !eachlineitemtodefertothebitterend !eachLineItemToDeferToTheBitterEnd�\ 0 thegroupname theGroupName�[ 0 listofpeople listOfPeople�Z 0 thegroup theGroup�Y 0 	theperson 	thePerson�X 0 errtext errText�W 0 errnum errNum� ��V�U 7�T u�S�R I�Q�P [�O�N i�M�L�K�J�I�H�G�F�E ��D�C�B�A ��@�?�>�= � � � ��<�;�:�9�8�7�6�5�4�3*D�2^n�1��0��/��.���-��,�+$.�*4>�)DNT^�(dnt~����'���&�����������%�$�#�"�!S� ��������D��\z���������c�h���V 20 getscriptfolderlocation getScriptFolderLocation
�U 
alis
�T .sysoloadscpt        alis
�S 
home
�R 
TEXT�Q  �P  
�O .miscactvnull��� ��� null
�N 
prmp
�M .sysostdfalis    ��� null
�L 
fss 
�K .rdwropenshor       file
�J 
rdfm
�I 
rdto
�H rdwreof �G 
�F .rdwrread****        ****
�E .rdwrclosnull���     ****�D (0 snifflinedelimiter sniffLineDelimiter
�C 
ascr
�B 
txdl
�A 
citm
�@ 
kocl
�? 
cobj
�> .corecnte****       ****�= 0 findnickname findNickname
�< 
azf4
�; 
prdt
�: 
azf7
�9 
az43
�8 .corecrel****      � null
�7 
psof
�6 
psin
�5 .sysooffslong    ��� null
�4 
cha 
�3 
leng�2��
�1 
ret �0 0 	fixascii3 	fixAscii3�/ 0 setfirstname setFirstName�. 0 setlastname setLastName�- $0 setstreetaddress setStreetAddress�, 0 settitle setTitle�+ 0 setcity setCity�* 0 setzip setZip�) 0 setstate setState�( 0 
setcountry 
setCountry�' 0 
setcompany 
setCompany�& 0 setphone setPhone�% 0 setnotes setNotes�$ 

�# .az00az15null��� ��� obj 
�" 
az21
�! 
az17�  $0 extractaddresses extractAddresses�  � 80 parsestringforemailandname parseStringForEmailAndName� 0 setemail setEmail
� 
azf5
� 
pnam
� 
azf8� 
� 
az45
� .az00az44null��� ��� azf6� � 0 errtext errText� ���
� 
errn� 0 errnum errNum�  ��Q
� 
btns
� 
dflt
� .sysodlogaskr        TEXT��
�)j+  E�O*��%/j E�O� T*�,�&E�O��%E�O *�/E�W :X  	 ��%E�O*�/E�W #X  	*j O*��l E�O��&E�O*�/E�UO��&j E�O
�a ka a a  E�O��&j O)j+  E�O*�a %/j E�O��k+ _ a ,FO�a -E�Oa  *j UOjvE�OH�[a a l kh )�k+  E�O�a ! �a " 
��%E�Y�a #a $E�Oa   *a a %a &a '�a (�a a  )E�UO*a *�a +�a  ,E�O�[a -\[Z��a .,k\Zi2�&E�OjvE^ O�a / �a 0_ a ,FO�a -E^ Oa 1_ a ,FO �l] j kh ] a ] /E^ O] a -i/a 2  *] [a -\[Zk\Za 32�&E^ O] ] kv%E^ Y |] a 4 �] %�&E�Y e*a *a 5a +] a  ,E�O] E^ O] [a -\[Zk\Z�k2�&E^ O�] [a -\[Z�k\Zi2%�&_ 6%_ 6%E�O] ] kv%E^ [OY�:Y ��%E�On] [a a l kh a 7_ a ,FO;] a k/E^ O)] a l/k+ 8E^ O] a 9  ��] l+ :Y] a ;  ��] l+ <Y�] a =  ��a >] m+ ?Y�] a @  ��a A] m+ ?Y�] a B  ��] l+ CY�] a D  ��a E] m+ FY�] a G  ��a H] m+ IYs] a J  ��a K] m+ LYZ] a M  ��a N] m+ LYA] a O  ��a P] m+ QY(] a R  ��a S] m+ FY] a T  ��a U] m+ IY �] a V  ��a W] m+ QY �] a X  ��] l+ YY �] a Z  ��a [] m+ \Y �] a ]  ��a ^] m+ \Y �] a _  ��a `] m+ \Y |] a a  ��a b] m+ \Y c] a c  ��a d] m+ \Y J] a e  ��a f] m+ \Y 1] a g  hY #] a h �] %a i%] %_ 6%E�Y hW X  	�] %E�[OY��O���l+ jO�kE�O�a k#j  a  *j lUY hY hY h[OY��OjvE^ Oa  m*a %-E^ O `] [a a l kh ] a m-E^ O 9] [a a l kh ] a n,a o ] ] kv%E^ Y h[OY��[OY��UOjvE^ O�[a a l kh jvE^ O)] k+  E^  O)] ]  l+ pE^ Oa �*a %-a q[a (,\Z]  81E^ !O] !j j t] !a k/E^ "O a] [a a l kh )] k+ rE[a k/E^ #Z[a l/E^ $Z[a m/E^ %ZO] %a s �] "a t] %m+ uY h[OY��YjE^ &O 3] [a a l kh ] a .,k ] &kE^ &Y h[OY��O] &k/*a v-a q[a w,\Z]  81E^ 'O] 'j j  !*a a va &a w]  la  )E^ (Y ] 'a k/E^ (O�] [a a l kh a xE^ )O] j j�)] k+ rE[a k/E^ *Z[a l/E^ +Z[a m/E^ ,ZO] ,a y �] ] , |*a %-E^ O l] [a a l kh ] a m-E^ -O 5] -[a a l kh .] .a n,] ,  ] E^ )OY h[OY��O] )a z Y h[OY��Y ;*a a %a &a (] *a '] *a {] +a |a  )E^ )O�] )a }] ,m+ uY 7*a %-a q[a (,\Z] 81E^ !O] !j j ] !a k/E^ )Y hO] )a ~  f] ,a   ] ] *kv%E^ Y I*a a %a &a '] *a (] *a {] +a |a  )E^ /O�] /a �] ,m+ uO] /a �] (l �Y ] )a �] (l �Y h[OY�<Y z] &k  q)] a k/k+ rE[a k/E^ #Z[a l/E^ $Z[a m/E^ %ZOa  **a a %a &a (]  a '] #a {] $a |a  )E�UO��a �] %m+ uY hO�kE�O�a �#j  a  *j lUY hUO] jv ] ]  ] lvkv%E^ Y h[OY�O �] [a a l kh 0] 0a k/E^ 1O] 0a l/E^ 2Oa  �*a v-a q[a w,\Z] 181E^ 'O] 'j j p] 'a k/E^ 3O ]] 2[a a l kh *a %-a q[a (,\Z] 81E^ O] j j ] a k/E^ 4O] 4a �] 3l �Y h[OY��Y hU[OY�EOa  *j lUW JX � � ��&j W X  	hO] 6a � &a �_ 6%_ 6%] 5%a �a �kva �ka  �Y hO�u �q������ 0 findnickname findNickname� �
��
 �  �	�	 0 eachlineitem eachLineItem�  � ���� 0 eachlineitem eachLineItem� 0 thenickname theNickname� 0 everytextitem everyTextItem� y~��������� ������
� 
ascr
� 
txdl
� 
citm
� .corecnte****       ****
� 
cobj
�  
TEXT��  ��  � t�E�O���,FO��-E�O�j k Q��l/� +���,FO��-E�O���,FO ��l/�&E�W X  hY ���,FO ��l/�&E�W X  hY hO���,FO�v ������������� $0 extractaddresses extractAddresses�� ����� �  ������ 0 eachlineitem eachLineItem�� 0 thenickname theNickname��  � �������������� 0 eachlineitem eachLineItem�� 0 thenickname theNickname�� 0 	theoffset 	theOffset��  0 thespaceoffset theSpaceOffset�� (0 theremainingstring theRemainingString�� 0 everyaddress everyAddress� ���������������������
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
cha 
�� 
leng
�� 
TEXT
�� 
ascr
�� 
txdl
�� 
citm�� G*��� E�O�� lE�Y kE�O�[�\[Z���,�\Zi2�&E�O���,FO��-E�O���,FO�w ��%���������� 0 	fixascii3 	fixAscii3�� ����� �  ���� 0 thedata theData��  � ���������� 0 thedata theData�� 0 returnvalue returnValue�� 0 everytextitem everyTextItem�� 0 thecount theCount� ��������������
�� .sysontocTEXT       shor
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****�� 

�� 
TEXT�� 9�E�Omj  ��,FO��-E�O�j E�O�k �j  ��,FO��&E�Y hO�x ��Y���������� 80 parsestringforemailandname parseStringForEmailAndName�� ����� �  ���� 0 	thestring 	theString��  � ���������������� 0 	thestring 	theString�� 0 everytextitem everyTextItem�� 0 
namestring 
nameString�� 0 emailstring emailString�� "0 firstnamestring firstNameString��  0 lastnamestring lastNameString�� 0 eachitem eachItem� b��m��x����������������������������!
�� .ascrcmnt****      � ****��  0 stripcharacter stripCharacter
�� 
ascr
�� 
txdl
�� 
citm
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT�������%j O)��l+ E�O)��l+ E�O)��l+ E�O)��l+ E�O)��l+ E�O���,FO��-E�O�E�O�E�O�E�O�E�O ?�[a a l kh �a  �E�Y �a  �a %E�Y hO��%E�[OY��O�a  F��-E�O�j k  �a k/a &E�Y $�[a \[Zk\Za 2a &E�O�a i/a &E�Y hOa ��,FOa �%j Oa �%j Oa �%j O���mvy ��/����������  0 stripcharacter stripCharacter�� ����� �  ������ 0 	thestring 	theString�� 0 thecharacter theCharacter��  � �������� 0 	thestring 	theString�� 0 thecharacter theCharacter�� 0 everytextitem everyTextItem� ������E��
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� ���,FO��-E�O���,FO��&E�O�z ��U���������� 20 getscriptfolderlocation getScriptFolderLocation��  ��  � ������ 0 
bootvolume 
bootVolume�� 40 basepathtolibraryscripts basePathToLibraryScripts�  u����e
�� 
sdsk
�� 
TEXT�� � 	*�,�&E�UO��%E�O�{ ��l��������
�� .aevtoappnull  �   � ****��  ��  �  � o��q��
�� 
mesS
�� .sysodisAaleR        TEXT�� ���l  ascr  ��ޭ