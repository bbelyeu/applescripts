FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
Remove profile from image
�2007 Apple Computer, Inc.

Script will remove embedded profiles, remove chromaticity and gamma tags from the PNG dictionary, and reset the ExifColorSpace tag in an image.
     � 	 	� 
 R e m o v e   p r o f i l e   f r o m   i m a g e 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 S c r i p t   w i l l   r e m o v e   e m b e d d e d   p r o f i l e s ,   r e m o v e   c h r o m a t i c i t y   a n d   g a m m a   t a g s   f r o m   t h e   P N G   d i c t i o n a r y ,   a n d   r e s e t   t h e   E x i f C o l o r S p a c e   t a g   i n   a n   i m a g e . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    �� ��
�� .sysodlogaskr        TEXT  m        �   � R e m o v e   e m b e d d e d   p r o f i l e   a n d   c o l o r   m a n a g e m e n t   p r o p e r t i e s   f r o m   a n   i m a g e .��        r        I   ���� 
�� .sysostdfalis    ��� null��    ��  
�� 
prmp  m    	   �      C h o o s e   a n   i m a g e  �� !��
�� 
dflc ! I  
 �� "��
�� .earsffdralis        afdr " m   
 ��
�� afdmdesk��  ��    o      ���� 0 somefile     #�� # I   �� $��
�� .aevtodocnull  �    alis $ o    ���� 0 somefile  ��  ��     % & % l     ��������  ��  ��   &  ' ( ' l     ��������  ��  ��   (  ) * ) i     + , + I     �� -��
�� .aevtodocnull  �    alis - o      ���� 0 draggeditems  ��   , k     � . .  / 0 / O    
 1 2 1 I   	������
