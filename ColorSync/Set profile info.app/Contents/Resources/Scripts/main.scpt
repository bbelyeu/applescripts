FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Set profile info
�2007 Apple Computer, Inc.

You can change some of the fields of an ICC profile with this script.  Obviously you want to be careful with what you change.
Down at the bottom is the routine that does the changing.  Just uncomment the appropriate lines,
set the new values you want, recompile and you're ready to totally screw up any profiles you drag onto it.

Definitely run this script on a copy of your original profile first, in case you forget what the original settings were.
     � 	 	� 
 S e t   p r o f i l e   i n f o 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 Y o u   c a n   c h a n g e   s o m e   o f   t h e   f i e l d s   o f   a n   I C C   p r o f i l e   w i t h   t h i s   s c r i p t .     O b v i o u s l y   y o u   w a n t   t o   b e   c a r e f u l   w i t h   w h a t   y o u   c h a n g e . 
 D o w n   a t   t h e   b o t t o m   i s   t h e   r o u t i n e   t h a t   d o e s   t h e   c h a n g i n g .     J u s t   u n c o m m e n t   t h e   a p p r o p r i a t e   l i n e s , 
 s e t   t h e   n e w   v a l u e s   y o u   w a n t ,   r e c o m p i l e   a n d   y o u ' r e   r e a d y   t o   t o t a l l y   s c r e w   u p   a n y   p r o f i l e s   y o u   d r a g   o n t o   i t . 
 
 D e f i n i t e l y   r u n   t h i s   s c r i p t   o n   a   c o p y   o f   y o u r   o r i g i n a l   p r o f i l e   f i r s t ,   i n   c a s e   y o u   f o r g e t   w h a t   t h e   o r i g i n a l   s e t t i n g s   w e r e . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    b \ remove the comment lines (--) to enable modification of whichever fields you want to change     �   �   r e m o v e   t h e   c o m m e n t   l i n e s   ( - - )   t o   e n a b l e   m o d i f i c a t i o n   o f   w h i c h e v e r   f i e l d s   y o u   w a n t   t o   c h a n g e      i         I      �� ����  0 setprofileinfo setProfileInfo   ��  o      ���� 0 theprof  ��  ��    O         k           l   ��������  ��  ��        r    	   !   m     " " � # #  a p p l ! n       $ % $ 1    ��
�� 
pcmm % o    ���� 0 theprof     & ' & l  
 
��������  ��  ��   '  ( ) ( l  
 
�� * +��   * P Jset creation date of theProf to date "Monday, January 1, 1900 12:00:00 AM"    + � , , � s e t   c r e a t i o n   d a t e   o f   t h e P r o f   t o   d a t e   " M o n d a y ,   J a n u a r y   1 ,   1 9 0 0   1 2 : 0 0 : 0 0   A M " )  - . - l  
 
��������  ��  ��   .  / 0 / l  
 
�� 1 2��   1 ' !set platform of theProf to "asdf"    2 � 3 3 B s e t   p l a t f o r m   o f   t h e P r o f   t o   " a s d f " 0  4 5 4 l  
 
��������  ��  ��   5  6 7 6 l  
 
�� 8 9��   8 2 ,set device manufacturer of theProf to "asdf"    9 � : : X s e t   d e v i c e   m a n u f a c t u r e r   o f   t h e P r o f   t o   " a s d f " 7  ; < ; l  
 
��������  ��  ��   <  = > = l  
 
�� ? @��   ? &  set creator of theProf to "asdf"    @ � A A @ s e t   c r e a t o r   o f   t h e P r o f   t o   " a s d f " >  B C B l  
 
��������  ��  ��   C  D E D l  
 
�� F G��   F $ set quality of theProf to best    G � H H < s e t   q u a l i t y   o f   t h e P r o f   t o   b e s t E  I J I l  
 
�� K L��   K &  set quality of theProf to normal    L � M M @ s e t   q u a l i t y   o f   t h e P r o f   t o   n o r m a l J  N O N l  
 
