FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Show Profile Info
�2007 Apple Computer, Inc.

Now you can find out what profile an image contains, if any.

The "try...on error" structure can be extremely useful in any script.  When your script misbehaves it's much nicer
to see an informative dialog appear than to wonder what's happening when the script hangs your machine for two minutes.
Plus it keeps errors from halting any ongoing routines your script may be executing.
     � 	 	Z 
 S h o w   P r o f i l e   I n f o 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 N o w   y o u   c a n   f i n d   o u t   w h a t   p r o f i l e   a n   i m a g e   c o n t a i n s ,   i f   a n y . 
 
 T h e   " t r y . . . o n   e r r o r "   s t r u c t u r e   c a n   b e   e x t r e m e l y   u s e f u l   i n   a n y   s c r i p t .     W h e n   y o u r   s c r i p t   m i s b e h a v e s   i t ' s   m u c h   n i c e r 
 t o   s e e   a n   i n f o r m a t i v e   d i a l o g   a p p e a r   t h a n   t o   w o n d e r   w h a t ' s   h a p p e n i n g   w h e n   t h e   s c r i p t   h a n g s   y o u r   m a c h i n e   f o r   t w o   m i n u t e s . 
 P l u s   i t   k e e p s   e r r o r s   f r o m   h a l t i n g   a n y   o n g o i n g   r o u t i n e s   y o u r   s c r i p t   m a y   b e   e x e c u t i n g . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        p         ������ 0 whatkind whatKind��        l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    �� ��
