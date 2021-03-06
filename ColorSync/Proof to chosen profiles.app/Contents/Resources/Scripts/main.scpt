FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Proof to chosen profiles
�2007 Apple Computer, Inc.

A simple but useful script that proofs images based on profiles chosen by the user at runtime.  
To preview what a file would look like in CMYK, choose RGB for the source,
CMYK for the destination, and RGB for the proof.
     � 	 	& 
 P r o o f   t o   c h o s e n   p r o f i l e s 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 A   s i m p l e   b u t   u s e f u l   s c r i p t   t h a t   p r o o f s   i m a g e s   b a s e d   o n   p r o f i l e s   c h o s e n   b y   t h e   u s e r   a t   r u n t i m e .     
 T o   p r e v i e w   w h a t   a   f i l e   w o u l d   l o o k   l i k e   i n   C M Y K ,   c h o o s e   R G B   f o r   t h e   s o u r c e , 
 C M Y K   f o r   t h e   d e s t i n a t i o n ,   a n d   R G B   f o r   t h e   p r o o f . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    �� ��
�� .sysodlogaskr        TEXT  m        �   � P r o o f   a n   i m a g e ,   c h o o s i n g   s o u r c e ,   d e s t i n a t i o n   a n d   p r o o f   p r o f i l e s .��        r        I   ���� 
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
�� .sysodlogaskr        TEXT 8 m     9 9 � : : | P r o o f   i m a g e s ,   c h o o s i n g   s o u r c e ,   d e s t i n a t i o n   a n d   p r o o f   p r o f i l e s ?��   7  ; < ; l   ��������  ��  ��   <  = > = r     ? @ ? I   ���� A
�� .sysostdfalis    ��� null��   A �� B C
�� 
prmp B m     D D � E E . C h o o s e   a   s o u r c e   p r o f i l e C �� F��
�� 
dflc F 4    �� G
�� 
psxf G m     H H � I I D / S y s t e m / L i b r a r y / C o l o r S y n c / P r o f i l e s��   @ o      ���� 0 
sourceprof 
sourceProf >  J K J r     . L M L I    ,���� N
�� .sysostdfalis    ��� null��   N �� O P
�� 
prmp O m   " # Q Q � R R 8 C h o o s e   a   d e s t i n a t i o n   p r o f i l e P �� S��
�� 
dflc S 4   $ (�� T
�� 
psxf T m   & ' U U � V V D / S y s t e m / L i b r a r y / C o l o r S y n c / P r o f i l e s��   M o      ���� 0 destprof destProf K  W X W r   / = Y Z Y I  / ;���� [
�� .sysostdfalis    ��� null��   [ �� \ ]
�� 
prmp \ m   1 2 ^ ^ � _ _ , C h o o s e   a   p r o o f   p r o f i l e ] �� `��
�� 
dflc ` 4   3 7�� a
�� 
psxf a m   5 6 b b � c c D / S y s t e m / L i b r a r y / C o l o r S y n c / P r o f i l e s��   Z o      ���� 0 	proofprof 	proofProf X  d e d l  > >��������  ��  ��   e  f g f r   > F h i h I   > D�� j���� .0 filelistfromselection filelistFromSelection j  k�� k o   ? @���� 0 draggeditems  ��  ��   i o      ���� 0 sourcefiles   g  l m l X   G � n�� o n k   [ � p p  q r q O  [ l s t s I  a k�� u��
�� .miscmvisnull���    obj  u 4   a g�� v
�� 
cobj v o   e f���� 0 thisfile thisFile��   t m   [ ^ w w�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   r  x y x r   m t z { z c   m r | } | o   m n���� 0 thisfile thisFile } m   n q��
�� 
alis { o      ���� 0 thisfile thisFile y  ~  ~ l  u u��������  ��  ��     � � � Q   u � � � � � O  x � � � � I  | ��� � �
�� .synccsPInull      @ imag � o   | }���� 0 thisfile thisFile � �� � �
�� 
sPrf � o   � ����� 0 
sourceprof 
sourceProf � �� � �
�� 
dPrf � o   � ����� 0 destprof destProf � �� � �
�� 
pPrf � o   � ����� 0 	proofprof 	proofProf � �� � �
�� 
dest � o   � ����� 0 thisfile thisFile � �� ���
�� 
repl � m   � ���
�� boovtrue��   � m   x y � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 
0 errmsg  ��   � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  � ��� ���
�� .sysodlogaskr        TEXT � o   � ����� 
0 errmsg  ��  ��   �  ��� � l  � ���������  ��  ��  ��  �� 0 thisfile thisFile o o   J K���� 0 sourcefiles   m  � � � l  � ���������  ��  ��   �  ��� � O  � � � � � r   � � � � � m   � �����  � 1   � ���
�� 
qdel � m   � � � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  ��   *  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � I Creturns dragged files OR files at first level of one dragged folder    � � � � � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r �  � � � i     � � � I      �� ���� .0 filelistfromselection filelistFromSelection �  ��~ � o      �}�} 0 theselection  �~  �   � k     � � �  � � � r      � � � m     �|
�| boovfals � o      �{�{ 0 	hasfolder   �  � � � O    ? � � � X    > ��z � � Z    9 � ��y�x � G    / � � � l   " ��w�v � =   " � � � n      � � � 1     �u
�u 
pcls � 4    �t �
�t 
cobj � o    �s�s 0 thisitem thisItem � m     !�r
�r 
cfol�w  �v   � l  % - ��q�p � =  % - � � � n   % + � � � 1   ) +�o
�o 
pcls � 4   % )�n �
�n 
cobj � o   ' (�m�m 0 thisitem thisItem � m   + ,�l
�l 
cdis�q  �p   � r   2 5 � � � m   2 3�k
�k boovtrue � o      �j�j 0 	hasfolder  �y  �x  �z 0 thisitem thisItem � l    ��i�h � c     � � � o    �g�g 0 theselection   � m    �f
�f 
list�i  �h   � m     � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   @ f � ��e�d � F   @ Q � � � l  @ K ��c�b � ?   @ K � � � l  @ I ��a�` � I  @ I�_ ��^
�_ .corecnte****       **** � n   @ E � � � m   C E�]
�] 
cobj � l  @ C ��\�[ � c   @ C � � � o   @ A�Z�Z 0 theselection   � m   A B�Y
�Y 
list�\  �[  �^  �a  �`   � m   I J�X�X �c  �b   � o   N O�W�W 0 	hasfolder   � k   T b � �  � � � I  T _�V � �
�V .sysodlogaskr        TEXT � m   T U � � � � � N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r . � �U � �
�U 
btns � J   V Y � �  ��T � m   V W � � � � �  O K�T   � �S ��R
�S 
dflt � m   Z [�Q�Q �R   �  ��P � L   ` b � � m   ` a � � � � �  �P  �e  �d   �  � � � O   g � � � � Z   k � � ��O � � o   k l�N�N 0 	hasfolder   � r   o � � � � c   o  � � � l  o { ��M�L � n   o {   2   y {�K
�K 
cobj 4   o y�J
�J 
cfol l  q x�I�H n   q x 4   t w�G
�G 
cobj m   u v�F�F  l  q t�E�D c   q t	 o   q r�C�C 0 theselection  	 m   r s�B
�B 
list�E  �D  �I  �H  �M  �L   � m   { ~�A
�A 
alst � o      �@�@ 0 filelist  �O   � r   � �

 l  � ��?�> c   � � o   � ��=�= 0 theselection   m   � ��<
�< 
list�?  �>   o      �;�; 0 filelist   � m   g h�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   � �: L   � � o   � ��9�9 0 filelist  �:   �  l     �8�7�6�8  �7  �6    l     �5�4�3�5  �4  �3   �2 l     �1�0�/�1  �0  �/  �2       �.�.   �-�,�+
�- .aevtoappnull  �   � ****
�, .aevtodocnull  �    alis�+ .0 filelistfromselection filelistFromSelection �* �)�(�'
�* .aevtoappnull  �   � ****�)  �(      �&�% �$�#�"�!� ��
�& .sysodlogaskr        TEXT
�% 
prmp
�$ 
dflc
�# afdmdesk
�" .earsffdralis        afdr�! 
�  .sysostdfalis    ��� null� 0 somefile  
� .aevtodocnull  �    alis�' �j O*����j � E�O�j 
 � ,���
� .aevtodocnull  �    alis� 0 draggeditems  �   �������� 0 draggeditems  � 0 
sourceprof 
sourceProf� 0 destprof destProf� 0 	proofprof 	proofProf� 0 sourcefiles  � 0 thisfile thisFile� 
0 errmsg   " 3� 9�� D�� H�� Q U ^ b��
�	� w�������� ������������
� .ascrnoop****      � ****
� .sysodlogaskr        TEXT
� 
prmp
� 
dflc
� 
psxf� 
� .sysostdfalis    ��� null� .0 filelistfromselection filelistFromSelection
�
 
kocl
�	 
cobj
� .corecnte****       ****
� .miscmvisnull���    obj 
� 
alis
� 
sPrf
� 
dPrf
� 
pPrf
� 
dest
� 
repl�  

�� .synccsPInull      @ imag�� 
0 errmsg  ��  
�� .miscactvnull��� ��� null�� 
�� 
qdel� �� *j UO�j O*���)��/� 
E�O*���)��/� 
E�O*���)��/� 
E�O*�k+ E�O j�[a a l kh a  *a �/j UO�a &E�O %� �a �a �a �a �a ea  UW X  *j O�j OP[OY��O� a  *a !,FU �� ����� ���� .0 filelistfromselection filelistFromSelection�� ��!�� !  ���� 0 theselection  ��   ���������� 0 theselection  �� 0 	hasfolder  �� 0 thisitem thisItem�� 0 filelist     ����������������� ��� ������� ���
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
 *�/�,� �& eE�Y h[OY��UO��&�,j k	 ��& ���kv�k� O�Y hO�  � *��&�k/E/�-a &E�Y ��&E�UO�ascr  ��ޭ