�� P Q��   P % set quality of theProf to draft    Q � R R > s e t   q u a l i t y   o f   t h e P r o f   t o   d r a f t O  S T S l  
 
��������  ��  ��   T  U V U l  
 
�� W X��   W : 4set rendering intent of theProf to perceptual intent    X � Y Y h s e t   r e n d e r i n g   i n t e n t   o f   t h e P r o f   t o   p e r c e p t u a l   i n t e n t V  Z [ Z l  
 
�� \ ]��   \ E ?set rendering intent of theProf to relative colorimetric intent    ] � ^ ^ ~ s e t   r e n d e r i n g   i n t e n t   o f   t h e P r o f   t o   r e l a t i v e   c o l o r i m e t r i c   i n t e n t [  _ ` _ l  
 
�� a b��   a : 4set rendering intent of theProf to saturation intent    b � c c h s e t   r e n d e r i n g   i n t e n t   o f   t h e P r o f   t o   s a t u r a t i o n   i n t e n t `  d e d l  
 
�� f g��   f E ?set rendering intent of theProf to absolute colorimetric intent    g � h h ~ s e t   r e n d e r i n g   i n t e n t   o f   t h e P r o f   t o   a b s o l u t e   c o l o r i m e t r i c   i n t e n t e  i j i l  
 
��������  ��  ��   j  k l k l  
 
�� m n��   m P Jbe careful! if you rename your profile, ColorSync won't know which profile    n � o o � b e   c a r e f u l !   i f   y o u   r e n a m e   y o u r   p r o f i l e ,   C o l o r S y n c   w o n ' t   k n o w   w h i c h   p r o f i l e l  p q p l  
 
�� r s��   r K Eyou're referring to after that.  If you're going to rename a profile,    s � t t � y o u ' r e   r e f e r r i n g   t o   a f t e r   t h a t .     I f   y o u ' r e   g o i n g   t o   r e n a m e   a   p r o f i l e , q  u v u l  
 
�� w x��   w D >make sure to do that last, after you've made any other changes    x � y y | m a k e   s u r e   t o   d o   t h a t   l a s t ,   a f t e r   y o u ' v e   m a d e   a n y   o t h e r   c h a n g e s v  z { z l  
 
�� | }��   | # set name of theProf to "asdf"    } � ~ ~ : s e t   n a m e   o f   t h e P r o f   t o   " a s d f " {  ��  l  
 
��������  ��  ��  ��    m      � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k      � �  � � � I    �� ���
�� .sysodlogaskr        TEXT � m      � � � � � � S e t s   a   p r o f i l e ' s   p r e f e r r e d   C M M   t o   t h e   A p p l e   C M M .     S c r i p t   c a n   b e   m o d i f i e d   b y   d r a g g i n g   i t   o n t o   S c r i p t   E d i t o r .��   �  � � � r     � � � I   ���� �
�� .sysostdfalis    ��� null��   � �� � �
�� 
prmp � m    	 � � � � �   C h o o s e   a   p r o f i l e � �� ���
�� 
dflc � 4   
 �� �
�� 
psxf � m     � � � � � 4 / L i b r a r y / C o l o r S y n c / S c r i p t s��   � o      ���� 0 somefile   �  ��� � I   �� ���
�� .aevtodocnull  �    alis � o    ���� 0 somefile  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I     �� ���
�� .aevtodocnull  �    alis � o      ���� 0 draggeditems  ��   � k    ` � �  � � � O    
 � � � I   	������
�� .ascrnoop****      � ****��  ��   � m      � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   �  � � � l   ��������  ��  ��   �  � � � I   �� ���
�� .sysodlogaskr        TEXT � m     � � � � � \ S e t s   p r o f i l e ' s   p r e f e r r e d   C M M   t o   t h e   A p p l e   C M M ?��   �  � � � l   ��������  ��  ��   �  � � � r     � � � I    �� ����� .0 filelistfromselection filelistFromSelection �  ��� � o    ���� 0 draggeditems  ��  ��   � o      ���� 0 sourcefiles   �  � � � X   Q ��� � � k   *L � �  � � � O  * 7 � � � I  . 6�� ���
�� .miscmvisnull���    obj  � 4   . 2�� �
�� 
cobj � o   0 1���� 0 thisfile thisFile��   � m   * + � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  � � � r   8 = � � � c   8 ; � � � o   8 9���� 0 thisfile thisFile � m   9 :��
�� 
alis � o      ���� 0 thisfile thisFile �  � � � l  > >��������  ��  ��   �  � � � Q   >J � � � � k   A7 � �  � � � r   A F � � � c   A D � � � o   A B���� 0 thisfile thisFile � m   B C��
�� 
alis � o      ���� 0 thisfile thisFile �  � � � O  G T � � � r   K S � � � n   K Q � � � 1   O Q��
�� 
pnam � 4   K O�� �
�� 
cobj � o   M N���� 0 thisfile thisFile � o      ���� 0 thefilename theFileName � m   G H � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  � � � l  U U��������  ��  ��   �  � � � r   U X � � � m   U V��
�� boovfals � o      ���� 0 
itsanimage 
itsAnImage �  � � � r   Y \ � � � m   Y Z�
� boovfals � o      �~�~ 0 itsaprofile itsAProfile �  � � � Z   ] � � � ��} � D   ] ` � � � o   ] ^�|�| 0 thefilename theFileName � m   ^ _ � � � � �  . i c c � r   c f � � � m   c d�{
�{ boovtrue � o      �z�z 0 itsaprofile itsAProfile �  � � � D   i l � � � o   i j�y�y 0 thefilename theFileName � m   j k � � �   
 . j p e g �  r   o r m   o p�x
�x boovtrue o      �w�w 0 
itsanimage 
itsAnImage  D   u x o   u v�v�v 0 thefilename theFileName m   v w		 �

  . j p g  r   { ~ m   { |�u
�u boovtrue o      �t�t 0 
itsanimage 
itsAnImage  D   � � o   � ��s�s 0 thefilename theFileName m   � � �  . t i f  r   � � m   � ��r
�r boovtrue o      �q�q 0 
itsanimage 
itsAnImage  D   � � o   � ��p�p 0 thefilename theFileName m   � � � 
 . t i f f   r   � �!"! m   � ��o
�o boovtrue" o      �n�n 0 
itsanimage 
itsAnImage  #$# D   � �%&% o   � ��m�m 0 thefilename theFileName& m   � �'' �((  . g i f$ )�l) r   � �*+* m   � ��k
�k boovtrue+ o      �j�j 0 
itsanimage 
itsAnImage�l  �}   � ,-, l  � ��i�h�g�i  �h  �g  - .�f. Z   �7/012/ o   � ��e�e 0 
itsanimage 
itsAnImage0 k   � �33 454 O   � �676 k   � �88 9:9 r   � �;<; I  � ��d=�c
�d .aevtodocnull  �    alis= o   � ��b�b 0 thisfile thisFile�c  < o      �a�a 0 	openimage 	openImage: >�`> r   � �?@? I  � ��_A�^
�_ .corecnte****       ****A n   � �BCB 2   � ��]
�] 
profC o   � ��\�\ 0 	openimage 	openImage�^  @ o      �[�[ 0 	profcount 	profCount�`  7 m   � �DD�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  5 EFE Z   � �GH�ZIG =  � �JKJ o   � ��Y�Y 0 	profcount 	profCountK m   � ��X�X  H I  � ��WL�V
�W .sysodlogaskr        TEXTL b   � �MNM m   � �OO �PP  n o   p r o f i l e   i n  N o   � ��U�U 0 thefilename theFileName�V  �Z  I k   � �QQ RSR O  � �TUT r   � �VWV n   � �XYX 4   � ��TZ
�T 
profZ m   � ��S�S Y o   � ��R�R 0 	openimage 	openImageW o      �Q�Q 0 
theprofile 
theProfileU m   � �[[�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  S \�P\ O  � �]^] I   � ��O_�N�O  0 setprofileinfo setProfileInfo_ `�M` o   � ��L�L 0 
theprofile 
theProfile�M  �N  ^  f   � ��P  F a�Ka O  � �bcb I  � ��Jd�I
�J .coreclosnull���    obj d o   � ��H�H 0 	openimage 	openImage�I  c m   � �ee�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  �K  1 fgf o  �G�G 0 itsaprofile itsAProfileg h�Fh k  +ii jkj O lml r  	non l 	p�E�Dp 6 	qrq 4 	�Cs
�C 
profs m  �B�B r = tut 1  �A
�A 
pLocu o  �@�@ 0 thisfile thisFile�E  �D  o o      �?�? 0 
theprofile 
theProfilem m  vv�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  k w�>w O  +xyx I  $*�=z�<�=  0 setprofileinfo setProfileInfoz {�;{ o  %&�:�: 0 
theprofile 
theProfile�;  �<  y  f   !�>  �F  2 I .7�9|�8
�9 .sysodlogaskr        TEXT| b  .3}~} m  .1 ��� 2 u n s u p p o r t e d   f i l e   t y p e   o f  ~ o  12�7�7 0 thefilename theFileName�8  �f   � R      �6��5
�6 .ascrerr ****      � ****� o      �4�4 
0 errmsg  �5   � k  ?J�� ��� I ?D�3�2�1
�3 .miscactvnull��� ��� null�2  �1  � ��0� I EJ�/��.
�/ .sysodlogaskr        TEXT� o  EF�-�- 
0 errmsg  �.  �0   � ��,� l KK�+�*�)�+  �*  �)  �,  �� 0 thisfile thisFile � o    �(�( 0 sourcefiles   � ��� l RR�'�&�%�'  �&  �%  � ��$� O R`��� r  V_��� m  VY�#�# � 1  Y^�"
�" 
qdel� m  RS���                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  �$   � ��� l     �!� ��!  �   �  � ��� l     ����  �  �  � ��� l     ����  � I Creturns dragged files OR files at first level of one dragged folder   � ��� � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r� ��� i    ��� I      ���� .0 filelistfromselection filelistFromSelection� ��� o      �� 0 theselection  �  �  � k     ��� ��� r     ��� m     �
� boovfals� o      �� 0 	hasfolder  � ��� O    ?��� X    >���� Z    9����� G    /��� l   "���� =   "��� n     ��� 1     �
� 
pcls� 4    ��
� 
cobj� o    �� 0 thisitem thisItem� m     !�
� 
cfol�  �  � l  % -���
� =  % -��� n   % +��� 1   ) +�	
�	 
pcls� 4   % )��
� 
cobj� o   ' (�� 0 thisitem thisItem� m   + ,�
� 
cdis�  �
  � r   2 5��� m   2 3�
� boovtrue� o      �� 0 	hasfolder  �  �  � 0 thisitem thisItem� l   ���� c    ��� o    �� 0 theselection  � m    � 
�  
list�  �  � m    ���                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  � ��� Z   @ f������� F   @ Q��� l  @ K������ ?   @ K��� l  @ I������ I  @ I�����
�� .corecnte****       ****� n   @ E��� m   C E��
�� 
cobj� l  @ C������ c   @ C��� o   @ A���� 0 theselection  � m   A B��
�� 
list��  ��  ��  ��  ��  � m   I J���� ��  ��  � o   N O���� 0 	hasfolder  � k   T b�� ��� I  T _����
�� .sysodlogaskr        TEXT� m   T U�� ��� N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r .� ����
�� 
btns� J   V Y�� ���� m   V W�� ���  O K��  � �����
�� 
dflt� m   Z [���� ��  � ���� L   ` b�� m   ` a�� ���  ��  ��  ��  � ��� O   g ���� Z   k ������� o   k l���� 0 	hasfolder  � r   o ���� c   o ��� l  o {������ n   o {��� 2   y {��
�� 
cobj� 4   o y���
�� 
cfol� l  q x������ n   q x��� 4   t w���
�� 
cobj� m   u v���� � l  q t������ c   q t��� o   q r���� 0 theselection  � m   r s��
�� 
list��  ��  ��  ��  ��  ��  � m   { ~��
�� 
alst� o      ���� 0 filelist  ��  � r   � ���� l  � ������� c   � ���� o   � ����� 0 theselection  � m   � ���
�� 
list��  ��  � o      ���� 0 filelist  � m   g h���                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  � ���� L   � ��� o   � ����� 0 filelist  ��  �    l     ��������  ��  ��    l     ��������  ��  ��    l     ��������  ��  ��   �� l     ��������  ��  ��  ��       ��	
��   ����������  0 setprofileinfo setProfileInfo
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis�� .0 filelistfromselection filelistFromSelection �� ��������  0 setprofileinfo setProfileInfo�� ����   ���� 0 theprof  ��   ���� 0 theprof    � "��
�� 
pcmm�� � 	��,FOPU	 �� �������
�� .aevtoappnull  �   � ****��  ��      ����� ����� ���������
�� .sysodlogaskr        TEXT
�� 
prmp
�� 
dflc
�� 
psxf�� 
�� .sysostdfalis    ��� null�� 0 somefile  
�� .aevtodocnull  �    alis�� �j O*���)��/� E�O�j 

 �� �������
�� .aevtodocnull  �    alis�� 0 draggeditems  ��   
���������������������� 0 draggeditems  �� 0 sourcefiles  �� 0 thisfile thisFile�� 0 thefilename theFileName�� 0 
itsanimage 
itsAnImage�� 0 itsaprofile itsAProfile�� 0 	openimage 	openImage�� 0 	profcount 	profCount�� 0 
theprofile 
theProfile�� 
0 errmsg    ��� ����������� ������� � �	'����O����������������
�� .ascrnoop****      � ****
�� .sysodlogaskr        TEXT�� .0 filelistfromselection filelistFromSelection
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
�� .aevtodocnull  �    alis
�� 
prof��  0 setprofileinfo setProfileInfo
�� .coreclosnull���    obj   
�� 
pLoc�� 
0 errmsg  ��  
�� .miscactvnull��� ��� null�� 
�� 
qdel��a� *j UO�j O*�k+ E�O6�[��l kh � 
*�/j 	UO��&E�O ���&E�O� 
*�/�,E�UOfE�OfE�O�� eE�Y C�� eE�Y 7�� eE�Y +�� eE�Y �a  eE�Y �a  eE�Y hO� T� �j E�O�a -j E�UO�j  a �%j Y � 
�a k/E�UO) *�k+ UO� �j UY 8� +� *a k/a [a ,\Z�81E�UO) *�k+ UY a �%j W X  *j O�j OP[OY��O� a *a ,FU ����������� .0 filelistfromselection filelistFromSelection�� ����   ���� 0 theselection  ��   ���������� 0 theselection  �� 0 	hasfolder  �� 0 thisitem thisItem�� 0 filelist   �������~�}�|�{�z��y��x�w�v��u
�� 
list
�� 
kocl
� 
cobj
�~ .corecnte****       ****
�} 
pcls
�| 
cfol
�{ 
cdis
�z 
bool
�y 
btns
�x 
dflt�w 
�v .sysodlogaskr        TEXT
�u 
alst�� �fE�O� 8 5��&[��l kh *�/�,� 
 *�/�,� �& eE�Y h[OY��UO��&�,j k	 ��& ���kv�k� O�Y hO�  � *��&�k/E/�-a &E�Y ��&E�UO� ascr  ��ޭ