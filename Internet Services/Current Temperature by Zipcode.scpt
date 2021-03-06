FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Current Temperature by Zipcode

This script is an example of using a SOAP method to retrieve information
from a remote service. This script shows how to use a service that
could retrieve the current temperature when given the zip code for a location.
However, the service no longer gives live temperature data
and is now available for demo purposes only.

WSDL URL:	http://www.xmethods.net/sd/2001/TemperatureService.wsdl �(IBM WSDL Toolkit 1.1 - compatible version)
Copyright � 2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	z 
 C u r r e n t   T e m p e r a t u r e   b y   Z i p c o d e 
 
 T h i s   s c r i p t   i s   a n   e x a m p l e   o f   u s i n g   a   S O A P   m e t h o d   t o   r e t r i e v e   i n f o r m a t i o n 
 f r o m   a   r e m o t e   s e r v i c e .   T h i s   s c r i p t   s h o w s   h o w   t o   u s e   a   s e r v i c e   t h a t 
 c o u l d   r e t r i e v e   t h e   c u r r e n t   t e m p e r a t u r e   w h e n   g i v e n   t h e   z i p   c o d e   f o r   a   l o c a t i o n . 
 H o w e v e r ,   t h e   s e r v i c e   n o   l o n g e r   g i v e s   l i v e   t e m p e r a t u r e   d a t a 
 a n d   i s   n o w   a v a i l a b l e   f o r   d e m o   p u r p o s e s   o n l y . 
 
 W S D L   U R L : 	 h t t p : / / w w w . x m e t h o d s . n e t / s d / 2 0 0 1 / T e m p e r a t u r e S e r v i c e . w s d l   �  ( I B M   W S D L   T o o l k i t   1 . 1   -   c o m p a t i b l e   v e r s i o n )   
 C o p y r i g h t   �   2 0 0 7   A p p l e   I n c . 
 
 Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
 r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e 
 r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o 
 r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g 
 m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e 
 t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e 
 c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s . 
   
  
 l     ��������  ��  ��        l     ��  ��      SET THE DEFAULT VALUES     �   .   S E T   T H E   D E F A U L T   V A L U E S      j     �� �� &0 soap_endpoint_url SOAP_Endpoint_URL  m        �   X h t t p : / / s e r v i c e s . x m e t h o d s . n e t : 8 0 / s o a p / s e r v l e t      j    �� �� 0 soap_app SOAP_app  m       �    r p c r o u t e r      j    �� �� 0 method_name    m       �    g e t T e m p     !   j   	 �� "�� ,0 method_namespace_uri method_namespace_URI " m   	 
 # # � $ $ : u r n : x m e t h o d s - T e m p e r a t u r e - D e m o !  % & % j    �� '�� 0 soap_action SOAP_action ' m     ( ( � ) )   &  * + * l     ��������  ��  ��   +  , - , l     �� . /��   . !  QUERY USER FOR THE ZIPCODE    / � 0 0 6   Q U E R Y   U S E R   F O R   T H E   Z I P C O D E -  1 2 1 l     3���� 3 r      4 5 4 m      6 6 � 7 7 
 9 5 0 1 4 5 o      ���� 0 	this_text  ��  ��   2  8 9 8 l   } :���� : T    } ; ; Q   	 x < = > < k    T ? ?  @ A @ I   �� B C
