FasdUAS 1.101.10   ��   ��    k             l      ��  ��   `Z
About Finder Scripts�

This script displays an explanatory message about this set of example Finder scripts.

Copyright � 2001�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	� 
 A b o u t   F i n d e r   S c r i p t s & 
 
 T h i s   s c r i p t   d i s p l a y s   a n   e x p l a n a t o r y   m e s s a g e   a b o u t   t h i s   s e t   o f   e x a m p l e   F i n d e r   s c r i p t s . 
 
 C o p y r i g h t   �   2 0 0 1  2 0 0 7   A p p l e   I n c . 
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
 l     ��������  ��  ��        l     ����  r         c         o     ��
�� 
ret   m    ��
�� 
ctxt  o      ���� 0 carriage_return  ��  ��        l     ��������  ��  ��        l    ����  r        b        b        b        b       !   b     " # " b    	 $ % $ m     & & � ' ' � M o s t   o f   t h e s e   e x a m p l e   s c r i p t s   w i l l   r e n a m e   i t e m s   i n   t h e   f r o n t m o s t   F i n d e r   w i n d o w . % l 	   (���� ( o    ���� 0 carriage_return  ��  ��   # o   	 
���� 0 carriage_return   ! l 	   )���� ) m     * * � + + � I f   n o   f o l d e r   w i n d o w s   a r e   o p e n ,   t h e   s c r i p t s   w i l l   r e n a m e   i t e m s   o n   t h e   d e s k t o p .��  ��    l 	   ,���� , o    ���� 0 carriage_return  ��  ��    o    ���� 0 carriage_return    l 	   -���� - m     . . � / /" T h e   r e m a i n i n g   s c r i p t s   d e m o n s t r a t e   h o w   t o   s h o w   a n d   h i d e   a l l   F i n d e r   w i n d o w s   a s   w e l l   a s   h o w   t o   s w i t c h   t o   F i n d e r   a n d   h i d e   o t h e r   r u n n i n g   a p p l i c a t i o n s .��  ��    o      ���� 0 	message_a 	message_A��  ��     0 1 0 l     ��������  ��  ��   1  2�� 2 l   # 3���� 3 I   #�� 4 5
�� .sysodlogaskr        TEXT 4 o    ���� 0 	message_a 	message_A 5 �� 6 7
�� 
btns 6 J     8 8  9�� 9 m     : : � ; ;  O K��   7 �� < =
�� 
dflt < m    ����  = �� >��
�� 
disp > m    ��
�� stic   ��  ��  ��  ��       �� ? @��   ? ��
�� .aevtoappnull  �   � **** @ �� A���� B C��
�� .aevtoappnull  �   � **** A k     # D D   E E   F F  2����  ��  ��   B   C ������ & * .���� :����������
�� 
ret 
�� 
ctxt�� 0 carriage_return  �� 0 	message_a 	message_A
�� 
btns
�� 
dflt
�� 
disp
�� stic   �� 
�� .sysodlogaskr        TEXT�� $��&E�O��%�%�%�%�%�%E�O���kv�k���  ascr  ��ޭ