�� .ascrnoop****      � ****��  ��   2 m      3 3�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   0  4 5 4 l   ��������  ��  ��   5  6 7 6 I   �� 8��
�� .sysodlogaskr        TEXT 8 m     9 9 � : : � R e m o v e   e m b e d d e d   p r o f i l e   a n d   c o l o r   m a n a g e m e n t   p r o p e r t i e s   f r o m   i m a g e s ?��   7  ; < ; l   ��������  ��  ��   <  = > = r     ? @ ? I    �� A���� .0 filelistfromselection filelistFromSelection A  B�� B o    ���� 0 draggeditems  ��  ��   @ o      ���� 0 sourcefiles   >  C D C X    r E�� F E k   * m G G  H I H O  * 7 J K J I  . 6�� L��
�� .miscmvisnull���    obj  L 4   . 2�� M
�� 
cobj M o   0 1���� 0 thisfile thisFile��   K m   * + N N�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   I  O P O r   8 = Q R Q c   8 ; S T S o   8 9���� 0 thisfile thisFile T m   9 :��
�� 
alis R o      ���� 0 thisfile thisFile P  U V U l  > >��������  ��  ��   V  W X W Q   > k Y Z [ Y k   A X \ \  ] ^ ] l  A A�� _ `��   _ 5 / ColorSyncScripting can only remove the profile    ` � a a ^   C o l o r S y n c S c r i p t i n g   c a n   o n l y   r e m o v e   t h e   p r o f i l e ^  b c b l  A A�� d e��   d ? 9tell application "ColorSyncScripting" to unembed thisFile    e � f f r t e l l   a p p l i c a t i o n   " C o l o r S y n c S c r i p t i n g "   t o   u n e m b e d   t h i s F i l e c  g h g l  A A��������  ��  ��   h  i j i l  A A�� k l��   k O I sips can delete the profile and remove Exif color management information    l � m m �   s i p s   c a n   d e l e t e   t h e   p r o f i l e   a n d   r e m o v e   E x i f   c o l o r   m a n a g e m e n t   i n f o r m a t i o n j  n o n r   A H p q p n   A F r s r 1   D F��
�� 
strq s n   A D t u t 1   B D��
�� 
psxp u o   A B���� 0 thisfile thisFile q o      ���� 0 fileposixpath filePosixPath o  v w v r   I P x y x c   I N z { z l  I L |���� | b   I L } ~ } m   I J   � � � d s i p s   - d   p r o f i l e   - - d e l e t e C o l o r M a n a g e m e n t P r o p e r t i e s   ~ o   J K���� 0 fileposixpath filePosixPath��  ��   { m   L M��
�� 
TEXT y o      ���� 0 cmdline   w  � � � I  Q V�� ���
�� .sysoexecTEXT���     TEXT � o   Q R���� 0 cmdline  ��   �  ��� � l  W W��������  ��  ��  ��   Z R      �� ���
�� .ascrerr ****      � **** � o      ���� 
0 errmsg  ��   [ k   ` k � �  � � � I  ` e������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  f k�� ���
�� .sysodlogaskr        TEXT � o   f g���� 
0 errmsg  ��  ��   X  ��� � l  l l��������  ��  ��  ��  �� 0 thisfile thisFile F o    ���� 0 sourcefiles   D  � � � l  s s��������  ��  ��   �  ��� � O  s � � � � r   w � � � � m   w z����  � 1   z ��
�� 
qdel � m   s t � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  ��   *  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � I Creturns dragged files OR files at first level of one dragged folder    � � � � � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r �  � � � i     � � � I      �� ����� .0 filelistfromselection filelistFromSelection �  ��� � o      ���� 0 theselection  ��  ��   � k     � � �  � � � r      � � � m     ��
�� boovfals � o      ���� 0 	hasfolder   �  � � � O    ? � � � X    > ��� � � Z    9 � ����� � G    / � � � l   " ����� � =   " � � � n      � � � 1     ��
�� 
pcls � 4    �� �
�� 
cobj � o    ���� 0 thisitem thisItem � m     !��
�� 
cfol��  ��   � l  % - ���� � =  % - � � � n   % + � � � 1   ) +�~
�~ 
pcls � 4   % )�} �
�} 
cobj � o   ' (�|�| 0 thisitem thisItem � m   + ,�{
�{ 
cdis��  �   � r   2 5 � � � m   2 3�z
�z boovtrue � o      �y�y 0 	hasfolder  ��  ��  �� 0 thisitem thisItem � l    ��x�w � c     � � � o    �v�v 0 theselection   � m    �u
�u 
list�x  �w   � m     � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   @ f � ��t�s � F   @ Q � � � l  @ K ��r�q � ?   @ K � � � l  @ I ��p�o � I  @ I�n ��m
�n .corecnte****       **** � n   @ E � � � m   C E�l
�l 
cobj � l  @ C ��k�j � c   @ C � � � o   @ A�i�i 0 theselection   � m   A B�h
�h 
list�k  �j  �m  �p  �o   � m   I J�g�g �r  �q   � o   N O�f�f 0 	hasfolder   � k   T b � �  � � � I  T _�e � �
�e .sysodlogaskr        TEXT � m   T U � � � � � N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r . � �d � �
�d 
btns � J   V Y � �  ��c � m   V W � � � � �  O K�c   � �b ��a
�b 
dflt � m   Z [�`�` �a   �  ��_ � L   ` b � � m   ` a � � � � �  �_  �t  �s   �  � � � O   g � � � � Z   k � � ��^ � � o   k l�]�] 0 	hasfolder   � r   o � � � � c   o  � � � l  o { ��\�[ � n   o { � � � 2   y {�Z
�Z 
cobj � 4   o y�Y �
�Y 
cfol � l  q x ��X�W � n   q x � � � 4   t w�V �
�V 
cobj � m   u v�U�U  � l  q t ��T�S � c   q t � � � o   q r�R�R 0 theselection   � m   r s�Q
�Q 
list�T  �S  �X  �W  �\  �[   � m   { ~�P
�P 
alst � o      �O�O 0 filelist  �^   � r   � � � � � l  � � ��N�M � c   � � �  � o   � ��L�L 0 theselection    m   � ��K
�K 
list�N  �M   � o      �J�J 0 filelist   � m   g h�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   � �I L   � � o   � ��H�H 0 filelist  �I   �  l     �G�F�E�G  �F  �E    l     �D�C�B�D  �C  �B   �A l     �@�?�>�@  �?  �>  �A       �=	
�=  	 �<�;�:
�< .aevtoappnull  �   � ****
�; .aevtodocnull  �    alis�: .0 filelistfromselection filelistFromSelection
 �9 �8�7�6
�9 .aevtoappnull  �   � ****�8  �7      �5�4 �3�2�1�0�/�.�-
�5 .sysodlogaskr        TEXT
�4 
prmp
�3 
dflc
�2 afdmdesk
�1 .earsffdralis        afdr�0 
�/ .sysostdfalis    ��� null�. 0 somefile  
�- .aevtodocnull  �    alis�6 �j O*����j � E�O�j 
 �, ,�+�*�)
�, .aevtodocnull  �    alis�+ 0 draggeditems  �*   �(�'�&�%�$�#�( 0 draggeditems  �' 0 sourcefiles  �& 0 thisfile thisFile�% 0 fileposixpath filePosixPath�$ 0 cmdline  �# 
0 errmsg    3�" 9�!� ��� N���� �������
�" .ascrnoop****      � ****
�! .sysodlogaskr        TEXT�  .0 filelistfromselection filelistFromSelection
� 
kocl
� 
cobj
� .corecnte****       ****
� .miscmvisnull���    obj 
� 
alis
� 
psxp
� 
strq
� 
TEXT
� .sysoexecTEXT���     TEXT� 
0 errmsg  �  
� .miscactvnull��� ��� null� 
� 
qdel�) �� *j UO�j O*�k+ E�O W�[��l kh � 
*�/j 	UO��&E�O ��,�,E�O��%�&E�O�j OPW X  *j O�j OP[OY��O� a *a ,FU � ����� .0 filelistfromselection filelistFromSelection� ��   �� 0 theselection  �   ��
�	�� 0 theselection  �
 0 	hasfolder  �	 0 thisitem thisItem� 0 filelist    ���������  ��� ������� ���
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pcls
� 
cfol
� 
cdis
�  
bool
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
alst� �fE�O� 8 5��&[��l kh *�/�,� 
 *�/�,� �& eE�Y h[OY��UO��&�,j k	 ��& ���kv�k� O�Y hO�  � *��&�k/E/�-a &E�Y ��&E�UO� ascr  ��ޭ