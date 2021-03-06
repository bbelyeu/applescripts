FasdUAS 1.101.10   ��   ��    k             l      ��  ��   <6
Stock Quote

This script is an example of using a SOAP method to retrieve information
from a remote service. This script will retrieve a delayed stock
quote for the stock indicator code entered in the dialog.

WSDL URL:	http://services.xmethods.net/soap/urn:xmethods-delayed-quotes.wsdl �(IBM WSDL Toolkit 1.1 - compatible version)
Copyright � 2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	l 
 S t o c k   Q u o t e 
 
 T h i s   s c r i p t   i s   a n   e x a m p l e   o f   u s i n g   a   S O A P   m e t h o d   t o   r e t r i e v e   i n f o r m a t i o n 
 f r o m   a   r e m o t e   s e r v i c e .   T h i s   s c r i p t   w i l l   r e t r i e v e   a   d e l a y e d   s t o c k 
 q u o t e   f o r   t h e   s t o c k   i n d i c a t o r   c o d e   e n t e r e d   i n   t h e   d i a l o g . 
 
 W S D L   U R L : 	 h t t p : / / s e r v i c e s . x m e t h o d s . n e t / s o a p / u r n : x m e t h o d s - d e l a y e d - q u o t e s . w s d l   �  ( I B M   W S D L   T o o l k i t   1 . 1   -   c o m p a t i b l e   v e r s i o n )   
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
 l     ��������  ��  ��        l     ��  ��      SET THE DEFAULT VALUES     �   .   S E T   T H E   D E F A U L T   V A L U E S      j     �� �� &0 soap_endpoint_url SOAP_Endpoint_URL  m        �   H h t t p : / / s e r v i c e s . x m e t h o d s . n e t : 8 0 / s o a p      j    �� �� 0 soap_app SOAP_app  m       �    s o a p      j    �� �� 0 method_name    m       �    g e t Q u o t e     !   j   	 �� "�� ,0 method_namespace_uri method_namespace_URI " m   	 
 # # � $ $ 6 u r n : x m e t h o d s - d e l a y e d - q u o t e s !  % & % j    �� '�� 0 soap_action SOAP_action ' m     ( ( � ) )   &  * + * l     ��������  ��  ��   +  , - , l     �� . /��   . ) # QUERY USER FOR THE STOCK INDICATOR    / � 0 0 F   Q U E R Y   U S E R   F O R   T H E   S T O C K   I N D I C A T O R -  1 2 1 l     3���� 3 r      4 5 4 m      6 6 � 7 7  A A P L 5 o      ���� 0 	this_text  ��  ��   2  8 9 8 l   D :���� : T    D ; ; Q   	 ? < = > < k    ! ? ?  @ A @ I   �� B C
�� .sysodlogaskr        TEXT B b     D E D b     F G F b     H I H m     J J � K K  S t o c k   Q u o t e I o    ��
�� 
ret  G o    ��
�� 
ret  E l 	   L���� L m     M M � N N . E n t e r   t h e   c o m p a n y   c o d e :��  ��   C �� O��
�� 
dtxt O o    ���� 0 	this_text  ��   A  P Q P r     R S R l    T���� T n     U V U 1    ��
�� 
ttxt V l    W���� W 1    ��
�� 
rslt��  ��  ��  ��   S o      ���� 0 	this_text   Q  X�� X  S     !��   = R      ���� Y
�� .ascrerr ****      � ****��   Y �� Z��
�� 
errn Z o      ���� 0 error_number  ��   > k   ) ? [ [  \ ] \ Z  ) 9 ^ _���� ^ =  ) , ` a ` l  ) * b���� b o   ) *���� 0 error_number  ��  ��   a m   * +������ _ R   / 5���� c
�� .ascrerr ****      � ****��   c �� d��
�� 
errn d m   1 2��������  ��  ��   ]  e�� e I  : ?������
�� .sysobeepnull��� ��� long��  ��  ��  ��  ��   9  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j "  CREATE THE PARAMETER RECORD    k � l l 8   C R E A T E   T H E   P A R A M E T E R   R E C O R D i  m n m l  E K o���� o r   E K p q p K   E I r r �� s���� 0 symbol Symbol s o   F G���� 0 	this_text  ��   q l      t���� t o      ���� 0 method_parameters  ��  ��  ��  ��   n  u v u l     ��������  ��  ��   v  w x w l     �� y z��   y    CALL THE SOAP SUB-ROUTINE    z � { { 4   C A L L   T H E   S O A P   S U B - R O U T I N E x  | } | l  L � ~���� ~ s   L �  �  n  L h � � � I   M h�� ����� 0 	soap_call 	SOAP_call �  � � � o   M R���� &0 soap_endpoint_url SOAP_Endpoint_URL �  � � � o   R W���� 0 method_name   �  � � � o   W \���� ,0 method_namespace_uri method_namespace_URI �  � � � o   \ ]���� 0 method_parameters   �  ��� � o   ] b���� 0 soap_action SOAP_action��  ��   �  f   L M � J       � �  � � � o      ���� 0 call_indicator   �  ��� � o      ���� 0 call_result  ��  ��  ��   }  � � � l  � � ����� � Z   � � � ��� � � =  � � � � � l  � � ����� � o   � ����� 0 call_indicator  ��  ��   � m   � ���
�� boovfals � k   � � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � $ A n   e r r o r   o c c u r r e d . � o   � ���
�� 
ret  � o   � ���
�� 
ret  � o   � ����� 0 call_result   � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C a n c e l��   � �� ���
�� 
dflt � m   � ����� ��  ��  ��   � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 8 T h e   d e l a y e d   s t o c k   q u o t e   f o r   � o   � ����� 0 	this_text   � m   � � � � � � � 
   i s :   � o   � ����� 0 call_result   � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � ����� ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � i     � � � I      �� ����� 0 	soap_call 	SOAP_call �  � � � o      ���� &0 soap_endpoint_url SOAP_Endpoint_URL �  � � � o      ���� 0 method_name   �  � � � o      ���� ,0 method_namespace_uri method_namespace_URI �  � � � o      ���� 0 method_parameters   �  ��� � o      ���� 0 soap_action SOAP_action��  ��   � Q     > � � � � k    # � �  � � � w     � � � O     � � � r     � � � I   �� ���
