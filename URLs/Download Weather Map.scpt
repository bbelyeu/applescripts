FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Download Weather Map

This script downloads a current weather map from maps.weather.com and opens
the downloaded jpeg file in the default application for viewing jpegs.

Copyright � 2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	" 
 D o w n l o a d   W e a t h e r   M a p 
 
 T h i s   s c r i p t   d o w n l o a d s   a   c u r r e n t   w e a t h e r   m a p   f r o m   m a p s . w e a t h e r . c o m   a n d   o p e n s 
 t h e   d o w n l o a d e d   j p e g   f i l e   i n   t h e   d e f a u l t   a p p l i c a t i o n   f o r   v i e w i n g   j p e g s . 
 
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
 l     ��������  ��  ��        l         r         m        �   & a c t t e m p _ 7 2 0 x 4 8 6 . j p g  o      ���� 0 weather_map      temperatures     �      t e m p e r a t u r e s      l        r        m       �   " c u r w x _ 7 2 0 x 4 8 6 . j p g  o      ���� 0 weather_map      surface isobars     �       s u r f a c e   i s o b a r s     !   l     ��������  ��  ��   !  " # " l    $���� $ r     % & % b     ' ( ' m    	 ) ) � * * X h t t p : / / m a p s . w e a t h e r . c o m / i m a g e s / m a p s / c u r r e n t / ( o   	 
���� 0 weather_map   & l      +���� + o      ���� 0 
target_url 
target_URL��  ��  ��  ��   #  , - , l    .���� . r     / 0 / l    1���� 1 b     2 3 2 l    4���� 4 I   �� 5 6
�� .earsffdralis        afdr 5 m    ��
�� afdrdesk 6 �� 7��
�� 
rtyp 7 m    ��
�� 
TEXT��  ��  ��   3 m     8 8 � 9 9  w e a t h e r m a p . j p g��  ��   0 l      :���� : o      ���� 0 destination_file  ��  ��  ��  ��   -  ; < ; l     ��������  ��  ��   <  = > = l   - ?���� ? O    - @ A @ I   ,�� B C
�� .aevtdwnlfss ���     TEXT B o    ���� 0 
target_url 
target_URL C �� D E
�� 
fdst D 4     $�� F
�� 
file F o   " #���� 0 destination_file   E �� G��
�� 
rplc G m   % &��
�� erplyes ��   A m     H H"                                                                                  uasc   alis    �  Leopard9A409Int            �<H+    H|URL Access Scripting.app                                         ���+�{        ����  	                ScriptingAdditions    �<cr      �,�      H|   @   ?  JLeopard9A409Int:System:Library:ScriptingAdditions:URL Access Scripting.app  2  U R L   A c c e s s   S c r i p t i n g . a p p     L e o p a r d 9 A 4 0 9 I n t  :System/Library/ScriptingAdditions/URL Access Scripting.app  / ��  ��  ��   >  I J I l     ��������  ��  ��   J  K�� K l  . ? L���� L O  . ? M N M I  4 >�� O��
�� .aevtodocnull  �    alis O 4   4 :�� P
�� 
alis P o   8 9���� 0 destination_file  ��   N m   . 1 Q Q�                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��       �� R S��   R ��
�� .aevtoappnull  �   � **** S �� T���� U V��
�� .aevtoappnull  �   � **** T k     ? W W   X X   Y Y  " Z Z  , [ [  = \ \  K����  ��  ��   U   V  ��  )���������� 8�� H������������ Q������ 0 weather_map  �� 0 
target_url 
target_URL
�� afdrdesk
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr�� 0 destination_file  
�� 
fdst
�� 
file
�� 
rplc
�� erplyes �� 
�� .aevtdwnlfss ���     TEXT
�� 
alis
�� .aevtodocnull  �    alis�� @�E�O�E�O��%E�O���l �%E�O� ��*��/��a  UOa  *a �/j Uascr  ��ޭ