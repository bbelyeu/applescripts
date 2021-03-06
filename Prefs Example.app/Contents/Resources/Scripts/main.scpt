FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� BUNDLE IDENTIFIER
To use the UNIX defaults architecture, you must create a unique bundle identifer for your script applets. To assign a bundle identifier to an application, insert the following key/value pair into the Info.plist file within the Contents folder within your script application bundle:

<key>CFBundleIdentifier</key>
<string>com.YourCompanyName.YourApplicationName</string>
     � 	 	
   B U N D L E   I D E N T I F I E R 
 T o   u s e   t h e   U N I X   d e f a u l t s   a r c h i t e c t u r e ,   y o u   m u s t   c r e a t e   a   u n i q u e   b u n d l e   i d e n t i f e r   f o r   y o u r   s c r i p t   a p p l e t s .   T o   a s s i g n   a   b u n d l e   i d e n t i f i e r   t o   a n   a p p l i c a t i o n ,   i n s e r t   t h e   f o l l o w i n g   k e y / v a l u e   p a i r   i n t o   t h e   I n f o . p l i s t   f i l e   w i t h i n   t h e   C o n t e n t s   f o l d e r   w i t h i n   y o u r   s c r i p t   a p p l i c a t i o n   b u n d l e : 
 
 < k e y > C F B u n d l e I d e n t i f i e r < / k e y > 
 < s t r i n g > c o m . Y o u r C o m p a n y N a m e . Y o u r A p p l i c a t i o n N a m e < / s t r i n g > 
   
  
 l     ��������  ��  ��        l      ��  ��    � � WARNING: IF YOU RUN THIS SCRIPT FROM WITHIN THE SCRIPT EDITOR, IT WILL WRITE INTO THE SCRIPT EDITOR'S PREFERENCE FILE INSTEAD OF THE ONE FOR THIS SCRIPT BUNDLE. TEST THE SCRIPT BY LAUNCHING IT FROM THE FINDER.      �  �   W A R N I N G :   I F   Y O U   R U N   T H I S   S C R I P T   F R O M   W I T H I N   T H E   S C R I P T   E D I T O R ,   I T   W I L L   W R I T E   I N T O   T H E   S C R I P T   E D I T O R ' S   P R E F E R E N C E   F I L E   I N S T E A D   O F   T H E   O N E   F O R   T H I S   S C R I P T   B U N D L E .   T E S T   T H E   S C R I P T   B Y   L A U N C H I N G   I T   F R O M   T H E   F I N D E R .        l     ��������  ��  ��        l     ��  ��    5 / Get the bundle identifier for this application     �   ^   G e t   t h e   b u n d l e   i d e n t i f i e r   f o r   t h i s   a p p l i c a t i o n      l     ����  r         I    �� ��
