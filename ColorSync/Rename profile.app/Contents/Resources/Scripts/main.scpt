FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
Rename profile
�2007 Apple Computer, Inc.

This script will set the internal name of a profile to be the same as its filename on disk or a string of the user's choice.
     � 	 	R 
 R e n a m e   p r o f i l e 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 T h i s   s c r i p t   w i l l   s e t   t h e   i n t e r n a l   n a m e   o f   a   p r o f i l e   t o   b e   t h e   s a m e   a s   i t s   f i l e n a m e   o n   d i s k   o r   a   s t r i n g   o f   t h e   u s e r ' s   c h o i c e . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    �� ��
�� .sysodlogaskr        TEXT  m        �   L C h a n g e   a   p r o f i l e ' s   d e s c r i p t i o n   s t r i n g .��        r        I   ���� 
�� .sysostdfalis    ��� null��    ��  
�� 
prmp  m    	   �       C h o o s e   a   p r o f i l e  �� !��
�� 
dflc ! 4   
 �� "
�� 
psxf " m     # # � $ $ 6 / L i b r a r y / C o l o r S y n c / P r o f i l e s��    o      ���� 0 somefile     %�� % I   �� &��
�� .aevtodocnull  �    alis & o    ���� 0 somefile  ��  ��     ' ( ' l     ��������  ��  ��   (  ) * ) l     ��������  ��  ��   *  + , + i     - . - I     �� /��
�� .aevtodocnull  �    alis / o      ���� 0 draggeditems  ��   . k     0 0  1 2 1 O    
 3 4 3 I   	������
