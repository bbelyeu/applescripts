FasdUAS 1.101.10   ��   ��    k             l      ��  ��   uoFont Sampler

This script will use the TextEdit application to create a document containing a sample of
each installed typeface.
Copyright � 2001�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	�  F o n t   S a m p l e r  
 
 T h i s   s c r i p t   w i l l   u s e   t h e   T e x t E d i t   a p p l i c a t i o n   t o   c r e a t e   a   d o c u m e n t   c o n t a i n i n g   a   s a m p l e   o f 
 e a c h   i n s t a l l e d   t y p e f a c e . 
  C o p y r i g h t   �   2 0 0 1  2 0 0 7   A p p l e   I n c . 
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
 l     ��������  ��  ��        l    � ����  r     �    J     �       m        �   & A m e r i c a n   T y p e w r i t e r      m       �   2 A m e r i c a n   T y p e w r i t e r   L i g h t      m       �   0 A m e r i c a n   T y p e w r i t e r   B o l d      m         � ! ! : A m e r i c a n   T y p e w r i t e r   C o n d e n s e d   " # " m     $ $ � % % F A m e r i c a n   T y p e w r i t e r   C o n d e n s e d   L i g h t #  & ' & m     ( ( � ) ) D A m e r i c a n   T y p e w r i t e r   C o n d e n s e d   B o l d '  * + * m     , , � - - 
 A r i a l +  . / . m     0 0 � 1 1  A r i a l   I t a l i c /  2 3 2 m    	 4 4 � 5 5  A r i a l   B o l d 3  6 7 6 m   	 
 8 8 � 9 9 " A r i a l   B o l d   I t a l i c 7  : ; : m   
  < < � = =  A r i a l   B l a c k ;  > ? > m     @ @ � A A  A r i a l   N a r r o w ?  B C B m     D D � E E & A r i a l   N a r r o w   I t a l i c C  F G F m     H H � I I " A r i a l   N a r r o w   B o l d G  J K J m     L L � M M 0 A r i a l   N a r r o w   B o l d   I t a l i c K  N O N m     P P � Q Q * A r i a l   R o u n d e d   M T   B o l d O  R S R m     T T � U U  B a s k e r v i l l e S  V W V m     X X � Y Y $ B a s k e r v i l l e   I t a l i c W  Z [ Z m     \ \ � ] ] ( B a s k e r v i l l e   S e m i B o l d [  ^ _ ^ m     ` ` � a a   B a s k e r v i l l e   B o l d _  b c b m     d d � e e 6 B a s k e r v i l l e   S e m i B o l d   I t a l i c c  f g f m    " h h � i i . B a s k e r v i l l e   B o l d   I t a l i c g  j k j m   " % l l � m m " B i g   C a s l o n   M e d i u m k  n o n m   % ( p p � q q , B r u s h   S c r i p t   M T   I t a l i c o  r s r m   ( + t t � u u  C o m i c   S a n s   M S s  v w v m   + . x x � y y $ C o m i c   S a n s   M S   B o l d w  z { z m   . 1 | | � } }  C o p p e r p l a t e {  ~  ~ m   1 4 � � � � � " C o p p e r p l a t e   L i g h t   � � � m   4 7 � � � � �   C o p p e r p l a t e   B o l d �  � � � m   7 : � � � � �  C o u r i e r   N e w �  � � � m   : = � � � � � $ C o u r i e r   N e w   I t a l i c �  � � � m   = @ � � � � �   C o u r i e r   N e w   B o l d �  � � � m   @ C � � � � � . C o u r i e r   N e w   B o l d   I t a l i c �  � � � m   C F � � � � � 
 D i d o t �  � � � m   F I � � � � �  D i d o t   I t a l i c �  � � � m   I L � � � � �  D i d o t   B o l d �  � � � m   L O � � � � �  F u t u r a   M e d i u m �  � � � m   O R � � � � � ( F u t u r a   M e d i u m   I t a l i c �  � � � m   R U � � � � � . F u t u r a   C o n d e n s e d   M e d i u m �  � � � m   U X � � � � � 4 F u t u r a   C o n d e n s e d   E x t r a B o l d �  � � � m   X [ � � � � �  G e n e v a �  � � � m   [ ^ � � � � �  G e o r g i a �  � � � m   ^ a � � � � �  G e o r g i a   I t a l i c �  � � � m   a d � � � � �  G e o r g i a   B o l d �  � � � m   d g � � � � � & G e o r g i a   B o l d   I t a l i c �  � � � m   g j � � � � �  G i l l   S a n s �  � � � m   j m � � � � �   G i l l   S a n s   I t a l i c �  � � � m   m p � � � � �  G i l l   S a n s   L i g h t �  � � � m   p s � � � � � , G i l l   S a n s   L i g h t   I t a l i c �  � � � m   s v � � � � �  G i l l   S a n s   B o l d �  � � � m   v y � � � � � * G i l l   S a n s   B o l d   I t a l i c �  � � � m   y | � � � � �  H e r c u l a n u m �  � � � m   |  � � � � �  L u c i d a   G r a n d e �  � � � m    � � � � � � $ L u c i d a   G r a n d e   B o l d �  � � � m   � � � � � � �   M a r k e r   F e l t   T h i n �  � � � m   � � � � � � �   M a r k e r   F e l t   W i d e �  � � � m   � � � � � � �  M o n a c o �  � � � m   � � � � � � �  O p t i m a   R e g u l a r �  � � � m   � � � � � � �  O p t i m a   I t a l i c �  � � � m   � �   �  O p t i m a   B o l d �  m   � � � $ O p t i m a   B o l d   I t a l i c  m   � � �		 " O p t i m a   E x t r a B l a c k 

 m   � � �  P a p y r u s  m   � � �  T r e b u c h e t   M S  m   � � � & T r e b u c h e t   M S   I t a l i c  m   � � � " T r e b u c h e t   M S   B o l d  m   � � � 0 T r e b u c h e t   M S   B o l d   I t a l i c  m   � �   �!!  V e r d a n a "#" m   � �$$ �%%  V e r d a n a   I t a l i c# &'& m   � �(( �))  V e r d a n a   B o l d' *+* m   � �,, �-- & V e r d a n a   B o l d   I t a l i c+ .��. m   � �// �00  Z a p f i n o��    l     1����1 o      ���� 0 	font_list  ��  ��  ��  ��    232 l  � �4����4 r   � �565 m   � �77 �88 X T h e   q u i c k   b r o w n   f o x   j u m p s   o v e r   t h e   l a z y   d o g .6 l     9����9 o      ���� 0 sample_string  ��  ��  ��  ��  3 :;: l     ��������  ��  ��  ; <=< l  � �>����> I  � ���?@
�� .sysodlogaskr        TEXT? b   � �ABA b   � �CDC b   � �EFE m   � �GG �HH  F o n t   S a m p l e rF o   � ���
�� 
ret D o   � ���
�� 
ret B l 	 � �I����I m   � �JJ �KK � T h i s   s c r i p t   w i l l   u s e   t h e   T e x t E d i t   a p p l i c a t i o n   t o   c r e a t e   a   d o c u m e n t   c o n t a i n i n g   a   s a m p l e   o f   e a c h   i n s t a l l e d   t y p e f a c e .��  ��  @ ��LM
�� 
btnsL J   � �NN OPO m   � �QQ �RR  C a n c e lP S��S m   � �TT �UU  C o n t i n u e��  M ��V��
�� 
dfltV m   � ����� ��  ��  ��  = W��W l  �%X����X O   �%YZY k   �$[[ \]\ I  � �������
�� .miscactvnull��� ��� null��  ��  ] ^��^ Q   �$_`a_ k   �bb cdc l  � ���ef��  e %  close every document saving no   f �gg >   c l o s e   e v e r y   d o c u m e n t   s a v i n g   n od hih I  �����j
�� .corecrel****      � null��  j ��kl
�� 
koclk m  ��
�� 
docul ��m��
�� 
inshm l n����n n  opo  :  p 2 ��
�� 
docu��  ��  ��  i qrq r  "sts m  uu �vv  F o n t   S a m p l e rt l     w����w n      xyx 1  !��
�� 
pnamy 4  ��z
�� 
cwinz m  ���� ��  ��  r {|{ r  #/}~} m  #$��
�� boovtrue~ n      � 1  *.��
�� 
pzum� l $*������ 4 $*���
�� 
cwin� m  ()���� ��  ��  | ��� r  0;��� l 07������ I 07�����
�� .corecnte****       ****� l 03������ o  03���� 0 	font_list  ��  ��  ��  ��  ��  � l     ������ o      ���� 0 
font_count  ��  ��  � ��� r  <C��� m  <?�� ���  � o      ���� 0 	this_text  � ��� Y  D��������� k  P��� ��� r  P\��� n  PX��� 4  SX���
�� 
cobj� o  VW���� 0 i  � l PS������ o  PS���� 0 	font_list  ��  ��  � o      ���� 0 	this_font  � ���� Z  ]������� = ]`��� o  ]^���� 0 i  � m  ^_���� � r  cv��� b  cr��� b  cn��� b  cj��� o  cf���� 0 	this_text  � o  fi���� 0 	this_font  � m  jm�� ���  :  � l nq������ o  nq���� 0 sample_string  ��  ��  � o      ���� 0 	this_text  ��  � r  y���� b  y���� b  y���� b  y���� b  y���� o  y|���� 0 	this_text  � o  |��
�� 
ret � o  ������ 0 	this_font  � m  ���� ���  :  � l �������� o  ������ 0 sample_string  ��  ��  � o      ���� 0 	this_text  ��  �� 0 i  � m  GH���� � l HK������ o  HK���� 0 
font_count  ��  ��  ��  � ��� r  ����� o  ������ 0 	this_text  � l     ������ n      ��� m  ����
�� 
ctxt� l �������� 4 �����
�� 
docu� m  ������ ��  ��  ��  ��  � ��� Y  ���������� k  ���� ��� r  ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 i  � l �������� o  ������ 0 	font_list  ��  ��  � o      ���� 0 	this_font  � ���� O  ����� k  ���� ��� r  ����� o  ������ 0 	this_font  � l     ������ 1  ����
�� 
font��  ��  � ���� r  ����� m  ������ � l     ������ 1  ����
�� 
ptsz��  ��  ��  � n  ����� 4  �����
�� 
cpar� o  ������ 0 i  � l ������� n  ����� m  ���~
�~ 
ctxt� l ����}�|� 4 ���{�
�{ 
docu� m  ���z�z �}  �|  ��  �  ��  �� 0 i  � m  ���y�y � l ����x�w� o  ���v�v 0 
font_count  �x  �w  ��  � ��u� I ��t��
�t .sysodlogaskr        TEXT� m  ���� ��� 2 F o n t   S a m p l e r   i s   c o m p l e t e .� �s��
�s 
btns� J  ���� ��r� m  ���� ���  O K�r  � �q��
�q 
dflt� m  ���p�p � �o��n
�o 
givu� m  ���m�m �n  �u  ` R      �l��k
�l .ascrerr ****      � ****� o      �j�j 0 error_message  �k  a k  $�� ��� I �i�h�g
�i .sysobeepnull��� ��� long�h  �g  � ��f� I $�e��
�e .sysodlogaskr        TEXT� o  �d�d 0 error_message  � �c 
�c 
btns  J   �b m   �  C a n c e l�b   �a�`
�a 
dflt m  �_�_ �`  �f  ��  Z m   � ��                                                                                  ttxt   alis    ^  Leopard9A409Int            �<H+     �TextEdit.app                                                     ���+��        ����  	                Applications    �<cr      �,       �  )Leopard9A409Int:Applications:TextEdit.app     T e x t E d i t . a p p     L e o p a r d 9 A 4 0 9 I n t  Applications/TextEdit.app   / ��  ��  ��  ��       �^	�^   �]
�] .aevtoappnull  �   � ****	 �\
�[�Z�Y
�\ .aevtoappnull  �   � ****
 k    %   2 < W�X�X  �[  �Z   �W�V�W 0 i  �V 0 error_message   t      $ ( , 0 4 8 < @ D H L P T X \ ` d h l p t x | � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  $(,/�U�T7�SG�RJ�QQT�P�O�N�M�L�K�J�Iu�H�G�F�E�D��C�B�A���@�?�>�=�<���;�:�9�8�7�U H�T 0 	font_list  �S 0 sample_string  
�R 
ret 
�Q 
btns
�P 
dflt�O 
�N .sysodlogaskr        TEXT
�M .miscactvnull��� ��� null
�L 
kocl
�K 
docu
�J 
insh
�I .corecrel****      � null
�H 
cwin
�G 
pnam
�F 
pzum
�E .corecnte****       ****�D 0 
font_count  �C 0 	this_text  
�B 
cobj�A 0 	this_font  
�@ 
ctxt
�? 
cpar
�> 
font�= 
�< 
ptsz
�; 
givu�: �9 0 error_message  �8  
�7 .sysobeepnull��� ��� long�Y&����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %a &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga HvE` IOa JE` KOa L_ M%_ M%a N%a Oa Pa Qlva Rla S TOa U2*j VO*a Wa Xa Y*a X-5a S ZOa [*a \k/a ],FOe*a \k/a ^,FO_ Ij _E` `Oa aE` bO Pk_ `kh  _ Ia c�/E` dO�k  _ b_ d%a e%_ K%E` bY _ b_ M%_ d%a f%_ K%E` b[OY��O_ b*a Xk/a g-FO Ck_ `kh  _ Ia c�/E` dO*a Xk/a g-a h�/ _ d*a i,FOa j*a k,FU[OY��Oa la Oa mkva Rka nla o TW  X p q*j rO�a Oa skva Rka S TU ascr  ��ޭ