�� .earsffdralis        afdr   f     ��    o      ���� 0 this_application  ��  ��        l     ����   r     ! " ! I   �� #��
�� .sysonfo4asfe        file # o    	���� 0 this_application  ��   " o      ���� 0 	this_info  ��  ��     $ % $ l    &���� & r     ' ( ' n     ) * ) 1    ��
�� 
bnid * o    ���� 0 	this_info   ( o      ����  0 this_bundle_id this_bundle_ID��  ��   %  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / j d Use the UNIX defaults command to try to read the preference. If it does not exists, then create it.    0 � 1 1 �   U s e   t h e   U N I X   d e f a u l t s   c o m m a n d   t o   t r y   t o   r e a d   t h e   p r e f e r e n c e .   I f   i t   d o e s   n o t   e x i s t s ,   t h e n   c r e a t e   i t . .  2 3 2 l   ? 4���� 4 Q    ? 5 6 7 5 I   &�� 8��
�� .sysoexecTEXT���     TEXT 8 b    " 9 : 9 b      ; < ; b     = > = b     ? @ ? m     A A � B B  d e f a u l t s   r e a d @ 1    ��
�� 
spac > o    ����  0 this_bundle_id this_bundle_ID < 1    ��
�� 
spac : m     ! C C � D D  d e f a u l t G r e e t i n g��   6 R      ������
�� .ascrerr ****      � ****��  ��   7 k   . ? E E  F G F l  . .�� H I��   H d ^ notice that the text string used for the value of the preference is encased in single quotes:    I � J J �   n o t i c e   t h a t   t h e   t e x t   s t r i n g   u s e d   f o r   t h e   v a l u e   o f   t h e   p r e f e r e n c e   i s   e n c a s e d   i n   s i n g l e   q u o t e s : G  K�� K I  . ?�� L��
�� .sysoexecTEXT���     TEXT L b   . ; M N M b   . 9 O P O b   . 7 Q R Q b   . 5 S T S b   . 3 U V U b   . 1 W X W m   . / Y Y � Z Z  d e f a u l t s   w r i t e X 1   / 0��
�� 
spac V o   1 2����  0 this_bundle_id this_bundle_ID T 1   3 4��
�� 
spac R m   5 6 [ [ � \ \  d e f a u l t G r e e t i n g P 1   7 8��
�� 
spac N m   9 : ] ] � ^ ^  ' H e l l o   W o r l d ! '��  ��  ��  ��   3  _ ` _ l     ��������  ��  ��   `  a b a l     �� c d��   c 1 + Get the value for the specified preference    d � e e V   G e t   t h e   v a l u e   f o r   t h e   s p e c i f i e d   p r e f e r e n c e b  f g f l  @ S h���� h r   @ S i j i I  @ O�� k��
�� .sysoexecTEXT���     TEXT k b   @ K l m l b   @ G n o n b   @ E p q p b   @ C r s r m   @ A t t � u u  d e f a u l t s   r e a d s 1   A B��
�� 
spac q o   C D����  0 this_bundle_id this_bundle_ID o 1   E F��
�� 
spac m m   G J v v � w w  d e f a u l t G r e e t i n g��   j l      x���� x o      ���� 0 preference_value  ��  ��  ��  ��   g  y z y l     ��������  ��  ��   z  { | { l     �� } ~��   }   display to user    ~ �       d i s p l a y   t o   u s e r |  � � � l  T � ����� � I  T ��� � �
�� .sysodlogaskr        TEXT � b   T  � � � b   T { � � � b   T w � � � b   T s � � � b   T o � � � b   T k � � � b   T g � � � b   T c � � � b   T _ � � � b   T [ � � � m   T W � � � � � � A   s c r i p t   f o r   d e m o n s t r a t i n g   h o w   t o   u s e   t h e   U N I X   D e f a u l t s   a r c h i t e c t u r e   t o   s t o r e   i n f o r m a t i o n . � o   W Z��
�� 
ret  � o   [ ^��
�� 
ret  � m   _ b � � � � � \ T h e   v a l u e   f o r   p r e f e r e n c e    d e f a u l t G r e e t i n g    i s : � o   c f��
�� 
ret  � o   g j��
�� 
ret  � 1   k n��
�� 
tab  � o   o r���� 0 preference_value   � o   s v��
�� 
ret  � o   w z��
�� 
ret  � m   { ~ � � � � � $ E n t e r   a   n e w   v a l u e : � �� � �
�� 
dtxt � o   � ����� 0 preference_value   � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  H e l p �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � ����� ��  ��  ��   �  � � � l  � � ����� � s   � � � � � c   � � � � � l  � � ����� � 1   � ���
�� 
rslt��  ��   � m   � ���
�� 
list � J       � �  � � � o      ���� 0 text_returned   �  ��� � o      ���� 0 button_pressed  ��  ��  ��   �  � � � l  �� ����� � Z   �� � � ��� � =  � � � � � l  � � ����� � o   � ����� 0 button_pressed  ��  ��   � m   � � � � � � �  O K � k   � � � �  � � � l  � ��� � ���   � ' ! encase the text in single quotes    � � � � B   e n c a s e   t h e   t e x t   i n   s i n g l e   q u o t e s �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
strq � l  � � ����� � o   � ����� 0 text_returned  ��  ��  ��  ��   � o      ���� 0 
this_value   �  � � � l  � ��� � ���   �   write the new value    � � � � (   w r i t e   t h e   n e w   v a l u e �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  d e f a u l t s   w r i t e � 1   � ���
�� 
spac � o   � �����  0 this_bundle_id this_bundle_ID � 1   � ���
�� 
spac � m   � � � � � � �  d e f a u l t G r e e t i n g � 1   � ���
�� 
spac � o   � ����� 0 
this_value  ��  ��  ��  ��   �  � � � =  � � � � � l  � � ����� � o   � ����� 0 button_pressed  ��  ��   � m   � � � � � � �  H e l p �  ��� � k   �� � �  � � � r   � � � � c   � � � � l  � ����� � I  ��� � �
�� .gtqpchltTEXT  @   @ TEXT � J   � � �  � � � m   � � � � � � � J O p e n   t h i s   s c r i p t   i n   t h e   S c r i p t   E d i t o r �    m   � � � T L o c a t e   t h e   p r e f e r e n c e   f i l e   f o r   t h i s   s c r i p t �� m   � � � Z V i e w   t h e   U N I X   m a n u a l   f o r   t h e   d e f a u l t s   c o m m a n d��   � ����
�� 
prmp m   �		  Y o u   c a n :��  ��  ��   � m  �
� 
utxt � o      �~�~ 0 this_action   � 
�}
 Z  ��| =  o  �{�{ 0 this_action   m   � 
 f a l s e L  " m  ! �  u s e r   c a n c e l l e d  = %, o  %(�z�z 0 this_action   m  (+ � J O p e n   t h i s   s c r i p t   i n   t h e   S c r i p t   E d i t o r  P  /I�y O  6H  k  <G!! "#" I <A�x�w�v
�x .miscactvnull��� ��� null�w  �v  # $�u$ I BG�t%�s
�t .aevtodocnull  �    alis% o  BC�r�r 0 this_application  �s  �u    m  69&&�                                                                                  ToyS   alis    �  Macintosh HD               �|~�H+    6�Script Editor.app                                                g����        ����  	                AppleScript     �|�9      ��j      6�     7Macintosh HD:Applications:AppleScript:Script Editor.app   $  S c r i p t   E d i t o r . a p p    M a c i n t o s h   H D  *Applications/AppleScript/Script Editor.app  / ��  �y   �q�p
�q consrmte�p   '(' = LS)*) o  LO�o�o 0 this_action  * m  OR++ �,, T L o c a t e   t h e   p r e f e r e n c e   f i l e   f o r   t h i s   s c r i p t( -.- k  V�// 010 r  Vg232 l Vc4�n�m4 I Vc�l56
�l .earsffdralis        afdr5 m  VY�k
�k afdmpref6 �j7�i
�j 
from7 m  \_�h
�h fldmfldu�i  �n  �m  3 l     8�g�f8 o      �e�e 0 preferences_folder  �g  �f  1 9�d9 O  h�:;: k  n�<< =>= r  nw?@? l nsA�c�bA b  nsBCB o  no�a�a  0 this_bundle_id this_bundle_IDC m  orDD �EE  . p l i s t�c  �b  @ l     F�`�_F o      �^�^ 0 prefs_filename  �`  �_  > G�]G Z  x�HI�\�[H I x��ZJ�Y
�Z .coredoexbool       obj J l x�K�X�WK n  x�LML 4  {��VN
�V 
docfN o  ~��U�U 0 prefs_filename  M o  x{�T�T 0 preferences_folder  �X  �W  �Y  I k  ��OO PQP I ���S�R�Q
�S .miscactvnull��� ��� null�R  �Q  Q R�PR I ���OS�N
�O .miscmvisnull���    obj S l ��T�M�LT n  ��UVU 4  ���KW
�K 
docfW o  ���J�J 0 prefs_filename  V o  ���I�I 0 preferences_folder  �M  �L  �N  �P  �\  �[  �]  ; m  hkXX�                                                                                  MACS   alis    r  Macintosh HD               �|~�H+    x
Finder.app                                                       E����        ����  	                CoreServices    �|�9      ��'b      x  T  S  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �d  . YZY = ��[\[ o  ���H�H 0 this_action  \ m  ��]] �^^ Z V i e w   t h e   U N I X   m a n u a l   f o r   t h e   d e f a u l t s   c o m m a n dZ _�G_ k  ��`` aba r  ��cdc I ���Fe�E
�F .sysoexecTEXT���     TEXTe m  ��ff �gg . m a n   " d e f a u l t s "   |   c o l   - b�E  d o      �D�D 0 	this_text  b h�Ch O  ��iji k  ��kk lml I ���B�A�@
�B .miscactvnull��� ��� null�A  �@  m non r  ��pqp I ���?�>r
�? .corecrel****      � null�>  r �=s�<
�= 
kocls m  ���;
�; 
docu�<  q o      �:�: 0 this_document  o t�9t r  ��uvu o  ���8�8 0 	this_text  v l     w�7�6w n      xyx m  ���5
�5 
ctxty o  ���4�4 0 this_document  �7  �6  �9  j m  ��zz�                                                                                  ttxt   alis    T  Macintosh HD               �|~�H+     TextEdit.app                                                     p����$        ����  	                Applications    �|�9      ��+�         &Macintosh HD:Applications:TextEdit.app    T e x t E d i t . a p p    M a c i n t o s h   H D  Applications/TextEdit.app   / ��  �C  �G  �|  �}  ��  ��  ��  ��   � {|{ l     �3�2�1�3  �2  �1  | }�0} l      �/~�/  ~d^ PROPERTY TYPES
-- Boolean
do shell script "com.YourCompanyName.YourApplicationName booleanPreference -bool YES"
-- String. Note the use of the single quotes encasing the text
do shell script "com.YourCompanyName.YourApplicationName booleanPreference -string 'Hello, dude!'"
-- Integer
do shell script "com.YourCompanyName.YourApplicationName booleanPreference -int 234"
-- Float
do shell script "com.YourCompanyName.YourApplicationName booleanPreference -float '234.0345'"
-- Property with list value. Note the escaping of the quote marks (\")
do shell script "defaults write com.YourCompanyName.YourApplicationName \"Default Color\" '(255, 0, 0)'"
-- Creating a propertly list
do shell script "defaults write com.companyname.appname '{ \"Default Color\" = (255, 0, 0);
                                                        \"Default Font\" = Helvetica; }';"
    ����   P R O P E R T Y   T Y P E S 
 - -   B o o l e a n 
 d o   s h e l l   s c r i p t   " c o m . Y o u r C o m p a n y N a m e . Y o u r A p p l i c a t i o n N a m e   b o o l e a n P r e f e r e n c e   - b o o l   Y E S " 
 - -   S t r i n g .   N o t e   t h e   u s e   o f   t h e   s i n g l e   q u o t e s   e n c a s i n g   t h e   t e x t 
 d o   s h e l l   s c r i p t   " c o m . Y o u r C o m p a n y N a m e . Y o u r A p p l i c a t i o n N a m e   b o o l e a n P r e f e r e n c e   - s t r i n g   ' H e l l o ,   d u d e ! ' " 
 - -   I n t e g e r 
 d o   s h e l l   s c r i p t   " c o m . Y o u r C o m p a n y N a m e . Y o u r A p p l i c a t i o n N a m e   b o o l e a n P r e f e r e n c e   - i n t   2 3 4 " 
 - -   F l o a t 
 d o   s h e l l   s c r i p t   " c o m . Y o u r C o m p a n y N a m e . Y o u r A p p l i c a t i o n N a m e   b o o l e a n P r e f e r e n c e   - f l o a t   ' 2 3 4 . 0 3 4 5 ' " 
 - -   P r o p e r t y   w i t h   l i s t   v a l u e .   N o t e   t h e   e s c a p i n g   o f   t h e   q u o t e   m a r k s   ( \ " ) 
 d o   s h e l l   s c r i p t   " d e f a u l t s   w r i t e   c o m . Y o u r C o m p a n y N a m e . Y o u r A p p l i c a t i o n N a m e   \ " D e f a u l t   C o l o r \ "   ' ( 2 5 5 ,   0 ,   0 ) ' " 
 - -   C r e a t i n g   a   p r o p e r t l y   l i s t 
 d o   s h e l l   s c r i p t   " d e f a u l t s   w r i t e   c o m . c o m p a n y n a m e . a p p n a m e   ' {   \ " D e f a u l t   C o l o r \ "   =   ( 2 5 5 ,   0 ,   0 ) ; 
                                                                                                                 \ " D e f a u l t   F o n t \ "   =   H e l v e t i c a ;   } ' ; " 
�0       �.���������������-�,�+�.  � �*�)�(�'�&�%�$�#�"�!� �����
�* .aevtoappnull  �   � ****�) 0 this_application  �( 0 	this_info  �'  0 this_bundle_id this_bundle_ID�& 0 preference_value  �% 0 text_returned  �$ 0 button_pressed  �# 0 this_action  �" 0 preferences_folder  �! 0 prefs_filename  �  0 	this_text  � 0 this_document  � 0 
this_value  �  �  �  � �������
� .aevtoappnull  �   � ****� k    ���  ��  ��  $��  2��  f��  ���  ���  ���  �  �  �  � L������ A� C��� Y [ ] t v� ��
 ��	 ��� � �������� �� ����� � � � ���������&����+��������XD��������]f��z����������
� .earsffdralis        afdr� 0 this_application  
� .sysonfo4asfe        file� 0 	this_info  
� 
bnid�  0 this_bundle_id this_bundle_ID
� 
spac
� .sysoexecTEXT���     TEXT�  �  � 0 preference_value  
�
 
ret 
�	 
tab 
� 
dtxt
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
rslt
� 
list
� 
cobj�  0 text_returned  �� 0 button_pressed  
�� 
strq�� 0 
this_value  
�� 
prmp
�� .gtqpchltTEXT  @   @ TEXT
�� 
utxt�� 0 this_action  
�� .miscactvnull��� ��� null
�� .aevtodocnull  �    alis
�� afdmpref
�� 
from
�� fldmfldu�� 0 preferences_folder  �� 0 prefs_filename  
�� 
docf
�� .coredoexbool       obj 
�� .miscmvisnull���    obj �� 0 	this_text  
�� 
kocl
�� 
docu
�� .corecrel****      � null�� 0 this_document  
�� 
ctxt��)j  E�O�j E�O��,E�O ��%�%�%�%j 	W X 
 ��%�%�%�%�%�%j 	O��%�%�%a %j 	E` Oa _ %_ %a %_ %_ %_ %_ %_ %_ %a %a _ a a a lva la  O_ a &E[a  k/EQ` !Z[a  l/EQ` "ZO_ "a #  (_ !a $,E` %Oa &�%�%�%a '%�%_ %%j 	Y_ "a (  �a )a *a +mva ,a -l .a /&E` 0O_ 0a 1  	a 2Y �_ 0a 3  ga 4 a 5 *j 6O�j 7UVY �_ 0a 8  Qa 9a :a ;l  E` <Oa = 5�a >%E` ?O_ <a @_ ?/j A *j 6O_ <a @_ ?/j BY hUY D_ 0a C  9a Dj 	E` EOa F #*j 6O*a Ga Hl IE` JO_ E_ Ja K-FUY hY h��alis    �  Macintosh HD               �|~�H+   �XPrefs Example.app                                               |��p�{        ����  	                Desktop     �|�9      �q�     �X �M  o�  4Macintosh HD:Users:bbelyeu:Desktop:Prefs Example.app  $  P r e f s   E x a m p l e . a p p    M a c i n t o s h   H D  'Users/bbelyeu/Desktop/Prefs Example.app   /    ��  � ����
�� 
pnam� ��� " P r e f s   E x a m p l e . a p p� ����
�� 
ascd� ldt     �p�{� ����
�� 
asmo� ldt     �p�{� �����
�� 
ptsz��  jN� �����
�� 
asdr
�� boovtrue� �����
�� 
alis
�� boovfals� �����
�� 
ispk
�� boovtrue� �����
�� 
pvis
�� boovtrue� �����
�� 
hidx
�� boovtrue� ����
�� 
nmxt� ���  a p p� ����
�� 
dnam� ��� " P r e f s   E x a m p l e . a p p� ����
�� 
cfbn� ���  P r e f s   E x a m p l e� ����
�� 
asda��alis    �  Macintosh HD               �|~�H+   �XPrefs Example.app                                               |��p�{        ����  	                Desktop     �|�9      �q�     �X �M  o�  4Macintosh HD:Users:bbelyeu:Desktop:Prefs Example.app  $  P r e f s   E x a m p l e . a p p    M a c i n t o s h   H D  'Users/bbelyeu/Desktop/Prefs Example.app   /    ��  � ����
�� 
kind� ���  A p p l i c a t i o n� �����
�� 
assv
�� 
msng� �����
�� 
aslv
�� 
msng� ����
�� 
bnid� ��� L c o m . a p p l e . A p p l e S c r i p t . U N I X P r e f s E x a m p l e� ����
�� 
asty� ���  A P P L� ����
�� 
asct� ���  a p l t� ����
�� 
utid� ��� 8 c o m . a p p l e . a p p l i c a t i o n - b u n d l e� ������
�� 
bzst
�� boovfals��  � ���  j u s t   m e� ���  H e l l o   B r a d .� ���  O K� ��� Z V i e w   t h e   U N I X   m a n u a l   f o r   t h e   d e f a u l t s   c o m m a n d�halis    d  Macintosh HD               ��\�H+   i�Preferences                                                     �ҿ��        ����  	                Library     ���$      ��7�     i� 6) :�  *Macintosh HD:Users:sal:Library:Preferences    P r e f e r e n c e s    M a c i n t o s h   H D  Users/sal/Library/Preferences   /    
��  � ��� X c o m . a p p l e . A p p l e S c r i p t . U N I X P r e f s E x a m p l e . p l i s t� ���?( D E F A U L T S ( 1 ) 	 	     B S D   G e n e r a l   C o m m a n d s   M a n u a l 	 	       D E F A U L T S ( 1 )   N A M E            d e f a u l t s   - -   a c c e s s   t h e   M a c   O S   X   u s e r   d e f a u l t s   s y s t e m   S Y N O P S I S            d e f a u l t s   [ - c u r r e n t H o s t   |   - h o s t   h o s t n a m e ]   r e a d   [ d o m a i n   [ k e y ] ]             d e f a u l t s   [ - c u r r e n t H o s t   |   - h o s t   h o s t n a m e ]   r e a d - t y p e   d o m a i n   k e y             d e f a u l t s   [ - c u r r e n t H o s t   |   - h o s t   h o s t n a m e ]   w r i t e   d o m a i n   {   ' p l i s t '   |   k e y  	             ' v a l u e '   }             d e f a u l t s   [ - c u r r e n t H o s t   |   - h o s t   h o s t n a m e ]   r e n a m e   d o m a i n   o l d _ k e y   n e w _ k e y             d e f a u l t s   [ - c u r r e n t H o s t   |   - h o s t   h o s t n a m e ]   d e l e t e   [ d o m a i n   [ k e y ] ]             d e f a u l t s   [ - c u r r e n t H o s t   |   - h o s t   h o s t n a m e ]   {   d o m a i n s   |   f i n d   w o r d   |   h e l p   }   D E S C R I P T I O N            D e f a u l t s   a l l o w s   u s e r s   t o   r e a d ,   w r i t e ,   a n d   d e l e t e   M a c   O S   X   u s e r   d e f a u l t s            f r o m   a   c o m m a n d - l i n e   s h e l l .   M a c   O S   X   a p p l i c a t i o n s   a n d   o t h e r   p r o g r a m s   u s e            t h e   d e f a u l t s   s y s t e m   t o   r e c o r d   u s e r   p r e f e r e n c e s   a n d   o t h e r   i n f o r m a t i o n   t h a t            m u s t   b e   m a i n t a i n e d   w h e n   t h e   a p p l i c a t i o n s   a r e n ' t   r u n n i n g   ( s u c h   a s   d e f a u l t            f o n t   f o r   n e w   d o c u m e n t s ,   o r   t h e   p o s i t i o n   o f   a n   I n f o   p a n e l ) .   M u c h   o f   t h i s            i n f o r m a t i o n   i s   a c c e s s i b l e   t h r o u g h   a n   a p p l i c a t i o n ' s   P r e f e r e n c e s   p a n e l ,   b u t            s o m e   o f   i t   i s n ' t ,   s u c h   a s   t h e   p o s i t i o n   o f   t h e   I n f o   p a n e l .   Y o u   c a n   a c c e s s            t h i s   i n f o r m a t i o n   w i t h   d e f a u l t s             N o t e :   S i n c e   a p p l i c a t i o n s   d o   a c c e s s   t h e   d e f a u l t s   s y s t e m   w h i l e   t h e y ' r e   r u n -            n i n g ,   y o u   s h o u l d n ' t   m o d i f y   t h e   d e f a u l t s   o f   a   r u n n i n g   a p p l i c a t i o n .   I f   y o u            c h a n g e   a   d e f a u l t   i n   a   d o m a i n   t h a t   b e l o n g s   t o   a   r u n n i n g   a p p l i c a t i o n ,   t h e            a p p l i c a t i o n   w o n ' t   s e e   t h e   c h a n g e   a n d   m i g h t   e v e n   o v e r w r i t e   t h e   d e f a u l t .             U s e r   d e f a u l t s   b e l o n g   t o   d o m a i n s ,   w h i c h   t y p i c a l l y   c o r r e s p o n d   t o   i n d i v i d u a l            a p p l i c a t i o n s .   E a c h   d o m a i n   h a s   a   d i c t i o n a r y   o f   k e y s   a n d   v a l u e s   r e p r e s e n t -            i n g   i t s   d e f a u l t s ;   f o r   e x a m p l e ,   " D e f a u l t   F o n t "   =   " H e l v e t i c a " .   K e y s   a r e            a l w a y s   s t r i n g s ,   b u t   v a l u e s   c a n   b e   c o m p l e x   d a t a   s t r u c t u r e s   c o m p r i s i n g            a r r a y s ,   d i c t i o n a r i e s ,   s t r i n g s ,   a n d   b i n a r y   d a t a .   T h e s e   d a t a   s t r u c t u r e s   a r e            s t o r e d   a s   X M L   P r o p e r t y   L i s t s .             T h o u g h   a l l   a p p l i c a t i o n s ,   s y s t e m   s e r v i c e s ,   a n d   o t h e r   p r o g r a m s   h a v e   t h e i r            o w n   d o m a i n s ,   t h e y   a l s o   s h a r e   a   d o m a i n   n a m e d   N S G l o b a l D o m a i n .     I f   a   d e f a u l t            i s n ' t   s p e c i f i e d   i n   t h e   a p p l i c a t i o n ' s   d o m a i n ,   b u t   i s   s p e c i f i e d   i n            N S G l o b a l D o m a i n ,   t h e n   t h e   a p p l i c a t i o n   u s e s   t h e   v a l u e   i n   t h a t   d o m a i n .             T h e   c o m m a n d s   a r e   a s   f o l l o w s :             r e a d 	     P r i n t s   a l l   o f   t h e   u s e r ' s   d e f a u l t s ,   f o r   e v e r y   d o m a i n ,   t o  	 	     s t a n d a r d   o u t p u t .             r e a d   d o m a i n     P r i n t s   a l l   o f   t h e   u s e r ' s   d e f a u l t s   f o r   d o m a i n   t o   s t a n d a r d  	 	     o u t p u t .             r e a d   d o m a i n   k e y  	 	     P r i n t s   t h e   v a l u e   f o r   t h e   d e f a u l t   o f   d o m a i n   i d e n t i f i e d   b y  	 	     k e y .             r e a d - t y p e   d o m a i n   k e y  	 	     P r i n t s   t h e   p l i s t   t y p e   f o r   t h e   g i v e n   d o m a i n   i d e n t i f i e d   b y  	 	     k e y .             w r i t e   d o m a i n   k e y   ' v a l u e '  	 	     W r i t e s   v a l u e   a s   t h e   v a l u e   f o r   k e y   i n   d o m a i n . 	 v a l u e   m u s t   b e  	 	     a   p r o p e r t y   l i s t ,   a n d   m u s t   b e   e n c l o s e d   i n   s i n g l e   q u o t e s .     F o r  	 	     e x a m p l e :   	 	 	 d e f a u l t s   w r i t e   c o m . c o m p a n y n a m e . a p p n a m e   " D e f a u l t   C o l o r "   ' ( 2 5 5 ,   0 ,   0 ) '   	 	     s e t s   t h e   v a l u e   f o r   D e f a u l t   C o l o r   t o   a n   a r r a y   c o n t a i n i n g   t h e  	 	     s t r i n g s   2 5 5 ,   0 ,   0   ( t h e   r e d ,   g r e e n ,   a n d   b l u e   c o m p o n e n t s ) .  	 	     N o t e   t h a t   t h e   k e y   i s   e n c l o s e d   i n   q u o t a t i o n   m a r k s   b e c a u s e   i t  	 	     c o n t a i n s   a   s p a c e .             w r i t e   d o m a i n   ' p l i s t '  	 	     O v e r w r i t e s   t h e   d e f a u l t s   i n f o r m a t i o n   i n   d o m a i n   w i t h   t h a t  	 	     g i v e n   a s   p l i s t .     p l i s t   m u s t   b e   a   p r o p e r t y   l i s t   r e p r e s e n t a -  	 	     t i o n   o f   a   d i c t i o n a r y ,   a n d   m u s t   b e   e n c l o s e d   i n   s i n g l e   q u o t e s .  	 	     F o r   e x a m p l e :   	 	 	 d e f a u l t s   w r i t e   c o m . c o m p a n y n a m e . a p p n a m e   ' {   " D e f a u l t   C o l o r "   =   ( 2 5 5 ,   0 ,   0 ) ;  	 	 	 	 	 	 	 " D e f a u l t   F o n t "   =   H e l v e t i c a ;   } ' ;   	 	     e r a s e s   a n y   p r e v i o u s   d e f a u l t s   f o r   c o m . c o m p a n y n a m e . a p p n a m e   a n d  	 	     w r i t e s   t h e   v a l u e s   f o r   t h e   t w o   n a m e s   i n t o   t h e   d e f a u l t s   s y s -  	 	     t e m .             d e l e t e   d o m a i n  	 	     R e m o v e s   a l l   d e f a u l t   i n f o r m a t i o n   f o r   d o m a i n .             d e l e t e   d o m a i n   k e y  	 	     R e m o v e s   t h e   d e f a u l t   n a m e d   k e y   f r o m   d o m a i n .             d o m a i n s 	     P r i n t s   t h e   n a m e s   o f   a l l   d o m a i n s   i n   t h e   u s e r ' s   d e f a u l t s   s y s -  	 	     t e m .             f i n d   w o r d 	     S e a r c h e s   f o r   w o r d   i n   t h e   d o m a i n   n a m e s ,   k e y s ,   a n d   v a l u e s   o f  	 	     t h e   u s e r ' s   d e f a u l t s ,   a n d   p r i n t s   o u t   a   l i s t   o f   m a t c h e s .             h e l p 	     P r i n t s   a   l i s t   o f   p o s s i b l e   c o m m a n d   f o r m a t s .   O P T I O N S            S p e c i f y i n g   d o m a i n s :             d o m a i n         I f   n o   f l a g   i s   s p e c i f i e d ,   d o m a i n   i s   a   d o m a i n   n a m e   o f   t h e   f o r m  	               c o m . c o m p a n y n a m e . a p p n a m e . 	   E x a m p l e :   	 	           d e f a u l t s   r e a d   c o m . a p p l e . T e x t E d i t             - a p p   a p p l i c a t i o n  	               T h e   n a m e   o f   a n   a p p l i c a t i o n   m a y   b e   p r o v i d e d   i n s t e a d   o f   a   d o m a i n  	               u s i n g   t h e   - a p p   f l a g .   E x a m p l e :   	 	           d e f a u l t s   r e a d   - a p p   T e x t E d i t             f i l e p a t h     D o m a i n s   m a y   a l s o   b e   s p e c i f i e d   a s   a   p a t h   t o   a n   a r b i t r a r y   p l i s t  	               f i l e ,   o m i t t i n g   t h e   ' . p l i s t '   e x t e n s i o n .   F o r   e x a m p l e :   	 	           d e f a u l t s   r e a d   ~ / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . T e x t E d i t   	               n o r m a l l y   g i v e s   t h e   s a m e   r e s u l t   a s   t h e   t w o   p r e v i o u s   e x a m p l e s .  	               I n   t h e   f o l l o w i n g   e x a m p l e :   	 	           d e f a u l t s   w r i t e   ~ / D e s k t o p / T e s t F i l e   f o o   b a r   	               w i l l   w r i t e   t h e   k e y   ' f o o '   w i t h   t h e   v a l u e   ' b a r '   i n t o   t h e   p l i s t  	               f i l e   ' T e s t F i l e . p l i s t '   t h a t   i s   o n   t h e   u s e r ' s   d e s k t o p .   I f   t h e  	               f i l e   d o e s   n o t   e x i s t ,   i t   w i l l   b e   c r e a t e d .   I f   i t   d o e s   e x i s t ,   t h e  	               k e y - v a l u e   p a i r   w i l l   b e   a d d e d ,   o v e r w r i t i n g   t h e   v a l u e   o f   ' f o o '   i f  	               i t   a l r e a d y   e x i s t e d .             - g   |   - g l o b a l D o m a i n   |   N S G l o b a l D o m a i n  	               S p e c i f y   t h e   g l o b a l   d o m a i n .   ' - g '   a n d   ' - g l o b a l D o m a i n '   m a y   b e   u s e d  	               a s   s y n o n y m s   f o r   N S G l o b a l D o m a i n .             S p e c i f y i n g   v a l u e   t y p e s   f o r   p r e f e r e n c e   k e y s :   	 	   I f   n o   t y p e   f l a g   i s   p r o v i d e d ,   d e f a u l t s   w i l l   a s s u m e   t h e   v a l u e  	 	   i s   a   v a l i d   p l i s t   o r   p l i s t   t y p e ,   a n d   t r y   t o   d e t e r m i n e   t h e   c o r -  	 	   r e c t   v a l u e   t y p e   b y   p a r s i n g   t h e   v a l u e .   F o r   b e s t   r e s u l t s ,   u s e  	 	   o n e   o f   t h e   t y p e   f l a g s ,   l i s t e d   b e l o w .             - s t r i n g 	   A l l o w s   t h e   u s e r   t o   s p e c i f y   a   s t r i n g   a s   t h e   v a l u e   f o r   t h e  	 	   g i v e n   p r e f e r e n c e   k e y .             - d a t a 	   A l l o w s   t h e   u s e r   t o   s p e c i f y   a   b u n c h   o f   r a w   d a t a   b y t e s   a s   t h e  	 	   v a l u e   f o r   t h e   g i v e n   p r e f e r e n c e   k e y .     T h e   d a t a   m u s t   b e   p r o -  	 	   v i d e d   i n   h e x i d e c i m a l .             - i n t [ e g e r ] 	   A l l o w s   t h e   u s e r   t o   s p e c i f y   a n   i n t e g e r   a s   t h e   v a l u e   f o r   t h e  	 	   g i v e n   p r e f e r e n c e   k e y .             - f l o a t 	   A l l o w s   t h e   u s e r   t o   s p e c i f y   a   f l o a t i n g   p o i n t   n u m b e r   a s   t h e  	 	   v a l u e   f o r   t h e   g i v e n   p r e f e r e n c e   k e y .             - b o o l [ e a n ] 	   A l l o w s   t h e   u s e r   t o   s p e c i f y   a   b o o l e a n   a s   t h e   v a l u e   f o r   t h e  	 	   g i v e n   p r e f e r e n c e   k e y . 	 V a l u e   m u s t   b e   T R U E ,   F A L S E ,   Y E S ,   o r   N O .             - d a t e 	   A l l o w s   t h e   u s e r   t o   s p e c i f y   a   d a t e   a s   t h e   v a l u e   f o r   t h e   g i v e n  	 	   p r e f e r e n c e   k e y .             - a r r a y 	   A l l o w s   t h e   u s e r   t o   s p e c i f y   a n   a r r a y   a s   t h e   v a l u e   f o r   t h e  	 	   g i v e n   p r e f e r e n c e   k e y :   	 	               d e f a u l t s   w r i t e   s o m e d o m a i n   p r e f e r e n c e K e y   - a r r a y   e l e m e n t 1   e l e m e n t 2   e l e m e n t 3   	 	   T h e   s p e c i f i e d   a r r a y   o v e r w r i t e s   t h e   v a l u e   o f   t h e   k e y   i f   t h e  	 	   k e y   w a s   p r e s e n t   a t   t h e   t i m e   o f   t h e   w r i t e .   I f   t h e   k e y   w a s   n o t  	 	   p r e s e n t ,   i t   i s   c r e a t e d   w i t h   t h e   n e w   v a l u e .             - a r r a y - a d d 	   A l l o w s   t h e   u s e r   t o   a d d   n e w   e l e m e n t s   t o   t h e   e n d   o f   a n   a r r a y  	 	   f o r   a   k e y   w h i c h   h a s   a n   a r r a y   a s   i t s   v a l u e .   U s a g e   i s   t h e   s a m e  	 	   a s   - a r r a y   a b o v e .   I f   t h e   k e y   w a s   n o t   p r e s e n t ,   i t   i s   c r e a t e d  	 	   w i t h   t h e   s p e c i f i e d   a r r a y   a s   i t s   v a l u e .             - d i c t 	   A l l o w s   t h e   u s e r   t o   a d d   a   d i c t i o n a r y   t o   t h e   d e f a u l t s   d a t a b a s e  	 	   f o r   a   d o m a i n . 	 K e y s   a n d   v a l u e s   a r e   s p e c i f i e d   i n   o r d e r :   	 	               d e f a u l t s   w r i t e   s o m e d o m a i n   p r e f e r e n c e K e y   - d i c t   k e y 1   v a l u e 1   k e y 2   v a l u e 2   	 	   T h e   s p e c i f i e d   d i c t i o n a r y   o v e r w r i t e s   t h e   v a l u e   o f   t h e   k e y   i f  	 	   t h e   k e y   w a s   p r e s e n t   a t   t h e   t i m e   o f   t h e   w r i t e .   I f   t h e   k e y   w a s  	 	   n o t   p r e s e n t ,   i t   i s   c r e a t e d   w i t h   t h e   n e w   v a l u e .             - d i c t - a d d 	   A l l o w s   t h e   u s e r   t o   a d d   n e w   k e y / v a l u e   p a i r s   t o   a   d i c t i o n a r y  	 	   f o r   a   k e y   w h i c h   h a s   a   d i c t i o n a r y   a s   i t s   v a l u e .   U s a g e   i s   t h e  	 	   s a m e   a s   - d i c t   a b o v e .   I f   t h e   k e y   w a s   n o t   p r e s e n t ,   i t   i s   c r e -  	 	   a t e d   w i t h   t h e   s p e c i f i e d   d i c t i o n a r y   a s   i t s   v a l u e .             S p e c i f y i n g   a   h o s t   f o r   p r e f e r e n c e s :             O p e r a t i o n s   o n   t h e   d e f a u l t s   d a t a b a s e   n o r m a l l y   a p p l y   t o   a n y   h o s t   t h e   u s e r            m a y   l o g   i n   o n ,   b u t   m a y   b e   r e s t r i c t e d   t o   a p p l y   o n l y   t o   a   s p e c i f i c   h o s t .   	               I f   n o   h o s t   i s   p r o v i d e d ,   p r e f e r e n c e s   o p e r a t i o n s   w i l l   a p p l y   t o  	               a n y   h o s t   t h e   u s e r   m a y   l o g   i n   o n .             - c u r r e n t H o s t  	               R e s t r i c t s   p r e f e r e n c e s   o p e r a t i o n s   t o   t h e   h o s t   t h e   u s e r   i s   c u r -  	               r e n t l y   l o g g e d   i n   o n .             - h o s t   h o s t n a m e  	               R e s t r i c t s   p r e f e r e n c e s   o p e r a t i o n s   t o   h o s t n a m e .   B U G S            D e f a u l t s   c a n   b e   s t r u c t u r e d   i n   v e r y   c o m p l e x   w a y s ,   m a k i n g   i t   d i f f i c u l t   f o r            t h e   u s e r   t o   e n t e r   t h e m   w i t h   t h i s   c o m m a n d .   H I S T O R Y            F i r s t   a p p e a r e d   i n   N e X T S t e p .   M a c   O S 	 	 	 	     N o v   3 ,   2 0 0 3 	 	 	 	 M a c   O S� �� z����
�� 
docu�� � ���  ' H e l l o   B r a d . '�-  �,  �+   ascr  ��ޭ