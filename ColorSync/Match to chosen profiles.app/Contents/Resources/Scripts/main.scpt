FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
Match to chosen profiles
�2007 Apple Computer, Inc.

A simple but useful script that matches images based on profiles chosen by the user at runtime.
     � 	 	, 
 M a t c h   t o   c h o s e n   p r o f i l e s 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 A   s i m p l e   b u t   u s e f u l   s c r i p t   t h a t   m a t c h e s   i m a g e s   b a s e d   o n   p r o f i l e s   c h o s e n   b y   t h e   u s e r   a t   r u n t i m e . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    �� ��
�� .sysodlogaskr        TEXT  m        �   V M a t c h   a n   i m a g e   f r o m   o n e   p r o f i l e   t o   a n o t h e r .��        r        I   ���� 
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
�� .sysodlogaskr        TEXT 8 m     9 9 � : : R M a t c h   i m a g e s   f r o m   o n e   p r o f i l e   t o   a n o t h e r ?��   7  ; < ; l   ��������  ��  ��   <  = > = r     ? @ ? I   ���� A
�� .sysostdfalis    ��� null��   A �� B C
�� 
prmp B m     D D � E E > C h o o s e   a   p r o f i l e   f o r   t h e   s o u r c e C �� F��
�� 
dflc F 4    �� G
�� 
psxf G m     H H � I I D / S y s t e m / L i b r a r y / C o l o r S y n c / P r o f i l e s��   @ o      ���� 0 
sourceprof 
sourceProf >  J K J r     . L M L I    ,���� N
�� .sysostdfalis    ��� null��   N �� O P
�� 
prmp O m   " # Q Q � R R H C h o o s e   a   p r o f i l e   f o r   t h e   d e s t i n a t i o n P �� S��
�� 
dflc S 4   $ (�� T
�� 
psxf T m   & ' U U � V V D / S y s t e m / L i b r a r y / C o l o r S y n c / P r o f i l e s��   M o      ���� 0 destprof destProf K  W X W l  / /��������  ��  ��   X  Y Z Y l  / /��������  ��  ��   Z  [ \ [ r   / 7 ] ^ ] I   / 5�� _���� .0 filelistfromselection filelistFromSelection _  `�� ` o   0 1���� 0 draggeditems  ��  ��   ^ o      ���� 0 sourcefiles   \  a b a l  8 8��������  ��  ��   b  c d c X   8 � e�� f e k   H � g g  h i h O  H W j k j I  N V�� l��
�� .miscmvisnull���    obj  l 4   N R�� m
�� 
cobj m o   P Q���� 0 thisfile thisFile��   k m   H K n n�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   i  o p o r   X _ q r q c   X ] s t s o   X Y���� 0 thisfile thisFile t m   Y \��
�� 
alis r o      ���� 0 thisfile thisFile p  u�� u Q   ` � v w x v k   c  y y  z { z l  c c�� | }��   | 2 , you need to specify where to save the image    } � ~ ~ X   y o u   n e e d   t o   s p e c i f y   w h e r e   t o   s a v e   t h e   i m a g e {  ��  O  c  � � � I  g ~�� � �
�� .synccsMInull      @ imag � o   g h���� 0 thisfile thisFile � �� � �
�� 
sPrf � l  k l ����� � o   k l���� 0 
sourceprof 
sourceProf��  ��   � �� � �
�� 
dPrf � l  o p ����� � o   o p���� 0 destprof destProf��  ��   � �� � �
�� 
dest � o   s t���� 0 thisfile thisFile � �� ���
�� 
repl � m   w x��
�� boovtrue��   � m   c d � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  ��   w R      �� ���
�� .ascrerr ****      � **** � o      ���� 
0 errmsg  ��   x k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  � ��� ���
�� .sysodlogaskr        TEXT � o   � ����� 
0 errmsg  ��  ��  ��  �� 0 thisfile thisFile f o   ; <���� 0 sourcefiles   d  � � � l  � ���������  ��  ��   �  ��� � O  � � � � � r   � � � � � m   � �����  � 1   � ���
�� 
qdel � m   � � � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  ��   *  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � I Creturns dragged files OR files at first level of one dragged folder    � � � � � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r �  � � � i     � � � I      �� ����� .0 filelistfromselection filelistFromSelection �  ��� � o      ���� 0 theselection  ��  ��   � k     � � �  � � � r      � � � m     �
� boovfals � o      �~�~ 0 	hasfolder   �  � � � O    ? � � � X    > ��} � � Z    9 � ��|�{ � G    / � � � l   " ��z�y � =   " � � � n      � � � 1     �x
�x 
pcls � 4    �w �
�w 
cobj � o    �v�v 0 thisitem thisItem � m     !�u
�u 
cfol�z  �y   � l  % - ��t�s � =  % - � � � n   % + � � � 1   ) +�r
�r 
pcls � 4   % )�q �
�q 
cobj � o   ' (�p�p 0 thisitem thisItem � m   + ,�o
�o 
cdis�t  �s   � r   2 5 � � � m   2 3�n
�n boovtrue � o      �m�m 0 	hasfolder  �|  �{  �} 0 thisitem thisItem � l    ��l�k � c     � � � o    �j�j 0 theselection   � m    �i
�i 
list�l  �k   � m     � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   @ f � ��h�g � F   @ Q � � � l  @ K ��f�e � ?   @ K � � � l  @ I ��d�c � I  @ I�b ��a
�b .corecnte****       **** � n   @ E � � � m   C E�`
�` 
cobj � l  @ C ��_�^ � c   @ C � � � o   @ A�]�] 0 theselection   � m   A B�\
�\ 
list�_  �^  �a  �d  �c   � m   I J�[�[ �f  �e   � o   N O�Z�Z 0 	hasfolder   � k   T b � �  � � � I  T _�Y � �
�Y .sysodlogaskr        TEXT � m   T U � � � � � N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r . � �X � �
�X 
btns � J   V Y � �  ��W � m   V W � � � � �  O K�W   � �V ��U
�V 
dflt � m   Z [�T�T �U   �  ��S � L   ` b � � m   ` a � � � � �  �S  �h  �g   �  � � � O   g � � � � Z   k � � ��R � � o   k l�Q�Q 0 	hasfolder   � r   o � � � � c   o  � � � l  o { ��P�O � n   o { � � � 2   y {�N
�N 
cobj � 4   o y�M �
�M 
cfol � l  q x ��L�K � n   q x � � � 4   t w�J 
�J 
cobj  m   u v�I�I  � l  q t�H�G c   q t o   q r�F�F 0 theselection   m   r s�E
�E 
list�H  �G  �L  �K  �P  �O   � m   { ~�D
�D 
alst � o      �C�C 0 filelist  �R   � r   � � l  � ��B�A c   � � o   � ��@�@ 0 theselection   m   � ��?
�? 
list�B  �A   o      �>�> 0 filelist   � m   g h		�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   � 
�=
 L   � � o   � ��<�< 0 filelist  �=   �  l     �;�:�9�;  �:  �9    l     �8�7�6�8  �7  �6   �5 l     �4�3�2�4  �3  �2  �5       �1�1   �0�/�.
�0 .aevtoappnull  �   � ****
�/ .aevtodocnull  �    alis�. .0 filelistfromselection filelistFromSelection �- �,�+�*
�- .aevtoappnull  �   � ****�,  �+      �)�( �'�&�%�$�#�"�!
�) .sysodlogaskr        TEXT
�( 
prmp
�' 
dflc
�& afdrdesk
�% .earsffdralis        afdr�$ 
�# .sysostdfalis    ��� null�" 0 somefile  
�! .aevtodocnull  �    alis�* �j O*����j � E�O�j 
 �  ,���
�  .aevtodocnull  �    alis� 0 draggeditems  �   ������� 0 draggeditems  � 0 
sourceprof 
sourceProf� 0 destprof destProf� 0 sourcefiles  � 0 thisfile thisFile� 
0 errmsg    3� 9�� D�� H�� Q U���� n��
�	��������� ��
� .ascrnoop****      � ****
� .sysodlogaskr        TEXT
� 
prmp
� 
dflc
� 
psxf� 
� .sysostdfalis    ��� null� .0 filelistfromselection filelistFromSelection
� 
kocl
� 
cobj
� .corecnte****       ****
� .miscmvisnull���    obj 
�
 
alis
�	 
sPrf
� 
dPrf
� 
dest
� 
repl� 
� .synccsMInull      @ imag� 
0 errmsg  �  
� .miscactvnull��� ��� null�  
�� 
qdel� �� *j UO�j O*���)��/� 
E�O*���)��/� 
E�O*�k+ E�O ^�[��l kh a  
*�/j UO�a &E�O !� �a �a �a �a ea  UW X  *j O�j [OY��O� a *a ,FU �� ��������� .0 filelistfromselection filelistFromSelection�� ����   ���� 0 theselection  ��   ���������� 0 theselection  �� 0 	hasfolder  �� 0 thisitem thisItem�� 0 filelist    ����������������� ��� ������� ���
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