�� .rpc SOAPlist       reco � l 	   ���� � K     � � �~ � �
�~ 
meth � l 
   ��}�| � o    �{�{ 0 method_name  �}  �|   � �z � �
�z 
mspu � l 
   ��y�x � o    �w�w ,0 method_namespace_uri method_namespace_URI�y  �x   � �v � �
�v 
parm � l 
   ��u�t � o    �s�s 0 method_parameters  �u  �t   � �r ��q
�r 
sact � o    �p�p 0 soap_action SOAP_action�q  ��  �  ��   � o      �o�o 0 this_result   � 4    	�n �
�n 
capp � o    �m�m &0 soap_endpoint_url SOAP_Endpoint_URL � z                                                                                      @  aprlhttp://www.apple.com/placebo �  ��l � L    # � � J    " � �  � � � m    �k
�k boovtrue �  ��j � o     �i�i 0 this_result  �j  �l   � R      �h � �
�h .ascrerr ****      � **** � o      �g�g 0 error_message   � �f ��e
�f 
errn � o      �d�d 0 error_number  �e   � k   + > � �  � � � Z  + 8 � ��c�b � =  + . � � � l  + , ��a�` � o   + ,�_�_ 0 error_number  �a  �`   � m   , -�^�^�l � l 	 1 4 ��]�\ � r   1 4 � � � m   1 2 � � �   � T h e   s c r i p t   w a s   u n a b l e   t o   e s t a b l i s h   a   c o n n e c t i o n   t o   t h e   I n t e r n e t . � l     �[�Z o      �Y�Y 0 error_message  �[  �Z  �]  �\  �c  �b   � �X L   9 > J   9 =  m   9 :�W
�W boovfals �V o   : ;�U�U 0 error_message  �V  �X  ��       �T    # (	
�S�R�Q�P�T   �O�N�M�L�K�J�I�H�G�F�E�D�C�B�O &0 soap_endpoint_url SOAP_Endpoint_URL�N 0 soap_app SOAP_app�M 0 method_name  �L ,0 method_namespace_uri method_namespace_URI�K 0 soap_action SOAP_action�J 0 	soap_call 	SOAP_call
�I .aevtoappnull  �   � ****�H 0 	this_text  �G 0 method_parameters  �F 0 call_indicator  �E 0 call_result  �D  �C  �B  	 �A ��@�?�>�A 0 	soap_call 	SOAP_call�@ �=�=   �<�;�:�9�8�< &0 soap_endpoint_url SOAP_Endpoint_URL�; 0 method_name  �: ,0 method_namespace_uri method_namespace_URI�9 0 method_parameters  �8 0 soap_action SOAP_action�?   �7�6�5�4�3�2�1�0�7 &0 soap_endpoint_url SOAP_Endpoint_URL�6 0 method_name  �5 ,0 method_namespace_uri method_namespace_URI�4 0 method_parameters  �3 0 soap_action SOAP_action�2 0 this_result  �1 0 error_message  �0 0 error_number    ��/�.�-�,�+�*�)�(�' �
�/ 
capp
�. 
meth
�- 
mspu
�, 
parm
�+ 
sact�* 
�) .rpc SOAPlist       reco�( 0 error_message   �&�%�$
�& 
errn�% 0 error_number  �$  �'�l�> ? %�Z*�/ �����j E�UOe�lvW X  	��  �E�Y hOf�lv
 �#�"�!� 
�# .aevtoappnull  �   � **** k     �  1  8  m  |  ���  �"  �!   �� 0 error_number    6� J� M��������������� �� ���
 � � �� 0 	this_text  
� 
ret 
� 
dtxt
� .sysodlogaskr        TEXT
� 
rslt
� 
ttxt�   �	��
�	 
errn� 0 error_number  �  ���
� 
errn
� .sysobeepnull��� ��� long� 0 symbol Symbol� 0 method_parameters  � � 0 	soap_call 	SOAP_call
� 
cobj� 0 call_indicator  � 0 call_result  
� 
btns
� 
dflt�
 �  ��E�O ?hZ ��%�%�%��l O��,E�OW X 	 
��  )��lhY hO*j [OY��O��lE�O)b   b  b  �b  a + E[a k/EQ` Z[a l/EQ` ZO_ f  (*j Oa �%�%_ %a a kva ka  Y !a �%a %_ %a a kva ka   �  A A P L ��� 0 symbol Symbol�  
�S boovtrue @Wi������R  �Q  �P   ascr  ��ޭ