FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Proof CMYK on display
�2007 Apple Computer, Inc.

This script matches an image from its original color space to the default CMYK profile and then back to your display's profile.
This is useful for previewing on screen what an image will look like when printed on a specific printer, a process commonly known as "soft proofing".
The profile "default CMYK profile" is one of several default space profiles ColorSync keeps track of, any of which can be set
using the ColorSync control panel.  So by changing the setting of the Default CMYK Profile popup in the ColorSync control panel,
you can change which printer this script will use as a destination when doing the soft proof.
     � 	 	L 
 P r o o f   C M Y K   o n   d i s p l a y 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 T h i s   s c r i p t   m a t c h e s   a n   i m a g e   f r o m   i t s   o r i g i n a l   c o l o r   s p a c e   t o   t h e   d e f a u l t   C M Y K   p r o f i l e   a n d   t h e n   b a c k   t o   y o u r   d i s p l a y ' s   p r o f i l e . 
 T h i s   i s   u s e f u l   f o r   p r e v i e w i n g   o n   s c r e e n   w h a t   a n   i m a g e   w i l l   l o o k   l i k e   w h e n   p r i n t e d   o n   a   s p e c i f i c   p r i n t e r ,   a   p r o c e s s   c o m m o n l y   k n o w n   a s   " s o f t   p r o o f i n g " . 
 T h e   p r o f i l e   " d e f a u l t   C M Y K   p r o f i l e "   i s   o n e   o f   s e v e r a l   d e f a u l t   s p a c e   p r o f i l e s   C o l o r S y n c   k e e p s   t r a c k   o f ,   a n y   o f   w h i c h   c a n   b e   s e t 
 u s i n g   t h e   C o l o r S y n c   c o n t r o l   p a n e l .     S o   b y   c h a n g i n g   t h e   s e t t i n g   o f   t h e   D e f a u l t   C M Y K   P r o f i l e   p o p u p   i n   t h e   C o l o r S y n c   c o n t r o l   p a n e l , 
 y o u   c a n   c h a n g e   w h i c h   p r i n t e r   t h i s   s c r i p t   w i l l   u s e   a s   a   d e s t i n a t i o n   w h e n   d o i n g   t h e   s o f t   p r o o f . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    �� ��
�� .sysodlogaskr        TEXT  m        �   � P r o o f   a n   i m a g e   t h r o u g h   t h e   c u r r e n t   C M Y K   p r o f i l e   a n d   b a c k   t o   t h e   d i s p l a y ' s   p r o f i l e .  ��        r        I   ���� 
�� .sysostdfalis    ��� null��    ��  
�� 
prmp  m    	   �      C h o o s e   a n   i m a g e  �� !��
�� 
dflc ! m   
 ��
�� afdmdesk��    o      ���� 0 somefile     "�� " I   �� #��
�� .aevtodocnull  �    alis # o    ���� 0 somefile  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     ��������  ��  ��   '  ( ) ( i     * + * I     �� ,��
�� .aevtodocnull  �    alis , o      ���� 0 draggeditems  ��   + k     � - -  . / . O    
 0 1 0 I   	������
�� .ascrnoop****      � ****��  ��   1 m      2 2�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   /  3 4 3 l   ��������  ��  ��   4  5 6 5 I   �� 7��
�� .sysodlogaskr        TEXT 7 m     8 8 � 9 9 � P r o o f   i m a g e s   t h r o u g h   t h e   c u r r e n t   C M Y K   p r o f i l e   a n d   b a c k   t o   t h e   d i s p l a y ' s   p r o f i l e ?  ��   6  : ; : l   ��������  ��  ��   ;  < = < r     > ? > I    �� @���� .0 filelistfromselection filelistFromSelection @  A�� A o    ���� 0 draggeditems  ��  ��   ? o      ���� 0 sourcefiles   =  B C B X    � D�� E D k   * } F F  G H G O  * 7 I J I I  . 6�� K��
�� .miscmvisnull���    obj  K 4   . 2�� L
�� 
cobj L o   0 1���� 0 thisfile thisFile��   J m   * + M M�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   H  N O N r   8 = P Q P c   8 ; R S R o   8 9���� 0 thisfile thisFile S m   9 :��
�� 
alis Q o      ���� 0 thisfile thisFile O  T U T l  > >��������  ��  ��   U  V W V Q   > { X Y Z X O   A h [ \ [ k   E g ] ]  ^ _ ^ r   E J ` a ` 1   E H��
�� 
CMK� a o      ���� 0 destprof destProf _  b c b r   K S d e d n   K Q f g f 1   O Q��
�� 
mPrf g 4   K O�� h
�� 
disp h m   M N����  e o      ���� 0 	proofprof 	proofProf c  i�� i I  T g�� j k
�� .synccsPInull      @ imag j o   T U���� 0 thisfile thisFile k �� l m
�� 
dPrf l o   V W���� 0 destprof destProf m �� n o
�� 
pPrf n o   X Y���� 0 	proofprof 	proofProf o �� p q
�� 
dest p o   \ ]���� 0 thisfile thisFile q �� r��
�� 
repl r m   ` a��
�� boovtrue��  ��   \ m   A B s s�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   Y R      �� t��
�� .ascrerr ****      � **** t o      ���� 
0 errmsg  ��   Z k   p { u u  v w v I  p u������
�� .miscactvnull��� ��� null��  ��   w  x�� x I  v {�� y��
�� .sysodlogaskr        TEXT y o   v w���� 
0 errmsg  ��  ��   W  z�� z l  | |��������  ��  ��  ��  �� 0 thisfile thisFile E o    ���� 0 sourcefiles   C  { | { l  � ���������  ��  ��   |  }�� } O  � � ~  ~ r   � � � � � m   � �����  � 1   � ���
�� 
qdel  m   � � � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  ��   )  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � I Creturns dragged files OR files at first level of one dragged folder    � � � � � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r �  � � � i     � � � I      �� ����� .0 filelistfromselection filelistFromSelection �  ��� � o      ���� 0 theselection  ��  ��   � k     � � �  � � � r      � � � m     ��
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
�� boovtrue � o      �� 0 	hasfolder  ��  ��  �� 0 thisitem thisItem � l    ��~�} � c     � � � o    �|�| 0 theselection   � m    �{
�{ 
list�~  �}   � m     � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   @ f � ��z�y � F   @ Q � � � l  @ K ��x�w � ?   @ K � � � l  @ I ��v�u � I  @ I�t ��s
�t .corecnte****       **** � n   @ E � � � m   C E�r
�r 
cobj � l  @ C ��q�p � c   @ C � � � o   @ A�o�o 0 theselection   � m   A B�n
�n 
list�q  �p  �s  �v  �u   � m   I J�m�m �x  �w   � o   N O�l�l 0 	hasfolder   � k   T b � �  � � � I  T _�k � �
�k .sysodlogaskr        TEXT � m   T U � � � � � N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r . � �j � �
�j 
btns � J   V Y � �  ��i � m   V W � � � � �  O K�i   � �h ��g
�h 
dflt � m   Z [�f�f �g   �  ��e � L   ` b � � m   ` a � � � � �  �e  �z  �y   �  � � � O   g � � � � Z   k � � ��d � � o   k l�c�c 0 	hasfolder   � r   o � � � � c   o  � � � l  o { ��b�a � n   o { � � � 2   y {�`
�` 
cobj � 4   o y�_ �
�_ 
cfol � l  q x ��^�] � n   q x � � � 4   t w�\ �
�\ 
cobj � m   u v�[�[  � l  q t ��Z�Y � c   q t � � � o   q r�X�X 0 theselection   � m   r s�W
�W 
list�Z  �Y  �^  �]  �b  �a   � m   { ~�V
�V 
alst � o      �U�U 0 filelist  �d   � r   � � � � � l  � � ��T�S � c   � � � � � o   � ��R�R 0 theselection   � m   � ��Q
�Q 
list�T  �S   � o      �P�P 0 filelist   � m   g h � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  ��O � L   � � � � o   � ��N�N 0 filelist  �O   �  � � � l     �M�L�K�M  �L  �K   �  � � � l     �J�I�H�J  �I  �H   �  ��G � l     �F�E�D�F  �E  �D  �G       �C � � � ��C   � �B�A�@
�B .aevtoappnull  �   � ****
�A .aevtodocnull  �    alis�@ .0 filelistfromselection filelistFromSelection � �? �>�= � ��<
�? .aevtoappnull  �   � ****�>  �=   �   � 
 �;�: �9�8�7�6�5�4
�; .sysodlogaskr        TEXT
�: 
prmp
�9 
dflc
�8 afdmdesk�7 
�6 .sysostdfalis    ��� null�5 0 somefile  
�4 .aevtodocnull  �    alis�< �j O*����� E�O�j 	 � �3 +�2�1 � ��0
�3 .aevtodocnull  �    alis�2 0 draggeditems  �1   � �/�.�-�,�+�*�/ 0 draggeditems  �. 0 sourcefiles  �- 0 thisfile thisFile�, 0 destprof destProf�+ 0 	proofprof 	proofProf�* 
0 errmsg   �  2�) 8�(�'�&�%�$ M�#�"�!� ������������
�) .ascrnoop****      � ****
�( .sysodlogaskr        TEXT�' .0 filelistfromselection filelistFromSelection
�& 
kocl
�% 
cobj
�$ .corecnte****       ****
�# .miscmvisnull���    obj 
�" 
alis
�! 
CMK�
�  
disp
� 
mPrf
� 
dPrf
� 
pPrf
� 
dest
� 
repl� 
� .synccsPInull      @ imag� 
0 errmsg  �  
� .miscactvnull��� ��� null� 
� 
qdel�0 �� *j UO�j O*�k+ E�O g�[��l kh � 
*�/j 	UO��&E�O ,� $*�,E�O*�k/�,E�O���a �a ea  UW X  *j O�j OP[OY��O� a *a ,FU � � ��� �� .0 filelistfromselection filelistFromSelection� ��   �� 0 theselection  �    ����
� 0 theselection  � 0 	hasfolder  � 0 thisitem thisItem�
 0 filelist    ��	������� �� �� ���� ���
�	 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pcls
� 
cfol
� 
cdis
� 
bool
� 
btns
�  
dflt�� 
�� .sysodlogaskr        TEXT
�� 
alst� �fE�O� 8 5��&[��l kh *�/�,� 
 *�/�,� �& eE�Y h[OY��UO��&�,j k	 ��& ���kv�k� O�Y hO�  � *��&�k/E/�-a &E�Y ��&E�UO�ascr  ��ޭ