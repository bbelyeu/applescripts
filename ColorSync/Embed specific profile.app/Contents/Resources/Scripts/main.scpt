FasdUAS 1.101.10   ��   ��    k             l      ��  ��   f`
Embed specific profile
�2007 Apple Computer, Inc.

Here's an example of using a specific profile installed in the ColorSync Profiles folder.
You can easily modify this script to make it embed any other installed profile
by replacing the string "Generic RGB Profile" with the name of the profile you want to use.

Notice we're referring to the profile as "profile" something, not something "as alias".
This means we're referring to it as a profile object, which would be
one of the profiles currently installed in the ColorSync Profiles folder.
The object name is the internal description name of the profile, not necessarily
the same as the file name.  Use the script "Show profile info" to determine a profile's
internal description, and use the script "Rename profile" to change it.

A profile has to be in the profiles folder, it can't just be on the desktop.
     � 	 	� 
 E m b e d   s p e c i f i c   p r o f i l e 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 H e r e ' s   a n   e x a m p l e   o f   u s i n g   a   s p e c i f i c   p r o f i l e   i n s t a l l e d   i n   t h e   C o l o r S y n c   P r o f i l e s   f o l d e r . 
 Y o u   c a n   e a s i l y   m o d i f y   t h i s   s c r i p t   t o   m a k e   i t   e m b e d   a n y   o t h e r   i n s t a l l e d   p r o f i l e 
 b y   r e p l a c i n g   t h e   s t r i n g   " G e n e r i c   R G B   P r o f i l e "   w i t h   t h e   n a m e   o f   t h e   p r o f i l e   y o u   w a n t   t o   u s e . 
 
 N o t i c e   w e ' r e   r e f e r r i n g   t o   t h e   p r o f i l e   a s   " p r o f i l e "   s o m e t h i n g ,   n o t   s o m e t h i n g   " a s   a l i a s " . 
 T h i s   m e a n s   w e ' r e   r e f e r r i n g   t o   i t   a s   a   p r o f i l e   o b j e c t ,   w h i c h   w o u l d   b e 
 o n e   o f   t h e   p r o f i l e s   c u r r e n t l y   i n s t a l l e d   i n   t h e   C o l o r S y n c   P r o f i l e s   f o l d e r . 
 T h e   o b j e c t   n a m e   i s   t h e   i n t e r n a l   d e s c r i p t i o n   n a m e   o f   t h e   p r o f i l e ,   n o t   n e c e s s a r i l y 
 t h e   s a m e   a s   t h e   f i l e   n a m e .     U s e   t h e   s c r i p t   " S h o w   p r o f i l e   i n f o "   t o   d e t e r m i n e   a   p r o f i l e ' s 
 i n t e r n a l   d e s c r i p t i o n ,   a n d   u s e   t h e   s c r i p t   " R e n a m e   p r o f i l e "   t o   c h a n g e   i t . 
 
 A   p r o f i l e   h a s   t o   b e   i n   t h e   p r o f i l e s   f o l d e r ,   i t   c a n ' t   j u s t   b e   o n   t h e   d e s k t o p . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    �� ��
�� .sysodlogaskr        TEXT  m        �   � E m b e d   t h e   G e n e r i c   R G B   P r o f i l e   i n t o   a n   i m a g e .     M o d i f y   t h e   s c r i p t   t o   e m b e d   a n o t h e r   p r o f i l e   i n s t e a d .��        r        I   ���� 
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
�� .aevtodocnull  �    alis - o      ���� 0 draggeditems  ��   , k     w . .  / 0 / O    
 1 2 1 I   	������
�� .ascrnoop****      � ****��  ��   2 m      3 3�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   0  4 5 4 l   ��������  ��  ��   5  6 7 6 I   �� 8��
�� .sysodlogaskr        TEXT 8 m     9 9 � : : T E m b e d   t h e   G e n e r i c   R G B   P r o f i l e   i n t o   i m a g e s ?��   7  ; < ; l   ��������  ��  ��   <  = > = r     ? @ ? I    �� A���� .0 filelistfromselection filelistFromSelection A  B�� B o    ���� 0 draggeditems  ��  ��   @ o      ���� 0 sourcefiles   >  C D C X    h E�� F E k   * c G G  H I H O  * 7 J K J I  . 6�� L��
�� .miscmvisnull���    obj  L 4   . 2�� M
�� 
cobj M o   0 1���� 0 thisfile thisFile��   K m   * + N N�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   I  O P O r   8 = Q R Q c   8 ; S T S o   8 9���� 0 thisfile thisFile T m   9 :��
�� 
alis R o      ���� 0 thisfile thisFile P  U V U l  > >��������  ��  ��   V  W�� W Q   > c X Y Z X O  A P [ \ [ I  E O�� ] ^
�� .synccsEInull      @ imag ] o   E F���� 0 thisfile thisFile ^ �� _��
�� 
ePrf _ 4   G K�� `
�� 
prof ` m   I J a a � b b & G e n e r i c   R G B   P r o f i l e��   \ m   A B c c�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   Y R      �� d��
�� .ascrerr ****      � **** d o      ���� 
0 errmsg  ��   Z k   X c e e  f g f I  X ]������
�� .miscactvnull��� ��� null��  ��   g  h�� h I  ^ c�� i��
�� .sysodlogaskr        TEXT i o   ^ _���� 
0 errmsg  ��  ��  ��  �� 0 thisfile thisFile F o    ���� 0 sourcefiles   D  j k j l  i i��������  ��  ��   k  l�� l O  i w m n m r   m v o p o m   m p����  p 1   p u��
�� 
qdel n m   i j q q�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  ��   *  r s r l     ��������  ��  ��   s  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x I Creturns dragged files OR files at first level of one dragged folder    y � z z � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r w  { | { i     } ~ } I      �� ���� .0 filelistfromselection filelistFromSelection   ��� � o      ���� 0 theselection  ��  ��   ~ k     � � �  � � � r      � � � m     ��
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
�� boovtrue � o      ���� 0 	hasfolder  ��  ��  �� 0 thisitem thisItem � l    ����� � c     � � � o    ���� 0 theselection   � m    ��
�� 
list��  ��   � m     � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   @ f � ����� � F   @ Q � � � l  @ K ����� � ?   @ K � � � l  @ I ����� � I  @ I�� ���
�� .corecnte****       **** � n   @ E � � � m   C E��
�� 
cobj � l  @ C ���~ � c   @ C � � � o   @ A�}�} 0 theselection   � m   A B�|
�| 
list�  �~  ��  ��  ��   � m   I J�{�{ ��  ��   � o   N O�z�z 0 	hasfolder   � k   T b � �  � � � I  T _�y � �
�y .sysodlogaskr        TEXT � m   T U � � � � � N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r . � �x � �
�x 
btns � J   V Y � �  ��w � m   V W � � � � �  O K�w   � �v ��u
�v 
dflt � m   Z [�t�t �u   �  ��s � L   ` b � � m   ` a � � � � �  �s  ��  ��   �  � � � O   g � � � � Z   k � � ��r � � o   k l�q�q 0 	hasfolder   � r   o � � � � c   o  � � � l  o { ��p�o � n   o { � � � 2   y {�n
�n 
cobj � 4   o y�m �
�m 
cfol � l  q x ��l�k � n   q x � � � 4   t w�j �
�j 
cobj � m   u v�i�i  � l  q t ��h�g � c   q t � � � o   q r�f�f 0 theselection   � m   r s�e
�e 
list�h  �g  �l  �k  �p  �o   � m   { ~�d
�d 
alst � o      �c�c 0 filelist  �r   � r   � � � � � l  � � ��b�a � c   � � � � � o   � ��`�` 0 theselection   � m   � ��_
�_ 
list�b  �a   � o      �^�^ 0 filelist   � m   g h � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  ��] � L   � � � � o   � ��\�\ 0 filelist  �]   |  � � � l     �[�Z�Y�[  �Z  �Y   �  � � � l     �X�W�V�X  �W  �V   �  � � � l     �U�T�S�U  �T  �S   �  ��R � l     �Q�P�O�Q  �P  �O  �R       �N � � � ��N   � �M�L�K
�M .aevtoappnull  �   � ****
�L .aevtodocnull  �    alis�K .0 filelistfromselection filelistFromSelection � �J �I�H � ��G
�J .aevtoappnull  �   � ****�I  �H   �   �  �F�E �D�C�B�A�@�?�>
�F .sysodlogaskr        TEXT
�E 
prmp
�D 
dflc
�C afdrdesk
�B .earsffdralis        afdr�A 
�@ .sysostdfalis    ��� null�? 0 somefile  
�> .aevtodocnull  �    alis�G �j O*����j � E�O�j 
 � �= ,�<�; � ��:
�= .aevtodocnull  �    alis�< 0 draggeditems  �;   � �9�8�7�6�9 0 draggeditems  �8 0 sourcefiles  �7 0 thisfile thisFile�6 
0 errmsg   �  3�5 9�4�3�2�1�0 N�/�.�-�, a�+�*�)�(�'�&
�5 .ascrnoop****      � ****
�4 .sysodlogaskr        TEXT�3 .0 filelistfromselection filelistFromSelection
�2 
kocl
�1 
cobj
�0 .corecnte****       ****
�/ .miscmvisnull���    obj 
�. 
alis
�- 
ePrf
�, 
prof
�+ .synccsEInull      @ imag�* 
0 errmsg  �)  
�( .miscactvnull��� ��� null�' 
�& 
qdel�: x� *j UO�j O*�k+ E�O M�[��l kh � 
*�/j 	UO��&E�O � ��*��/l UW X  *j O�j [OY��O� a *a ,FU � �% ~�$�# � ��"�% .0 filelistfromselection filelistFromSelection�$ �! ��!  �  � �  0 theselection  �#   � ����� 0 theselection  � 0 	hasfolder  � 0 thisitem thisItem� 0 filelist   �  ��������� �� ���� ��
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pcls
� 
cfol
� 
cdis
� 
bool
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
alst�" �fE�O� 8 5��&[��l kh *�/�,� 
 *�/�,� �& eE�Y h[OY��UO��&�,j k	 ��& ���kv�k� O�Y hO�  � *��&�k/E/�-a &E�Y ��&E�UO� ascr  ��ޭ