�� .sysodlogaskr        TEXT  m        �   ` S h o w   p r o f i l e   i n f o r m a t i o n   f o r   i m a g e s   o r   p r o f i l e s .��         r     ! " ! I   ���� #
�� .sysostdfalis    ��� null��   # �� $ %
�� 
prmp $ m    	 & & � ' ' 4 C h o o s e   a n   i m a g e   o r   p r o f i l e % �� (��
�� 
dflc ( I  
 �� )��
�� .earsffdralis        afdr ) m   
 ��
�� afdmdesk��  ��   " o      ���� 0 somefile      *�� * I   �� +��
�� .aevtodocnull  �    alis + o    ���� 0 somefile  ��  ��     , - , l     ��������  ��  ��   -  . / . l     ��������  ��  ��   /  0 1 0 i     2 3 2 I     �� 4��
�� .aevtodocnull  �    alis 4 o      ���� 0 draggeditems  ��   3 k    F 5 5  6 7 6 O    
 8 9 8 I   	������
�� .ascrnoop****      � ****��  ��   9 m      : :�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   7  ; < ; l   ��������  ��  ��   <  = > = r     ? @ ? I    �� A���� .0 filelistfromselection filelistFromSelection A  B�� B o    ���� 0 draggeditems  ��  ��   @ o      ���� 0 sourcefiles   >  C D C X   7 E�� F E k   $2 G G  H I H O  $ 1 J K J I  ( 0�� L��
�� .miscmvisnull���    obj  L 4   ( ,�� M
�� 
cobj M o   * +���� 0 thisfile thisFile��   K m   $ % N N�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   I  O P O r   2 7 Q R Q c   2 5 S T S o   2 3���� 0 thisfile thisFile T m   3 4��
�� 
alis R o      ���� 0 thisfile thisFile P  U V U l  8 8��������  ��  ��   V  W X W O  8 E Y Z Y r   < D [ \ [ n   < B ] ^ ] 1   @ B��
�� 
pnam ^ 4   < @�� _
�� 
cobj _ o   > ?���� 0 thisfile thisFile \ o      ���� 0 thefilename theFileName Z m   8 9 ` `�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��   X  a b a r   F I c d c m   F G e e � f f  u n k n o w n d o      ���� 0 whatkind whatKind b  g h g O   J � i j i k   N � k k  l m l r   N U n o n I  N S�� p��
�� .aevtodocnull  �    alis p o   N O���� 0 thisfile thisFile��   o o      ���� 0 	currimage 	currImage m  q r q r   V g s t s l  V e u���� u 6  V e v w v 4  V Z�� x
�� 
prof x m   X Y����  w =  [ d y z y 1   \ ^��
�� 
pLoc z l  _ c {���� { c   _ c | } | o   ` a���� 0 thisfile thisFile } m   a b��
�� 
alis��  ��  ��  ��   t o      ���� 0 currprofile currProfile r  ~  ~ Q   h { � ��� � k   k r � �  � � � l  k l � � � � o   k l���� 0 	currimage 	currImage �  is it an image?    � � � �  i s   i t   a n   i m a g e ? �  ��� � r   m r � � � m   m p � � � � � 
 i m a g e � o      ���� 0 whatkind whatKind��   � R      ������
�� .ascrerr ****      � ****��  ��  ��     ��� � Q   | � � ��� � k    � � �  � � � l   � � � � � o    ����� 0 currprofile currProfile �  is it a profile?    � � � �   i s   i t   a   p r o f i l e ? �  ��� � r   � � � � � m   � � � � � � �  p r o f i l e � o      ���� 0 whatkind whatKind��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   j m   J K � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   h  � � � l  � ���������  ��  ��   �  � � � Z   � � ����� � =  � � � � � o   � ����� 0 whatkind whatKind � m   � � � � � � � 
 i m a g e � k   � � �  � � � O  � � � � � r   � � � � � I  � ��� ���
�� .corecnte****       **** � n   � � � � � 2   � ���
�� 
prof � o   � ����� 0 	currimage 	currImage��   � o      ���� 0 	profcount 	profCount � m   � � � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   �  � � � Z   � � � ��� � � =  � � � � � o   � ����� 0 	profcount 	profCount � m   � �����   � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � �  n o   p r o f i l e   i n   � o   � ����� 0 thefilename theFileName � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � ����� ��  ��  ��   � k   � � � �  � � � O  � � � � � r   � � � � � l  � � ����� � n   � � � � � 4   � ��� �
�� 
prof � m   � �����  � o   � ��� 0 	currimage 	currImage��  ��   � o      �~�~ 0 
theprofile 
theProfile � m   � � � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��   �  � � � I  � ��}�|�{
�} .miscactvnull��� ��� null�|  �{   �  ��z � I  � ��y � �
�y .sysodlogaskr        TEXT � I   � ��x ��w�x (0 getprofileinfolist getProfileInfoList �  ��v � o   � ��u�u 0 
theprofile 
theProfile�v  �w   � �t � �
�t 
btns � J   � � � �  ��s � m   � � � � � � �  O K�s   � �r ��q
�r 
dflt � m   � ��p�p �q  �z   �  ��o � O  � � � � I  ��n ��m
�n .coreclosnull���    obj  � o   � ��l�l 0 	currimage 	currImage�m   � m   � � � ��                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  �o  ��  ��   �  � � � l �k�j�i�k  �j  �i   �  ��h � Z  2 � ��g�f � =  � � � o  	�e�e 0 whatkind whatKind � m  	 � � � � �  p r o f i l e � k  . � �  � � � I �d�c�b
�d .miscactvnull��� ��� null�c  �b   �  ��a � I .�` � �
�` .sysodlogaskr        TEXT � I  �_ ��^�_ (0 getprofileinfolist getProfileInfoList �  ��] � o  �\�\ 0 currprofile currProfile�]  �^   � �[ � �
�[ 
btns � J  $ � �  ��Z � m  " � � �    O K�Z   � �Y�X
�Y 
dflt m  '(�W�W �X  �a  �g  �f  �h  �� 0 thisfile thisFile F o    �V�V 0 sourcefiles   D  l 88�U�T�S�U  �T  �S   �R O 8F r  <E m  <?�Q�Q  1  ?D�P
�P 
qdel m  89		�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  �R   1 

 l     �O�N�M�O  �N  �M    l     �L�K�J�L  �K  �J    l     �I�I   ) #returns the attributes of a profile    � F r e t u r n s   t h e   a t t r i b u t e s   o f   a   p r o f i l e  l     �H�H    as a list of strings    � ( a s   a   l i s t   o f   s t r i n g s  i     I      �G�F�G (0 getprofileinfolist getProfileInfoList �E o      �D�D 0 prof  �E  �F   k       l     �C!"�C  ! U Osome profile attributes are strings, but others (intent, quality) are constants   " �## � s o m e   p r o f i l e   a t t r i b u t e s   a r e   s t r i n g s ,   b u t   o t h e r s   ( i n t e n t ,   q u a l i t y )   a r e   c o n s t a n t s  $%$ l     �B&'�B  & R Ljust coerce the constants into strings so we have a list of string variables   ' �(( � j u s t   c o e r c e   t h e   c o n s t a n t s   i n t o   s t r i n g s   s o   w e   h a v e   a   l i s t   o f   s t r i n g   v a r i a b l e s% )*) l     �A�@�?�A  �@  �?  * +,+ O    -.- r    /0/ l   	1�>�=1 c    	232 n    454 1    �<
�< 
pLoc5 o    �;�; 0 prof  3 m    �:
�: 
TEXT�>  �=  0 o      �9�9 0 profloc profLoc. m     66�                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  , 787 l   �8�7�6�8  �7  �6  8 9:9 Q    .;<=; O   >?> r    @A@ n    BCB 1    �5
�5 
pnamC l   D�4�3D c    EFE o    �2�2 0 profloc profLocF m    �1
�1 
alis�4  �3  A o      �0�0 0 thename theName? m    GG�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  < R      �/�.�-
�/ .ascrerr ****      � ****�.  �-  = k   $ .HH IJI l  $ $�,KL�,  K  for files on NFS volumes   L �MM 0 f o r   f i l e s   o n   N F S   v o l u m e sJ N�+N O  $ .OPO r   ( -QRQ c   ( +STS o   ( )�*�* 0 profloc profLocT m   ) *�)
�) 
ctxtR o      �(�( 0 thename theNameP m   $ %UU�                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  �+  : VWV l  / /�'�&�%�'  �&  �%  W XYX O   / �Z[Z k   3 �\\ ]^] r   3 8_`_ n   3 6aba 1   4 6�$
�$ 
pnamb o   3 4�#�# 0 prof  ` o      �"�" 0 profname  ^ cdc r   9 @efe c   9 >ghg n   9 <iji 1   : <�!
�! 
pClaj o   9 :� �  0 prof  h m   < =�
� 
TEXTf o      �� 0 	profclass 	profClassd klk r   A Hmnm c   A Fopo n   A Dqrq 1   B D�
� 
pSpcr o   A B�� 0 prof  p m   D E�
� 
TEXTn o      �� 0 	profcolor 	profColorl sts r   I Puvu c   I Nwxw n   I Lyzy 1   J L�
� 
pPCSz o   I J�� 0 prof  x m   L M�
� 
TEXTv o      ��  0 profconnection profConnectiont {|{ r   Q X}~} c   Q V� n   Q T��� 1   R T�
� 
pQal� o   Q R�� 0 prof  � m   T U�
� 
TEXT~ o      �� 0 profquality profQuality| ��� r   Y `��� c   Y ^��� n   Y \��� 1   Z \�
� 
pRdr� o   Y Z�� 0 prof  � m   \ ]�
� 
TEXT� o      �� 0 
profintent 
profIntent� ��� r   a f��� n   a d��� 1   b d�
� 
pcmm� o   a b�� 0 prof  � o      �� 0 profcmm profCMM� ��� r   g l��� n   g j��� 1   h j�

�
 
pCre� o   g h�	�	 0 prof  � o      �� 0 profcreator profCreator� ��� r   m t��� n   m r��� 1   n r�
� 
size� o   m n�� 0 prof  � o      �� 0 profsize profSize� ��� r   u |��� n   u z��� 1   v z�
� 
pVer� o   u v�� 0 prof  � o      �� 0 profversion profVersion� ��� r   } ���� n   } ���� 1   ~ �� 
�  
ascd� o   } ~���� 0 prof  � o      ���� 0 profdate profDate�  [ m   / 0���                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��  Y ��� l  � ���������  ��  ��  � ��� l  � �������  � [ Uconcatenate all the above into one big string for display in a standard dialog window   � ��� � c o n c a t e n a t e   a l l   t h e   a b o v e   i n t o   o n e   b i g   s t r i n g   f o r   d i s p l a y   i n   a   s t a n d a r d   d i a l o g   w i n d o w� ��� l  � �������  � B <anything over 255 characters will be truncated by the dialog   � ��� x a n y t h i n g   o v e r   2 5 5   c h a r a c t e r s   w i l l   b e   t r u n c a t e d   b y   t h e   d i a l o g� ��� l  � �������  � - 'which is why there's no "location" here   � ��� N w h i c h   i s   w h y   t h e r e ' s   n o   " l o c a t i o n "   h e r e� ��� r   ���� b   ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � �   b   � � b   � � o   � ���
�� 
ret  m   � � � 
 f i l e   o   � ����� 0 thename theName l 
 � ����� o   � ���
�� 
ret ��  ��  � m   � �		 �

 
 d e s c  � o   � ����� 0 profname  � l 
 � ����� o   � ���
�� 
ret ��  ��  � m   � � �  c l a s s  � o   � ����� 0 	profclass 	profClass� l 
 � ����� o   � ���
�� 
ret ��  ��  � m   � � �  c o l o r  � o   � ����� 0 	profcolor 	profColor� l 
 � ����� o   � ���
�� 
ret ��  ��  � m   � � �  P C S  � o   � �����  0 profconnection profConnection� l 
 � ����� o   � ���
�� 
ret ��  ��  � m   � � �  q u a l i t y  � o   � ����� 0 profquality profQuality� l 
 � ����� o   � ���
�� 
ret ��  ��  � m   � � �  i n t e n t  � o   � ����� 0 
profintent 
profIntent� l 
 � ����� o   � ���
�� 
ret ��  ��  � m   � � �  C M M  � o   � ����� 0 profcmm profCMM� l 
 � ����� o   � ���
�� 
ret ��  ��  � m   � � �  c r e a t o r  � o   � ����� 0 profcreator profCreator� l 
 � � ����  o   � ���
�� 
ret ��  ��  � m   � �!! �"" 
 s i z e  � o   � ����� 0 profsize profSize� l 
 � �#����# o   � ���
�� 
ret ��  ��  � m   � �$$ �%%  v e r s i o n  � o   � ����� 0 profversion profVersion� l 
 � �&����& o   � ���
�� 
ret ��  ��  � m   � �'' �(( 
 d a t e  � o   � ����� 0 profdate profDate� o   � ��
�� 
ret � o      ���� 0 returnstring returnString� )*) l ��������  ��  ��  * +��+ L  ,, o  ���� 0 returnstring returnString��   -.- l     ��������  ��  ��  . /0/ l     ��12��  1 " this currently isn't used...   2 �33 8 t h i s   c u r r e n t l y   i s n ' t   u s e d . . .0 454 i    676 I      ��8���� 0 writeout writeOut8 9��9 o      ���� 0 	thestring 	theString��  ��  7 k     :: ;<; l     ��=>��  = I Cwrite out results to text file, returns an integer reference number   > �?? � w r i t e   o u t   r e s u l t s   t o   t e x t   f i l e ,   r e t u r n s   a n   i n t e g e r   r e f e r e n c e   n u m b e r< @A@ r     BCB l    
D����D I    
��EF
�� .rdwropenshor       fileE 4     ��G
�� 
fileG o    ����  0 resultfilepath resultFilePathF ��H��
�� 
permH m    ��
�� boovtrue��  ��  ��  C o      ���� 0 
filerefnum 
fileRefnumA IJI I   ��KL
�� .rdwrwritnull���     ****K o    ���� 0 	thestring 	theStringL ��MN
�� 
refnM o    ���� 0 
filerefnum 
fileRefnumN ��O��
�� 
wratO m    ��
�� rdwreof ��  J P��P I   ��Q��
�� .rdwrclosnull���     ****Q o    ���� 0 
filerefnum 
fileRefnum��  ��  5 RSR l     ��������  ��  ��  S TUT l     ��������  ��  ��  U VWV l     ��������  ��  ��  W XYX l     ��������  ��  ��  Y Z[Z l     ��������  ��  ��  [ \]\ l     ��������  ��  ��  ] ^_^ l     ��`a��  ` I Creturns dragged files OR files at first level of one dragged folder   a �bb � r e t u r n s   d r a g g e d   f i l e s   O R   f i l e s   a t   f i r s t   l e v e l   o f   o n e   d r a g g e d   f o l d e r_ cdc i    efe I      ��g���� .0 filelistfromselection filelistFromSelectiong h��h o      ���� 0 theselection  ��  ��  f k     �ii jkj r     lml m     ��
�� boovfalsm o      ���� 0 	hasfolder  k non O    ?pqp X    >r��sr Z    9tu����t G    /vwv l   "x����x =   "yzy n     {|{ 1     ��
�� 
pcls| 4    ��}
�� 
cobj} o    ���� 0 thisitem thisItemz m     !��
�� 
cfol��  ��  w l  % -~����~ =  % -� n   % +��� 1   ) +��
�� 
pcls� 4   % )���
�� 
cobj� o   ' (�� 0 thisitem thisItem� m   + ,�~
�~ 
cdis��  ��  u r   2 5��� m   2 3�}
�} boovtrue� o      �|�| 0 	hasfolder  ��  ��  �� 0 thisitem thisItems l   ��{�z� c    ��� o    �y�y 0 theselection  � m    �x
�x 
list�{  �z  q m    ���                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  o ��� Z   @ f���w�v� F   @ Q��� l  @ K��u�t� ?   @ K��� l  @ I��s�r� I  @ I�q��p
�q .corecnte****       ****� n   @ E��� m   C E�o
�o 
cobj� l  @ C��n�m� c   @ C��� o   @ A�l�l 0 theselection  � m   A B�k
�k 
list�n  �m  �p  �s  �r  � m   I J�j�j �u  �t  � o   N O�i�i 0 	hasfolder  � k   T b�� ��� I  T _�h��
�h .sysodlogaskr        TEXT� m   T U�� ��� N D r a g   m u l t i p l e   f i l e s   o r   a   s i n g l e   f o l d e r .� �g��
�g 
btns� J   V Y�� ��f� m   V W�� ���  O K�f  � �e��d
�e 
dflt� m   Z [�c�c �d  � ��b� L   ` b�� m   ` a�� ���  �b  �w  �v  � ��� O   g ���� Z   k ����a�� o   k l�`�` 0 	hasfolder  � r   o ���� c   o ��� l  o {��_�^� n   o {��� 2   y {�]
�] 
cobj� 4   o y�\�
�\ 
cfol� l  q x��[�Z� n   q x��� 4   t w�Y�
�Y 
cobj� m   u v�X�X � l  q t��W�V� c   q t��� o   q r�U�U 0 theselection  � m   r s�T
�T 
list�W  �V  �[  �Z  �_  �^  � m   { ~�S
�S 
alst� o      �R�R 0 filelist  �a  � r   � ���� l  � ���Q�P� c   � ���� o   � ��O�O 0 theselection  � m   � ��N
�N 
list�Q  �P  � o      �M�M 0 filelist  � m   g h���                                                                                  MACS   alis    \  9A549                      �
�H+     w
Finder.app                                                       r��	�L        ����  	                CoreServices    �3�      �
R�       w   3   2  ,9A549:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    9 A 5 4 9  &System/Library/CoreServices/Finder.app  / ��  � ��L� L   � ��� o   � ��K�K 0 filelist  �L  d ��� l     �J�I�H�J  �I  �H  � ��� l     �G�F�E�G  �F  �E  � ��� l     �D�C�B�D  �C  �B  � ��A� l     �@�?�>�@  �?  �>  �A       �=�������=  � �<�;�:�9�8
�< .aevtoappnull  �   � ****
�; .aevtodocnull  �    alis�: (0 getprofileinfolist getProfileInfoList�9 0 writeout writeOut�8 .0 filelistfromselection filelistFromSelection� �7 �6�5���4
�7 .aevtoappnull  �   � ****�6  �5  �  �  �3�2 &�1�0�/�.�-�,�+
�3 .sysodlogaskr        TEXT
�2 
prmp
�1 
dflc
�0 afdmdesk
�/ .earsffdralis        afdr�. 
�- .sysostdfalis    ��� null�, 0 somefile  
�+ .aevtodocnull  �    alis�4 �j O*����j � E�O�j 
� �* 3�)�(���'
�* .aevtodocnull  �    alis�) 0 draggeditems  �(  � �&�%�$�#�"�!� ��& 0 draggeditems  �% 0 sourcefiles  �$ 0 thisfile thisFile�# 0 thefilename theFileName�" 0 	currimage 	currImage�! 0 currprofile currProfile�  0 	profcount 	profCount� 0 
theprofile 
theProfile� # :����� N��� e����� ��� � �� �� ����� ��
 � ��	�
� .ascrnoop****      � ****� .0 filelistfromselection filelistFromSelection
� 
kocl
� 
cobj
� .corecnte****       ****
� .miscmvisnull���    obj 
� 
alis
� 
pnam� 0 whatkind whatKind
� .aevtodocnull  �    alis
� 
prof�  
� 
pLoc�  �  
� .miscactvnull��� ��� null
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT� (0 getprofileinfolist getProfileInfoList
�
 .coreclosnull���    obj �	 
� 
qdel�'G� *j UO*�k+ E�O"�[��l kh � 
*�/j UO��&E�O� 
*�/�,E�UO�E�O� C�j E�O*�k/�[�,\Z��&81E�O �Oa E�W X  hO �Oa E�W X  hUO�a   o� ��-j E�UO�j  "*j Oa �%a a kva ka  Y ,� ��k/E�UO*j O*�k+ a a kva ka  O� �j UY hO�a   #*j O*�k+ a a  kva ka  Y h[OY��O� a !*a ",FU� ������� (0 getprofileinfolist getProfileInfoList� ��� �  �� 0 prof  �  � �� ��������������������������� 0 prof  �  0 profloc profLoc�� 0 thename theName�� 0 profname  �� 0 	profclass 	profClass�� 0 	profcolor 	profColor��  0 profconnection profConnection�� 0 profquality profQuality�� 0 
profintent 
profIntent�� 0 profcmm profCMM�� 0 profcreator profCreator�� 0 profsize profSize�� 0 profversion profVersion�� 0 profdate profDate�� 0 returnstring returnString�  6����G��������������������������������	!$'
�� 
pLoc
�� 
TEXT
�� 
alis
�� 
pnam��  ��  
�� 
ctxt
�� 
pCla
�� 
pSpc
�� 
pPCS
�� 
pQal
�� 
pRdr
�� 
pcmm
�� 
pCre
�� 
size
�� 
pVer
�� 
ascd
�� 
ret �� 	��,�&E�UO � 	��&�,E�UW X  � ��&E�UO� S��,E�O��,�&E�O��,�&E�O��,�&E�O��,�&E�O��,�&E�O��,E�O��,E�O�a ,E�O�a ,E�O�a ,E�UO_ a %�%_ %a %�%_ %a %�%_ %a %�%_ %a %�%_ %a %�%_ %a %�%_ %a %�%_ %a %�%_ %a %�%_ %a %�%_ %a %�%_ %E�O�� ��7���������� 0 writeout writeOut�� ����� �  ���� 0 	thestring 	theString��  � �������� 0 	thestring 	theString��  0 resultfilepath resultFilePath�� 0 
filerefnum 
fileRefnum� 	������������������
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� *�/�el E�O����� O�j � ��f���������� .0 filelistfromselection filelistFromSelection�� ����� �  ���� 0 theselection  ��  � ���������� 0 theselection  �� 0 	hasfolder  �� 0 thisitem thisItem�� 0 filelist  � ������������������������������
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