FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
About Internet Services Scripts...

This script displays a dialog containing information about the scripts in the
Internet Services folder and provides a link to the xmethods website.

Copyright � 2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	B 
 A b o u t   I n t e r n e t   S e r v i c e s   S c r i p t s . . . 
 
 T h i s   s c r i p t   d i s p l a y s   a   d i a l o g   c o n t a i n i n g   i n f o r m a t i o n   a b o u t   t h e   s c r i p t s   i n   t h e 
 I n t e r n e t   S e r v i c e s   f o l d e r   a n d   p r o v i d e s   a   l i n k   t o   t h e   x m e t h o d s   w e b s i t e . 
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
 l     ��������  ��  ��        j     �� �� 0 
target_url 
target_URL  m        �   . h t t p : / / w w w . x m e t h o d s . c o m      l     ��������  ��  ��        l    $ ����  I    $��  
�� .sysodlogaskr        TEXT  b         b         b         b         b        !   b      " # " b     	 $ % $ b      & ' & b      ( ) ( b      * + * m      , , � - - \ T h e s e   s c r i p t s   s e n d   X M L - R P C   o r   S O A P   q u e r i e s   t o   + l 	   .���� . m     / / � 0 0 ^ X M L - b a s e d   a p p l i c a t i o n s   l o c a t e d   o n   t h e   I n t e r n e t .��  ��   ) o    ��
�� 
ret  ' o    ��
�� 
ret  % l 	   1���� 1 m     2 2 � 3 3 � T o   u s e   t h e s e   s c r i p t s ,   t h i s   c o m p u t e r   m u s t   h a v e   a n   a c t i v e   I n t e r n e t   c o n n e c t i o n .��  ��   # o   	 
��
�� 
ret  ! o    ��
�� 
ret   l 	   4���� 4 m     5 5 � 6 6 ` F o r   a   l i s t   o f   u s e f u l   p u b l i c   W e b   s e r v i c e s ,   v i s i t  ��  ��    o    ��
�� 
ret   o    ���� 0 
target_url 
target_URL  m     7 7 � 8 8  .  �� 9 :
�� 
btns 9 J     ; ;  < = < m     > > � ? ?  V i s i t   W e b   s i t e =  @�� @ m     A A � B B  O K��   : �� C��
�� 
dflt C m     ���� ��  ��  ��     D�� D l  % @ E���� E Z   % @ F G���� F =  % * H I H l  % ( J���� J n   % ( K L K 1   & (��
�� 
bhit L l  % & M���� M 1   % &��
�� 
rslt��  ��  ��  ��   I m   ( ) N N � O O  V i s i t   W e b   s i t e G P   - < P�� Q P I  2 ;�� R��
�� .GURLGURLnull    ��� TEXT R o   2 7���� 0 
target_url 
target_URL��  ��   Q ����
�� consrmte��  ��  ��  ��  ��  ��       �� S  T��   S ������ 0 
target_url 
target_URL
�� .aevtoappnull  �   � **** T �� U���� V W��
�� .aevtoappnull  �   � **** U k     @ X X   Y Y  D����  ��  ��   V   W  , /�� 2 5 7�� > A���������� N Q��
�� 
ret 
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� .GURLGURLnull    ��� TEXT�� A��%�%�%�%�%�%�%�%b   %�%���lv�l� O��,�  g� b   j VY h ascr  ��ޭ