�� .sysodlogaskr        TEXT B b     D E D b     F G F b     H I H m     J J � K K 8 C h e c k   T e m p e r a t u r e   b y   Z i p c o d e I o    ��
�� 
ret  G o    ��
�� 
ret  E l 	   L���� L m     M M � N N F E n t e r   t h e   5 - d i g i t   z i p c o d e   t o   c h e c k :��  ��   C �� O��
�� 
dtxt O o    ���� 0 	this_text  ��   A  P Q P r     R S R l    T���� T n     U V U 1    ��
�� 
ttxt V l    W���� W 1    ��
�� 
rslt��  ��  ��  ��   S o      ���� 0 	this_text   Q  X�� X Z     T Y Z�� [ Y F     A \ ] \ F     7 ^ _ ^ F     - ` a ` >    # b c b o     !���� 0 	this_text   c m   ! " d d � e e   a =  & + f g f l 	 & ) h���� h l  & ) i���� i n   & ) j k j 1   ' )��
�� 
leng k o   & '���� 0 	this_text  ��  ��  ��  ��   g m   ) *����  _ ?  0 5 l m l l 	 0 3 n���� n l  0 3 o���� o c   0 3 p q p o   0 1���� 0 	this_text   q m   1 2��
�� 
nmbr��  ��  ��  ��   m m   3 4����   ] A  : ? r s r l 	 : = t���� t l  : = u���� u c   : = v w v o   : ;���� 0 	this_text   w m   ; <��
�� 
nmbr��  ��  ��  ��   s m   = >����  �� Z k   D M x x  y z y r   D K { | { c   D G } ~ } o   D E���� 0 	this_text   ~ m   E F��
�� 
TEXT | o      ���� 0 this_zipcode   z  ��   S   L M��  ��   [ R   P T������
�� .ascrerr ****      � ****��  ��  ��   = R      ���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � o      ���� 0 error_number  ��   > k   \ x � �  � � � Z  \ r � ����� � =  \ a � � � l  \ ] ����� � o   \ ]���� 0 error_number  ��  ��   � m   ] `������ � R   d n���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   h k��������  ��  ��   �  ��� � I  s x������
�� .sysobeepnull��� ��� long��  ��  ��  ��  ��   9  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � "  CREATE THE PARAMETER RECORD    � � � � 8   C R E A T E   T H E   P A R A M E T E R   R E C O R D �  � � � l  ~ � ����� � r   ~ � � � � K   ~ � � � �� ����� 0 zipcode   � o   � ����� 0 	this_text  ��   � l      ����� � o      ���� 0 method_parameters  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    CALL THE SOAP SUB-ROUTINE    � � � � 4   C A L L   T H E   S O A P   S U B - R O U T I N E �  � � � l  � � ����� � s   � � � � � n  � � � � � I   � ��� ����� 0 	soap_call 	SOAP_call �  � � � o   � ����� &0 soap_endpoint_url SOAP_Endpoint_URL �  � � � o   � ����� 0 soap_app SOAP_app �  � � � o   � ����� 0 method_name   �  � � � o   � ����� ,0 method_namespace_uri method_namespace_URI �  � � � o   � ����� 0 method_parameters   �  ��� � o   � ����� 0 soap_action SOAP_action��  ��   �  f   � � � J       � �  � � � o      ���� 0 call_indicator   �  ��� � o      ���� 0 call_result  ��  ��  ��   �  � � � l  �� ����� � Z   �� � ��� � � =  � � � � � l  � � ����� � o   � ����� 0 call_indicator  ��  ��   � m   � ���
�� boovfals � k   � � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � $ A n   e r r o r   o c c u r r e d . � o   � ��
� 
ret  � o   � ��~
�~ 
ret  � o   � ��}�} 0 call_result   � �| � �
�| 
btns � J   � � � �  ��{ � m   � � � � � � �  C a n c e l�{   � �z ��y
�z 
dflt � m   � ��x�x �y  ��  ��   � k   �� � �  � � � l  � ��w � ��w   � 5 / CONVERT THE RESPONSE TO FAHRENHEIT AND CELSIUS    � � � � ^   C O N V E R T   T H E   R E S P O N S E   T O   F A H R E N H E I T   A N D   C E L S I U S �  � � � r   � � � � � c   � � � � � l  � � ��v�u � o   � ��t�t 0 call_result  �v  �u   � m   � ��s
�s 
nmbr � o      �r�r 0 	this_temp   �  ��q � Z   �� � ��p � � =  � � � � o   ��o�o 0 	this_temp   � m  �n�n� � I %�m � �
�m .sysodlogaskr        TEXT � b   � � � b   � � � m   � � � � � h N o   t e m p e r a t u r e   i n f o r m a t i o n   i s   a v a i l a b l e   f o r   z i p c o d e   � o  �l�l 0 this_zipcode   � m   � � � � �  . � �k � �
�k 
btns � J   � �  ��j � m   � � � � �  O K�j   � �i ��h
�i 
dflt � m  �g�g �h  �p   � k  (� � �  � � � r  (3 �  � c  (/ o  (+�f�f 0 	this_temp   m  +.�e
�e 
degf  o      �d�d 0 temp_f temp_F �  r  4G c  4C l 4A	�c�b	 I 4A�a
�`
�a .sysorondlong    ��� doub
 l 4=�_�^ c  4= l 4;�]�\ c  4; o  47�[�[ 0 temp_f temp_F m  7:�Z
�Z 
degc�]  �\   m  ;<�Y
�Y 
nmbr�_  �^  �`  �c  �b   m  AB�X
�X 
TEXT o      �W�W 0 temp_c temp_C  r  HW c  HS l HQ�V�U I HQ�T�S
�T .sysorondlong    ��� doub l HM�R�Q c  HM o  HK�P�P 0 temp_f temp_F m  KL�O
�O 
nmbr�R  �Q  �S  �V  �U   m  QR�N
�N 
TEXT o      �M�M 0 temp_f temp_F �L I X��K
�K .sysodlogaskr        TEXT b  X�  b  X}!"! b  X{#$# b  Xy%&% b  Xu'(' b  Xq)*) b  Xo+,+ b  Xk-.- b  Xg/0/ b  Xe121 b  Xc343 b  X_565 m  X[77 �88 F T h e   c u r r e n t   t e m p e r a t u r e   i n   z i p c o d e  6 o  [^�J�J 0 this_zipcode  4 m  _b99 �:: 
   i s :  2 l 	cd;�I�H; o  cd�G
�G 
ret �I  �H  0 o  ef�F
�F 
ret . l 	gj<�E�D< o  gj�C�C 0 temp_f temp_F�E  �D  , m  kn== �>>  �   F a h r e n h e i t* o  op�B
�B 
ret ( o  qt�A�A 0 temp_c temp_C& m  ux?? �@@  �   C e l s i u s$ l 	yzA�@�?A o  yz�>
�> 
ret �@  �?  " o  {|�=
�= 
ret   l 	}�B�<�;B m  }�CC �DD � T h i s   e x a m p l e   i s   f o r   d e m o   p u r p o s e s   o n l y .   T h i s   i s   n o t   l i v e   t e m p e r a t u r e   d a t a .�<  �;   �:EF
�: 
btnsE J  ��GG H�9H m  ��II �JJ  O K�9  F �8K�7
�8 
dfltK m  ���6�6 �7  �L  �q  ��  ��   � LML l     �5�4�3�5  �4  �3  M N�2N i    OPO I      �1Q�0�1 0 	soap_call 	SOAP_callQ RSR o      �/�/ &0 soap_endpoint_url SOAP_Endpoint_URLS TUT o      �.�. 0 soap_app SOAP_appU VWV o      �-�- 0 method_name  W XYX o      �,�, ,0 method_namespace_uri method_namespace_URIY Z[Z o      �+�+ 0 method_parameters  [ \�*\ o      �)�) 0 soap_action SOAP_action�*  �0  P Q     A]^_] k    &`` aba w     cdc O     efe r    ghg I   �(i�'
�( .rpc SOAPlist       recoi l 	  j�&�%j K    kk �$lm
�$ 
methl l 
  n�#�"n o    �!�! 0 method_name  �#  �"  m � op
�  
mspuo l 
  q��q o    �� ,0 method_namespace_uri method_namespace_URI�  �  p �rs
� 
parmr l 
  t��t o    �� 0 method_parameters  �  �  s �u�
� 
sactu o    �� 0 soap_action SOAP_action�  �&  �%  �'  h o      �� 0 this_result  f n    vwv 4   	 �x
� 
cappx o   
 �� 0 soap_app SOAP_appw 4    	�y
� 
machy o    �� &0 soap_endpoint_url SOAP_Endpoint_URLd z                                                                                      @  aprlhttp://www.apple.com/placebob z�z L   ! &{{ J   ! %|| }~} m   ! "�
� boovtrue~ � o   " #�� 0 this_result  �  �  ^ R      ���
� .ascrerr ****      � ****� o      �� 0 error_message  � �
��	
�
 
errn� o      �� 0 error_number  �	  _ k   . A�� ��� Z  . ;����� =  . 1��� l  . /���� o   . /�� 0 error_number  �  �  � m   / 0���l� l 	 4 7��� � r   4 7��� m   4 5�� ��� � T h e   s c r i p t   w a s   u n a b l e   t o   e s t a b l i s h   a   c o n n e c t i o n   t o   t h e   I n t e r n e t .� l     ������ o      ���� 0 error_message  ��  ��  �  �   �  �  � ���� L   < A�� J   < @�� ��� m   < =��
�� boovfals� ���� o   = >���� 0 error_message  ��  ��  �2       	���    # (����  � ���������������� &0 soap_endpoint_url SOAP_Endpoint_URL�� 0 soap_app SOAP_app�� 0 method_name  �� ,0 method_namespace_uri method_namespace_URI�� 0 soap_action SOAP_action�� 0 	soap_call 	SOAP_call
�� .aevtoappnull  �   � ****� ��P���������� 0 	soap_call 	SOAP_call�� ����� �  �������������� &0 soap_endpoint_url SOAP_Endpoint_URL�� 0 soap_app SOAP_app�� 0 method_name  �� ,0 method_namespace_uri method_namespace_URI�� 0 method_parameters  �� 0 soap_action SOAP_action��  � 	�������������������� &0 soap_endpoint_url SOAP_Endpoint_URL�� 0 soap_app SOAP_app�� 0 method_name  �� ,0 method_namespace_uri method_namespace_URI�� 0 method_parameters  �� 0 soap_action SOAP_action�� 0 this_result  �� 0 error_message  �� 0 error_number  � d����������������������
�� 
mach
�� 
capp
�� 
meth
�� 
mspu
�� 
parm
�� 
sact�� 
�� .rpc SOAPlist       reco�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  ���l�� B (�Z*�/�/ �����j E�UOe�lvW X 	 
��  �E�Y hOf�lv� �����������
�� .aevtoappnull  �   � ****� k    ���  1��  8��  ���  ���  �����  ��  ��  � ���� 0 error_number  � 2 6�� J�� M�������� d������������������������������������� ��� ��������� � � �����������79=?CI�� 0 	this_text  
�� 
ret 
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
leng�� 
�� 
bool
�� 
nmbr��  ��
�� 
TEXT�� 0 this_zipcode  ��  � ������
�� 
errn�� 0 error_number  ��  ����
�� 
errn
�� .sysobeepnull��� ��� long�� 0 zipcode  �� 0 method_parameters  �� �� 0 	soap_call 	SOAP_call
�� 
cobj�� 0 call_indicator  �� 0 call_result  
�� 
btns
�� 
dflt�� �� 0 	this_temp  ���
�� 
degf�� 0 temp_f temp_F
�� 
degc
�� .sysorondlong    ��� doub�� 0 temp_c temp_C����E�O xhZ M��%�%�%��l O��,E�O��	 	��,� �&	 	��&j�&	 	��&��& ��&E` OY )jhW #X  �a   )a a lhY hO*j [OY��Oa �lE` O)b   b  b  b  _ b  a + E[a k/EQ` Z[a l/EQ` ZO_ f  (*j Oa �%�%_ %a a kva  ka ! Y �_ �&E` "O_ "a #  "a $_ %a %%a a &kva  ka ! Y m_ "a '&E` (O_ (a )&�&j *�&E` +O_ (�&j *�&E` (Oa ,_ %a -%�%�%_ (%a .%�%_ +%a /%�%�%a 0%a a 1kva  ka ! ascr  ��ޭ