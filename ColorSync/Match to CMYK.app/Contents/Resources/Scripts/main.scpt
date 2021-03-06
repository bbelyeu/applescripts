FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Match to CMYK
�2007 Apple Computer, Inc.

This  script matches images to your default CMYK profile which is set in the ColorSync control panel.
Notice no source profile is specified, so ColorSync will use a default space profile appropriate to the image's color space,
meaning either the default RGB profile, the default CMYK profile, the default LAB profile, or the default XYZ profile,
depending on the original color space of the image.

This script is most useful if you use the ColorSync control panel to set your default CMYK profile
to whatever CMYK printer you use.  Then drag an image onto the script and it will match the image to that printer.
     � 	 	  
 M a t c h   t o   C M Y K 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 T h i s     s c r i p t   m a t c h e s   i m a g e s   t o   y o u r   d e f a u l t   C M Y K   p r o f i l e   w h i c h   i s   s e t   i n   t h e   C o l o r S y n c   c o n t r o l   p a n e l . 
 N o t i c e   n o   s o u r c e   p r o f i l e   i s   s p e c i f i e d ,   s o   C o l o r S y n c   w i l l   u s e   a   d e f a u l t   s p a c e   p r o f i l e   a p p r o p r i a t e   t o   t h e   i m a g e ' s   c o l o r   s p a c e , 
 m e a n i n g   e i t h e r   t h e   d e f a u l t   R G B   p r o f i l e ,   t h e   d e f a u l t   C M Y K   p r o f i l e ,   t h e   d e f a u l t   L A B   p r o f i l e ,   o r   t h e   d e f a u l t   X Y Z   p r o f i l e , 
 d e p e n d i n g   o n   t h e   o r i g i n a l   c o l o r   s p a c e   o f   t h e   i m a g e . 
 
 T h i s   s c r i p t   i s   m o s t   u s e f u l   i f   y o u   u s e   t h e   C o l o r S y n c   c o n t r o l   p a n e l   t o   s e t   y o u r   d e f a u l t   C M Y K   p r o f i l e 
 t o   w h a t e v e r   C M Y K   p r i n t e r   y o u   u s e .     T h e n   d r a g   a n   i m a g e   o n t o   t h e   s c r i p t   a n d   i t   w i l l   m a t c h   t h e   i m a g e   t o   t h a t   p r i n t e r . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    �� ��
�� .sysodlogaskr        TEXT  m        �   @ M a t c h   i m a g e   t o   t h e   C M Y K   p r o f i l e .��        r        I   ���� 
�� .sysostdfalis    ��� null��    ��  
�� 
prmp  m    	   �      C h o o s e   a n   i m a g e  �� !��
�� 
dflc ! I  
 �� "��
�� .earsffdralis        afdr " m   
 ��
�� afdrdesk��  ��    o      ���� 0 somefile     #�� # I   �� $��
�� .aevtodocnull  �    alis $ o    ���� 0 somefile  ��  ��     % & % l     ��������  ��  ��   &  ' ( ' l     ��������  ��  ��   (  ) * ) i     + , + I     �� -��
�� .aevtodocnull  �    alis - o      ���� 0 draggeditems  ��   , k     � . .  / 0 / O    
 1 2 1 I   	������
�� .ascrnoop****      � ****��  ��   2 m      3 3�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   0  4 5 4 l   ��������  ��  ��   5  6 7 6 I   �� 8��
�� .sysodlogaskr        TEXT 8 m     9 9 � : : R M a t c h   i m a g e s   t o   t h e   d e f a u l t   C M Y K   p r o f i l e ?��   7  ; < ; l   ��������  ��  ��   <  = > = r     ? @ ? I    �� A���� .0 filelistfromselection filelistFromSelection A  B�� B o    ���� 0 draggeditems  ��  ��   @ o      ���� 0 sourcefiles   >  C D C X    q E�� F E k   * l G G  H I H O  * 7 J K J I  . 6�� L��
�� .miscmvisnull���    obj  L 4   . 2�� M
�� 
cobj M o   0 1���� 0 thisfile thisFile��   K m   * + N N�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   I  O P O r   8 = Q R Q c   8 ; S T S o   8 9���� 0 thisfile thisFile T m   9 :��
�� 
alis R o      ���� 0 thisfile thisFile P  U V U l  > >��������  ��  ��   V  W X W O   > j Y Z Y k   B i [ [  \ ] \ r   B G ^ _ ^ 1   B E��
�� 
CMK� _ o      ���� 0 	matchprof 	matchProf ]  `�� ` Q   H i a b c a I  K V�� d e
�� .synccsMInull      @ imag d o   K L���� 0 thisfile thisFile e �� f g
�� 
dPrf f o   M N���� 0 	matchprof 	matchProf g �� h i
�� 
dest h o   O P���� 0 thisfile thisFile i �� j��
�� 
repl j m   Q R��
�� boovtrue��   b R      �� k��
�� .ascrerr ****      � **** k o      ���� 
0 errmsg  ��   c k   ^ i l l  m n m I  ^ c������
�� .miscactvnull��� ��� null��  ��   n  o�� o I  d i�� p��
�� .sysodlogaskr        TEXT p o   d e���� 
0 errmsg  ��  ��  ��   Z m   > ? q q�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   X  r�� r l  k k��������  ��  ��  ��  �� 0 thisfile thisFile F o    ���� 0 sourcefiles   D  s t s l  r r��������  ��  ��   t  u�� u O  r � v w v r   v  x y x m   v y����  y 1   y ~��
�� 
qdel w m   r s z z�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  ��   *  { | { l     ��������  ��  ��   |  } ~ } l     ��������  ��  ��   ~   �  l     �� � ���   � I Creturns dragged files OR files at first level of one dragged folder    � � � � � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r �  � � � i     � � � I      �� ����� .0 filelistfromselection filelistFromSelection �  ��� � o      ���� 0 theselection  ��  ��   � k     � � �  � � � r      � � � m     ��
�� boovfals � o      ���� 0 	hasfolder   �  � � � O    ? � � � X    > ��� � � Z    9 � ����� � G    / � � � l   " ����� � =   " � � � n      � � � 1     ��
�� 
pcls � 4    �� �
�� 
cobj � o    ���� 0 thisitem thisItem � m     !��
�� 
cfol��  ��   � l  % - ����� � =  % - � � � n   % + � � � 1   ) +��
�� 
pcls � 4   % )�� �
�� 
cobj � o   ' (���� 0 thisitem thisItem � m   + ,��
�� 
cdis��  ��   � r   2 5 � � � m   2 3��
�� boovtrue � o      ���� 0 	hasfolder  ��  ��  �� 0 thisitem thisItem � l    ����� � c     � � � o    ���� 0 theselection   � m    �
� 
list��  ��   � m     � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   @ f � ��~�} � F   @ Q � � � l  @ K ��|�{ � ?   @ K � � � l  @ I ��z�y � I  @ I�x ��w
�x .corecnte****       **** � n   @ E � � � m   C E�v
�v 
cobj � l  @ C ��u�t � c   @ C � � � o   @ A�s�s 0 theselection   � m   A B�r
�r 
list�u  �t  �w  �z  �y   � m   I J�q�q �|  �{   � o   N O�p�p 0 	hasfolder   � k   T b � �  � � � I  T _�o � �
�o .sysodlogaskr        TEXT � m   T U � � � � � N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r . � �n � �
�n 
btns � J   V Y � �  ��m � m   V W � � � � �  O K�m   � �l ��k
�l 
dflt � m   Z [�j�j �k   �  ��i � L   ` b � � m   ` a � � � � �  �i  �~  �}   �  � � � O   g � � � � Z   k � � ��h � � o   k l�g�g 0 	hasfolder   � r   o � � � � c   o  � � � l  o { ��f�e � n   o { � � � 2   y {�d
�d 
cobj � 4   o y�c �
�c 
cfol � l  q x ��b�a � n   q x � � � 4   t w�` �
�` 
cobj � m   u v�_�_  � l  q t ��^�] � c   q t � � � o   q r�\�\ 0 theselection   � m   r s�[
�[ 
list�^  �]  �b  �a  �f  �e   � m   { ~�Z
�Z 
alst � o      �Y�Y 0 filelist  �h   � r   � � � � � l  � � ��X�W � c   � � � � � o   � ��V�V 0 theselection   � m   � ��U
�U 
list�X  �W   � o      �T�T 0 filelist   � m   g h � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  ��S � L   � � � � o   � ��R�R 0 filelist  �S   �  � � � l     �Q�P�O�Q  �P  �O   �  � � � l     �N�M�L�N  �M  �L   �  ��K � l     �J�I�H�J  �I  �H  �K       �G � � � ��G   � �F�E�D
�F .aevtoappnull  �   � ****
�E .aevtodocnull  �    alis�D .0 filelistfromselection filelistFromSelection � �C �B�A � ��@
�C .aevtoappnull  �   � ****�B  �A   �   �  �?�> �=�<�;�:�9�8�7
�? .sysodlogaskr        TEXT
�> 
prmp
�= 
dflc
�< afdrdesk
�; .earsffdralis        afdr�: 
�9 .sysostdfalis    ��� null�8 0 somefile  
�7 .aevtodocnull  �    alis�@ �j O*����j � E�O�j 
 � �6 ,�5�4 � ��3
�6 .aevtodocnull  �    alis�5 0 draggeditems  �4   � �2�1�0�/�.�2 0 draggeditems  �1 0 sourcefiles  �0 0 thisfile thisFile�/ 0 	matchprof 	matchProf�. 
0 errmsg   �  3�- 9�,�+�*�)�( N�'�&�%�$�#�"�!� �����
�- .ascrnoop****      � ****
�, .sysodlogaskr        TEXT�+ .0 filelistfromselection filelistFromSelection
�* 
kocl
�) 
cobj
�( .corecnte****       ****
�' .miscmvisnull���    obj 
�& 
alis
�% 
CMK�
�$ 
dPrf
�# 
dest
�" 
repl�! 
�  .synccsMInull      @ imag� 
0 errmsg  �  
� .miscactvnull��� ��� null� 
� 
qdel�3 �� *j UO�j O*�k+ E�O V�[��l kh � 
*�/j 	UO��&E�O� )*�,E�O �����e� W X  *j O�j UOP[OY��O� a *a ,FU � � ��� � ��� .0 filelistfromselection filelistFromSelection� � ��  �  �� 0 theselection  �   � ����� 0 theselection  � 0 	hasfolder  � 0 thisitem thisItem� 0 filelist   �  ��������
�	 �� ���� ��
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pcls
� 
cfol
�
 
cdis
�	 
bool
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
alst� �fE�O� 8 5��&[��l kh *�/�,� 
 *�/�,� �& eE�Y h[OY��UO��&�,j k	 ��& ���kv�k� O�Y hO�  � *��&�k/E/�-a &E�Y ��&E�UO� ascr  ��ޭ