�� .ascrnoop****      � ****��  ��   4 m      5 5�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   2  6 7 6 l   ��������  ��  ��   7  8 9 8 r     : ; : I    �� <���� .0 filelistfromselection filelistFromSelection <  =�� = o    ���� 0 draggeditems  ��  ��   ; o      ���� 0 sourcefiles   9  > ? > X    @�� A @ k   $ B B  C D C O  $ 1 E F E I  ( 0�� G��
�� .miscmvisnull���    obj  G 4   ( ,�� H
�� 
cobj H o   * +���� 0 thisfile thisFile��   F m   $ % I I�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   D  J K J r   2 7 L M L c   2 5 N O N o   2 3���� 0 thisfile thisFile O m   3 4��
�� 
alis M o      ���� 0 thisfile thisFile K  P Q P l  8 8��������  ��  ��   Q  R S R Q   8  T U V T k   ; � W W  X Y X O  ; E Z [ Z r   ? D \ ] \ n   ? B ^ _ ^ 1   @ B��
�� 
pnam _ o   ? @���� 0 thisfile thisFile ] o      ���� 0 filename   [ m   ; < ` `�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   Y  a b a O  F \ c d c r   J [ e f e n   J Y g h g 1   W Y��
�� 
pnam h l  J W i���� i 6  J W j k j 4  J N�� l
�� 
prof l m   L M����  k =  O V m n m 1   P R��
�� 
pLoc n o   S U���� 0 thisfile thisFile��  ��   f o      ���� 0 oldname   d m   F G o o�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   b  p q p r   ] � r s r n   ] � t u t 1   � ���
�� 
bhit u l  ] � v���� v I  ] ��� w x
�� .sysodlogaskr        TEXT w b   ] n y z y b   ] j { | { b   ] h } ~ } b   ] f  �  b   ] d � � � b   ] b � � � b   ] ` � � � m   ] ^ � � � � �  f i l e n a m e :   � o   ^ _���� 0 filename   � o   ` a��
�� 
ret  � m   b c � � � � �  d e s c r i p t i o n :   � o   d e���� 0 oldname   ~ o   f g��
�� 
ret  | o   h i��
�� 
ret  z m   j m � � � � � ` C h a n g e   d e s c r i p t i o n   s t r i n g   t o   m a t c h   t h e   f i l e n a m e ? x �� � �
�� 
btns � J   q | � �  � � � m   q t � � � � �  n o �  � � � m   t w � � � � �  o t h e r . . . �  ��� � m   w z � � � � �  f i l e n a m e��   � �� ���
�� 
dflt � m    ����� ��  ��  ��   s o      ���� 0 	thebutton 	theButton q  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � Q K theButton may instead be Cancel, so we need a separate "set" for each case    � � � � �   t h e B u t t o n   m a y   i n s t e a d   b e   C a n c e l ,   s o   w e   n e e d   a   s e p a r a t e   " s e t "   f o r   e a c h   c a s e �  � � � Z   � � � � ��� � =  � � � � � o   � ����� 0 	thebutton 	theButton � m   � � � � � � �  o t h e r . . . � k   � � � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � l  � � ����� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � H E n t e r   n e w   p r o f i l e   d e s c r i p t i o n   s t r i n g � �� ���
�� 
dtxt � o   � ����� 0 oldname  ��  ��  ��   � o      ���� 0 newname newName �  ��� � O  � � � � � r   � � � � � o   � ����� 0 newname newName � n       � � � 1   � ���
�� 
pnam � l  � � ����� � 6  � � � � � 4  � ��� �
�� 
prof � m   � �����  � =  � � � � � 1   � ���
�� 
pLoc � o   � ����� 0 thisfile thisFile��  ��   � m   � � � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  ��   �  � � � =  � � � � � o   � ����� 0 	thebutton 	theButton � m   � � � � � � �  f i l e n a m e �  ��� � k   � � � �  � � � O  � � � � � r   � � � � � o   � ����� 0 filename   � o      ���� 0 newname newName � m   � � � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  ��� � O  � � � � � r   � � � � � o   � ����� 0 newname newName � n       � � � 1   � ���
�� 
pnam � l  � � ����� � 6  � � � � � 4  � ��� �
�� 
prof � m   � �����  � =  � � � � � 1   � ���
�� 
pLoc � o   � ����� 0 thisfile thisFile��  ��   � m   � � � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��   U R      �� ���
�� .ascrerr ****      � **** � o      ���� 
0 errmsg  ��   V k   �  � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  � � ��~
� .sysodlogaskr        TEXT � o   � ��}�} 
0 errmsg  �~  ��   S  ��| � l �{�z�y�{  �z  �y  �|  �� 0 thisfile thisFile A o    �x�x 0 sourcefiles   ?  � � � l �w�v�u�w  �v  �u   �  ��t � O  � � � r   � � � m  �s�s  � 1  �r
�r 
qdel � m  	 � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  �t   ,  � � � l     �q�p�o�q  �p  �o   �  � � � l     �n�m�l�n  �m  �l   �  � � � l     �k � ��k   � I Creturns dragged files OR files at first level of one dragged folder    � � � � � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r �  � � � i     �  � I      �j�i�j .0 filelistfromselection filelistFromSelection �h o      �g�g 0 theselection  �h  �i    k     �  r      m     �f
�f boovfals o      �e�e 0 	hasfolder   	 O    ?

 X    >�d Z    9�c�b G    / l   "�a�` =   " n      1     �_
