FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
Extract profile
�2007 Apple Computer, Inc.

This script uses Image Events and sips to extract the embedded profile in an image and save it to disk.
     � 	 	* 
 E x t r a c t   p r o f i l e 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 T h i s   s c r i p t   u s e s   I m a g e   E v e n t s   a n d   s i p s   t o   e x t r a c t   t h e   e m b e d d e d   p r o f i l e   i n   a n   i m a g e   a n d   s a v e   i t   t o   d i s k . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    �� ��
�� .sysodlogaskr        TEXT  m        �   f E x t r a c t   t h e   p r o f i l e   f r o m   a n   i m a g e   a n d   s a v e   t o   d i s k .��        r        I   ���� 
�� .sysostdfalis    ��� null��    �� ��
�� 
prmp  m    	   �    C h o o s e   a n   i m a g e��    o      ���� 0 somefile      ��   I   �� !��
�� .aevtodocnull  �    alis ! o    ���� 0 somefile  ��  ��     " # " l     ��������  ��  ��   #  $ % $ l     ��������  ��  ��   %  & ' & i     ( ) ( I     �� *��
�� .aevtodocnull  �    alis * o      ���� 0 draggeditems  ��   ) k    � + +  , - , O    
 . / . I   	������
�� .ascrnoop****      � ****��  ��   / m      0 0�                                                                                  imev   alis    t  9A549                      �
�H+     wImage Events.app                                                 �3���        ����  	                CoreServices    �3�      �	@8       w   3   2  29A549:System:Library:CoreServices:Image Events.app  "  I m a g e   E v e n t s . a p p    9 A 5 4 9  ,System/Library/CoreServices/Image Events.app  / ��   -  1 2 1 l   ��������  ��  ��   2  3 4 3 I   �� 5��
�� .sysodlogaskr        TEXT 5 m     6 6 � 7 7 \ E x t r a c t   p r o f i l e s   f r o m   i m a g e s   a n d   s a v e   t o   d i s k ?��   4  8 9 8 l   ��������  ��  ��   9  : ; : r     < = < I    �� >���� .0 filelistfromselection filelistFromSelection >  ?�� ? o    ���� 0 draggeditems  ��  ��   = o      ���� 0 sourcefiles   ;  @ A @ X   � B�� C B Q   *� D E F D k   -d G G  H I H O  - : J K J I  1 9�� L��
�� .miscmvisnull���    obj  L 4   1 5�� M
�� 
cobj M o   3 4���� 0 thisfile thisFile��   K m   - . N N�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   I  O P O l  ; ;�� Q R��   Q ' !set thisFile to thisFile as alias    R � S S B s e t   t h i s F i l e   t o   t h i s F i l e   a s   a l i a s P  T U T l  ; ;��������  ��  ��   U  V W V O  ; G X Y X r   ? F Z [ Z I  ? D�� \��
�� .aevtodocnull  �    alis \ o   ? @���� 0 thisfile thisFile��   [ o      ���� 0 	openimage 	openImage Y m   ; < ] ]�                                                                                  imev   alis    t  9A549                      �
�H+     wImage Events.app                                                 �3���        ����  	                CoreServices    �3�      �	@8       w   3   2  29A549:System:Library:CoreServices:Image Events.app  "  I m a g e   E v e n t s . a p p    9 A 5 4 9  ,System/Library/CoreServices/Image Events.app  / ��   W  ^ _ ^ r   H K ` a ` m   H I b b � c c   a o      ���� 0 internalname internalName _  d e d Q   L d f g�� f O  O [ h i h r   S Z j k j n   S X l m l 1   V X��
�� 
pnam m n   S V n o n m   T V��
�� 
prof o o   S T���� 0 	openimage 	openImage k o      ���� 0 internalname internalName i m   O P p p�                                                                                  imev   alis    t  9A549                      �
�H+     wImage Events.app                                                 �3���        ����  	                CoreServices    �3�      �	@8       w   3   2  29A549:System:Library:CoreServices:Image Events.app  "  I m a g e   E v e n t s . a p p    9 A 5 4 9  ,System/Library/CoreServices/Image Events.app  / ��   g R      ������
�� .ascrerr ****      � ****��  ��  ��   e  q r q Z   eK s t�� u s =  e j v w v o   e f���� 0 internalname internalName w m   f i x x � y y   t k   m � z z  { | { I  m r������
�� .miscactvnull��� ��� null��  ��   |  }�� } I  s ��� ~ 
�� .sysodlogaskr        TEXT ~ b   s | � � � m   s v � � � � �  n o   p r o f i l e   i n   � l  v { ����� � c   v { � � � o   v w���� 0 thisfile thisFile � m   w z��
�� 
ctxt��  ��    �� � �
�� 
btns � J    � � �  ��� � m    � � � � � �  O K��   � �� ���
�� 
dflt � m   � ����� ��  ��  ��   u k   �K � �  � � � O  � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � n   � � � � � m   � ���
�� 
prof � o   � ����� 0 	openimage 	openImage � o      ���� 0 internalname internalName � m   � � � ��                                                                                  imev   alis    t  9A549                      �
�H+     wImage Events.app                                                 �3���        ����  	                CoreServices    �3�      �	@8       w   3   2  29A549:System:Library:CoreServices:Image Events.app  "  I m a g e   E v e n t s . a p p    9 A 5 4 9  ,System/Library/CoreServices/Image Events.app  / ��   �  � � � r   � � � � � I  � ��� ���
�� .corecnte****       **** � n   � � � � � 2  � ���
�� 
cha  � o   � ����� 0 internalname internalName��   � o      ���� 0 strcount strCount �  � � � Z   � � � ��� � � ?   � � � � � o   � ����� 0 strcount strCount � m   � ����� � � r   � � � � � c   � � � � � l  � � ����� � b   � � � � � l  � � ����� � n   � � � � � 7 � ��� � �
�� 
cha  � m   � �����  � m   � ����� � � o   � ����� 0 internalname internalName��  ��   � m   � � � � � � �  . i c c��  ��   � m   � ���
�� 
TEXT � o      ����  0 newprofilename newProfileName��   � r   � � � � � c   � � � � � l  � � ����� � b   � � � � � o   � ����� 0 internalname internalName � m   � � � � � � �  . i c c��  ��   � m   � ���
�� 
TEXT � o      ����  0 newprofilename newProfileName �  � � � l  � ���������  ��  ��   �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  � � � r   � � � � � I  � ����� �
�� .sysonwflfile    ��� null��   � �� � �
�� 
dfnm � o   � �����  0 newprofilename newProfileName � �� ���
�� 
prmt � m   � � � � � � � $ S a v e   p r o f i l e   a s . . .��   � o      ���� 0 newfilepath   �  � � � O   � � � � Q   � � ��� � I  ��� � �
�� .coremoveobj        obj  � 4   ��� �
�� 
cobj � l  � ���~ � c   � � � � o   � ��}�} 0 newfilepath   � m   ��|
�| 
alis�  �~   � �{ ��z
�{ 
insh � 1  �y
�y 
trsh�z   � R      �x�w�v
�x .ascrerr ****      � ****�w  �v  ��   � m   � � � ��                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   �  � � � l �u�t�s�u  �t  �s   �  � � � r  % � � � n  # � � � 1  #�r
�r 
strq � n   � � � 1  �q
�q 
psxp � o  �p�p 0 newfilepath   � o      �o�o $0 newfileposixpath newFilePosixPath �  � � � r  &1 � � � n  &/ � � � 1  +/�n
�n 
strq � n  &+ � � � 1  '+�m
�m 
psxp � o  &'�l�l 0 thisfile thisFile � o      �k�k (0 imagefileposixpath imageFilePosixPath �  � � � r  2C � � � c  2A � � � l 2= ��j�i � b  2= � � � b  2; � � � b  27 � � � m  25 � � � � � , s i p s   - - e x t r a c t P r o f i l e   � o  56�h�h $0 newfileposixpath newFilePosixPath � m  7: � � � � �    � o  ;<�g�g (0 imagefileposixpath imageFilePosixPath�j  �i   � m  =@�f
�f 
TEXT � o      �e�e 0 cmdline   �  � � � I DI�d �c
�d .sysoexecTEXT���     TEXT  o  DE�b�b 0 cmdline  �c   � �a l JJ�`�_�^�`  �_  �^  �a   r  Q  Lb�] O OY I SX�\�[
�\ .coreclosnull���    obj  o  ST�Z�Z 0 	openimage 	openImage�[   m  OP		�                                                                                  imev   alis    t  9A549                      �
�H+     wImage Events.app                                                 �3���        ����  	                CoreServices    �3�      �	@8       w   3   2  29A549:System:Library:CoreServices:Image Events.app  "  I m a g e   E v e n t s . a p p    9 A 5 4 9  ,System/Library/CoreServices/Image Events.app  / ��   R      �Y�X�W
�Y .ascrerr ****      � ****�X  �W  �]   
�V
 l cc�U�T�S�U  �T  �S  �V   E R      �R
�R .ascrerr ****      � **** o      �Q�Q 
0 errmsg   �P�O
�P 
errn o      �N�N 
0 errnum  �O   F k  l�  I lq�M�L�K
�M .miscactvnull��� ��� null�L  �K   �J I r��I
�I .sysodlogaskr        TEXT o  rs�H�H 
0 errmsg   �G
�G 
btns J  v{ �F m  vy �  O K�F   �E�D
�E 
dflt m  ~�C�C �D  �J  �� 0 thisfile thisFile C o    �B�B 0 sourcefiles   A �A l ���@�?�>�@  �?  �>  �A   '  l     �=�<�;�=  �<  �;    l     �:�9�8�:  �9  �8    !  l     �7"#�7  " I Creturns dragged files OR files at first level of one dragged folder   # �$$ � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r! %&% i    '(' I      �6)�5�6 .0 filelistfromselection filelistFromSelection) *�4* o      �3�3 0 theselection  �4  �5  ( k     �++ ,-, r     ./. m     �2
�2 boovfals/ o      �1�1 0 	hasfolder  - 010 O    ?232 X    >4�054 Z    967�/�.6 G    /898 l   ":�-�,: =   ";<; n     =>= 1     �+
�+ 
pcls> 4    �*?
�* 
cobj? o    �)�) 0 thisitem thisItem< m     !�(
�( 
cfol�-  �,  9 l  % -@�'�&@ =  % -ABA n   % +CDC 1   ) +�%
�% 
pclsD 4   % )�$E
�$ 
cobjE o   ' (�#�# 0 thisitem thisItemB m   + ,�"
�" 
cdis�'  �&  7 r   2 5FGF m   2 3�!
�! boovtrueG o      � �  0 	hasfolder  �/  �.  �0 0 thisitem thisItem5 l   H��H c    IJI o    �� 0 theselection  J m    �
� 
list�  �  3 m    KK�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  1 LML Z   @ fNO��N F   @ QPQP l  @ KR��R ?   @ KSTS l  @ IU��U I  @ I�V�
� .corecnte****       ****V n   @ EWXW m   C E�
� 
cobjX l  @ CY��Y c   @ CZ[Z o   @ A�� 0 theselection  [ m   A B�
� 
list�  �  �  �  �  T m   I J�� �  �  Q o   N O�� 0 	hasfolder  O k   T b\\ ]^] I  T _�_`
� .sysodlogaskr        TEXT_ m   T Uaa �bb N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r .` �cd
� 
btnsc J   V Yee f�
f m   V Wgg �hh  O K�
  d �	i�
�	 
dflti m   Z [�� �  ^ j�j L   ` bkk m   ` all �mm  �  �  �  M non O   g �pqp Z   k �rs�tr o   k l�� 0 	hasfolder  s r   o �uvu c   o wxw l  o {y��y n   o {z{z 2   y {�
� 
cobj{ 4   o y� |
�  
cfol| l  q x}����} n   q x~~ 4   t w���
�� 
cobj� m   u v����  l  q t������ c   q t��� o   q r���� 0 theselection  � m   r s��
�� 
list��  ��  ��  ��  �  �  x m   { ~��
�� 
alstv o      ���� 0 filelist  �  t r   � ���� l  � ������� c   � ���� o   � ����� 0 theselection  � m   � ���
�� 
list��  ��  � o      ���� 0 filelist  q m   g h���                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  o ���� L   � ��� o   � ����� 0 filelist  ��  & ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ��������  � ������
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis�� .0 filelistfromselection filelistFromSelection� �� ��������
�� .aevtoappnull  �   � ****��  ��  �  �  ���� ������
�� .sysodlogaskr        TEXT
�� 
prmp
�� .sysostdfalis    ��� null�� 0 somefile  
�� .aevtodocnull  �    alis�� �j O*��l E�O�j � �� )��������
�� .aevtodocnull  �    alis�� 0 draggeditems  ��  � ���������������������������� 0 draggeditems  �� 0 sourcefiles  �� 0 thisfile thisFile�� 0 	openimage 	openImage�� 0 internalname internalName�� 0 strcount strCount��  0 newprofilename newProfileName�� 0 newfilepath  �� $0 newfileposixpath newFilePosixPath�� (0 imagefileposixpath imageFilePosixPath�� 0 cmdline  �� 
0 errmsg  �� 
0 errnum  � . 0�� 6���������� N���� b�������� x�� ����� ��������� ��� ����� ��������������� � ��������
�� .ascrnoop****      � ****
�� .sysodlogaskr        TEXT�� .0 filelistfromselection filelistFromSelection
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .miscmvisnull���    obj 
�� .aevtodocnull  �    alis
�� 
prof
�� 
pnam��  ��  
�� .miscactvnull��� ��� null
�� 
ctxt
�� 
btns
�� 
dflt�� 
�� 
cha �� �
�� 
TEXT
�� 
dfnm
�� 
prmt
�� .sysonwflfile    ��� null
�� 
alis
�� 
insh
�� 
trsh
�� .coremoveobj        obj 
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT
�� .coreclosnull���    obj �� 
0 errmsg  � ������
�� 
errn�� 
0 errnum  ��  ���� *j UO�j O*�k+ E�Oo�[��l kh <� 
*�/j 	UO� 	�j 
E�UO�E�O � 	��,�,E�UW X  hO�a   &*j Oa �a &%a a kva ka  Y �� 	��,�,E�UO�a -j E�O�a  �[a \[Zk\Za 2a %a &E�Y �a %a &E�O*j O*a �a a a   E�O� " *�a !&/a "*a #,l $W X  hUO�a %,a &,E�O�a %,a &,E�Oa '�%a (%�%a &E�O�j )OPO � �j *UW X  hOPW  X + ,*j O�a a -kva ka  [OY��OP� ��(���������� .0 filelistfromselection filelistFromSelection�� ����� �  ���� 0 theselection  ��  � ���������� 0 theselection  �� 0 	hasfolder  �� 0 thisitem thisItem�� 0 filelist  � K����������������a��g������l��
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