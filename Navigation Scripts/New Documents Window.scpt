FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ?9
New Documents Window

This script will open the Documents window in the Finder.

Copyright � 2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	r 
 N e w   D o c u m e n t s   W i n d o w 
 
 T h i s   s c r i p t   w i l l   o p e n   t h e   D o c u m e n t s   w i n d o w   i n   t h e   F i n d e r . 
  
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
 l     ��������  ��  ��     ��  l      ����  O          k           I   	������
�� .miscactvnull��� ��� null��  ��        r   
     n   
     4    �� 
�� 
cfol  m       �    D o c u m e n t s  1   
 ��
�� 
home  l      ����  o      ���� 0 target_folder  ��  ��        l   ��   ��    ) # the following line no longer works      � ! ! F   t h e   f o l l o w i n g   l i n e   n o   l o n g e r   w o r k s   " # " l   �� $ %��   $ H Bmake new file viewer window with properties {target:target_folder}    % � & & � m a k e   n e w   f i l e   v i e w e r   w i n d o w   w i t h   p r o p e r t i e s   { t a r g e t : t a r g e t _ f o l d e r } #  ' ( ' l   �� ) *��   )   also broken:    * � + +    a l s o   b r o k e n : (  , - , l   �� . /��   . > 8 open the target_folder -- can't use a ref in a variable    / � 0 0 p   o p e n   t h e   t a r g e t _ f o l d e r   - -   c a n ' t   u s e   a   r e f   i n   a   v a r i a b l e -  1 2 1 I   �� 3��
�� .aevtodocnull  �    alis 3 n     4 5 4 4    �� 6
�� 
cfol 6 m     7 7 � 8 8  D o c u m e n t s 5 1    ��
�� 
home��   2  9 : 9 l   �� ; <��   ;   doesn't work:    < � = =    d o e s n ' t   w o r k : :  >�� > l   �� ? @��   ? R Lset index of (window of folder "Favorites" of folder "Library" of home) to 1    @ � A A � s e t   i n d e x   o f   ( w i n d o w   o f   f o l d e r   " F a v o r i t e s "   o f   f o l d e r   " L i b r a r y "   o f   h o m e )   t o   1��    m      B B�                                                                                  MACS   alis    z  Leopard9A409Int            �<H+     {
Finder.app                                                       [�+�        ����  	                CoreServices    �<cr      �,~       {   @   ?  6Leopard9A409Int:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p     L e o p a r d 9 A 4 0 9 I n t  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��       �� C D��   C ��
�� .aevtoappnull  �   � **** D �� E���� F G��
�� .aevtoappnull  �   � **** E k       H H  ����  ��  ��   F   G  B������ �� 7��
�� .miscactvnull��� ��� null
�� 
home
�� 
cfol�� 0 target_folder  
�� .aevtodocnull  �    alis�� !� *j O*�,��/E�O*�,��/j OPUascr  ��ޭ