�_ 
pcls 4    �^
�^ 
cobj o    �]�] 0 thisitem thisItem m     !�\
�\ 
cfol�a  �`   l  % -�[�Z =  % - n   % + 1   ) +�Y
�Y 
pcls 4   % )�X
�X 
cobj o   ' (�W�W 0 thisitem thisItem m   + ,�V
�V 
cdis�[  �Z   r   2 5 m   2 3�U
�U boovtrue o      �T�T 0 	hasfolder  �c  �b  �d 0 thisitem thisItem l    �S�R  c    !"! o    �Q�Q 0 theselection  " m    �P
�P 
list�S  �R   m    ##�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  	 $%$ Z   @ f&'�O�N& F   @ Q()( l  @ K*�M�L* ?   @ K+,+ l  @ I-�K�J- I  @ I�I.�H
�I .corecnte****       ****. n   @ E/0/ m   C E�G
�G 
cobj0 l  @ C1�F�E1 c   @ C232 o   @ A�D�D 0 theselection  3 m   A B�C
�C 
list�F  �E  �H  �K  �J  , m   I J�B�B �M  �L  ) o   N O�A�A 0 	hasfolder  ' k   T b44 565 I  T _�@78
�@ .sysodlogaskr        TEXT7 m   T U99 �:: N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r .8 �?;<
�? 
btns; J   V Y== >�>> m   V W?? �@@  O K�>  < �=A�<
�= 
dfltA m   Z [�;�; �<  6 B�:B L   ` bCC m   ` aDD �EE  �:  �O  �N  % FGF O   g �HIH Z   k �JK�9LJ o   k l�8�8 0 	hasfolder  K r   o �MNM c   o OPO l  o {Q�7�6Q n   o {RSR 2   y {�5
�5 
cobjS 4   o y�4T
�4 
cfolT l  q xU�3�2U n   q xVWV 4   t w�1X
�1 
cobjX m   u v�0�0 W l  q tY�/�.Y c   q tZ[Z o   q r�-�- 0 theselection  [ m   r s�,
�, 
list�/  �.  �3  �2  �7  �6  P m   { ~�+
�+ 
alstN o      �*�* 0 filelist  �9  L r   � �\]\ l  � �^�)�(^ c   � �_`_ o   � ��'�' 0 theselection  ` m   � ��&
�& 
list�)  �(  ] o      �%�% 0 filelist  I m   g haa�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  G b�$b L   � �cc o   � ��#�# 0 filelist  �$   � ded l     �"�!� �"  �!  �   e fgf l     ����  �  �  g h�h l     ����  �  �  �       �ijkl�  i ���
� .aevtoappnull  �   � ****
� .aevtodocnull  �    alis� .0 filelistfromselection filelistFromSelectionj � ��mn�
� .aevtoappnull  �   � ****�  �  m  n  �� �� #���
�	
� .sysodlogaskr        TEXT
� 
prmp
� 
dflc
� 
psxf� 
� .sysostdfalis    ��� null�
 0 somefile  
�	 .aevtodocnull  �    alis� �j O*���)��/� E�O�j 
k � .��op�
� .aevtodocnull  �    alis� 0 draggeditems  �  o ����� ������� 0 draggeditems  � 0 sourcefiles  � 0 thisfile thisFile� 0 filename  �  0 oldname  �� 0 	thebutton 	theButton�� 0 newname newName�� 
0 errmsg  p # 5���������� I��������q�� ��� � ��� � � ��������� � ����� �����������
�� .ascrnoop****      � ****�� .0 filelistfromselection filelistFromSelection
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .miscmvisnull���    obj 
�� 
alis
�� 
pnam
�� 
profq  
�� 
pLoc
�� 
ret 
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit
�� 
dtxt
�� 
ttxt�� 
0 errmsg  ��  
�� .miscactvnull��� ��� null�� 
�� 
qdel�� *j UO*�k+ E�O �[��l kh � 
*�/j UO��&E�O �� ��,E�UO� *�k/�[�,\Z�81�,E�UO��%�%�%�%�%�%a %a a a a mva ma  a ,E�O�a   -a a �l a ,E�O� �*�k/�[�,\Z�81�,FUY -�a   $� �E�UO� �*�k/�[�,\Z�81�,FUY hOPW X  *j  O�j OP[OY�O� a !*a ",FUl �� ����rs���� .0 filelistfromselection filelistFromSelection�� ��t�� t  ���� 0 theselection  ��  r ���������� 0 theselection  �� 0 	hasfolder  �� 0 thisitem thisItem�� 0 filelist  s #����������������9��?������D��
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcls
�� 
cfol
�� 
cdis
�� 
bool
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
alst�� �fE�O� 8 5��&[��l kh *�/�,� 
 *�/�,� �& eE�Y h[OY��UO��&�,j k	 ��& ���kv�k� O�Y hO�  � *��&�k/E/�-a &E�Y ��&E�UO� ascr  ��ޭ