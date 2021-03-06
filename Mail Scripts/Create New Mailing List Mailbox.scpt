FasdUAS 1.101.10   ��   ��    k             l      �� ��   
Create New Mailing List Mailbox

Copyright � 2003-2006 Apple Computer, Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require that
you make it clear that the code was descended from Apple sample code,
but that you've made changes.
       	  l     ������  ��   	  
  
 l      �� ��   .(
This script acts on the selected messages looking for headers that
indicate they're from a mailing list. If such headers are present, it
will create a mailbox named after the mailing list, and create a rule
that will direct future messages from that mailing list into the newly
created mailbox.
         l     ������  ��        l   � ��  O    �    k   �       r    	    1    ��
�� 
slct  o      ���� $0 selectedmessages selectedMessages      l  
 
������  ��     ��  Z   
�  ��   =  
      l  
  !�� ! I  
 �� "��
�� .corecnte****       **** " o   
 ���� $0 selectedmessages selectedMessages��  ��     m    ����    I   �� # $
�� .sysodisAaleR        TEXT # m     % %  No Messages Selected    $ �� &��
�� 
mesS & m     ' ' m gSelect the messages you want to create mailing list mailboxes and rules for before running this script.   ��  ��    k   � ( (  ) * ) r    " + , + J     ����   , o      ���� 0 mailinglists mailingLists *  - . - l  # #������  ��   .  / 0 / X   #d 1�� 2 1 k   3_ 3 3  4 5 4 r   3 6 6 7 6 m   3 4 8 8  List-Id    7 o      ���� 0 	headerkey 	headerKey 5  9 : 9 r   7 @ ; < ; n  7 > = > = I   8 >�� ?���� ,0 getheaderfrommessage getHeaderFromMessage ?  @ A @ o   8 9���� 0 	headerkey 	headerKey A  B�� B o   9 :���� 0 eachmessage eachMessage��  ��   >  f   7 8 < o      ���� 0 listid listId :  C D C Z   A Z E F���� E =  A D G H G o   A B���� 0 listid listId H m   B C��
�� 
msng F k   G V I I  J K J r   G L L M L m   G J N N  Sender    M o      ���� 0 	headerkey 	headerKey K  O�� O r   M V P Q P n  M T R S R I   N T�� T���� ,0 getheaderfrommessage getHeaderFromMessage T  U V U o   N O���� 0 	headerkey 	headerKey V  W�� W o   O P���� 0 eachmessage eachMessage��  ��   S  f   M N Q o      ���� 0 listid listId��  ��  ��   D  X Y X l  [ [������  ��   Y  Z�� Z Z   [_ [ \���� [ >  [ ^ ] ^ ] o   [ \���� 0 listid listId ^ m   \ ]��
�� 
msng \ k   a[ _ _  ` a ` r   a j b c b I  a f�� d��
�� .emaleafneafr       obj  d o   a b���� 0 listid listId��   c o      ���� 0 listname listName a  e f e I  k ��� g h
�� .sysodlogaskr        TEXT g b   k v i j i b   k r k l k m   k n m m 9 3Enter the mailbox and rule name for messages from �    l o   n q���� 0 listname listName j m   r u n n  �:    h �� o��
�� 
dtxt o o   y |���� 0 listname listName��   f  p q p r   � � r s r n   � � t u t 1   � ���
�� 
ttxt u l  � � v�� v 1   � ���
�� 
rslt��   s o      ���� 0 listname listName q  w x w l  � �������  ��   x  y z y l  � ��� {��   { . ( Set up the mailbox for the mailing list    z  | } | l   � ��� ~��   ~60 This assumes that your mailing list mailboxes will be local.  If you want them on an IMAP server instead, you would say something like:
					set theMailbox to mailbox listName of account "My IMAP Account"
					and then enclose the "on error" statements inside of a tell account "My IMAP Account" block.     }   �  Q   � � � � � � r   � � � � � 4   � ��� �
�� 
mbxp � o   � ����� 0 listname listName � o      ���� 0 
themailbox 
theMailbox � R      ������
�� .ascrerr ****      � ****��  ��   � k   � � � �  � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
mbxp � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � b   � � � � � m   � � � �  Mailing Lists/    � o   � ����� 0 listname listName��  ��   �  ��� � r   � � � � � 4   � ��� �
�� 
mbxp � o   � ����� 0 listname listName � o      ���� 0 
themailbox 
theMailbox��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � 0 * Then set up the rule for the mailing list    �  � � � r   � � � � � I  � ��� ���
�� .emaleauaeaur       obj  � o   � ����� 0 listid listId��   � o      ���� 0 listidfilter listIdFilter �  � � � r   � � � � � b   � � � � � m   � � � �  Mailing List -     � o   � ����� 0 listname listName � o      ���� 0 rulename ruleName �  � � � Z   �T � ����� � H   � � � � l  � � ��� � I  � ��� ���
�� .coredoexbool        obj  � 4   � ��� �
�� 
rule � o   � ����� 0 rulename ruleName��  ��   � k   �P � �  � � � r   � � � � I  ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
rule � �� ���
�� 
prdt � K   � � � �� � �
�� 
pnam � o   � ���� 0 rulename ruleName � �� � �
�� 
rstm � m  ��
�� boovtrue � �� ���
�� 
rtme � o  
���� 0 
themailbox 
theMailbox��  ��   � o      ���� 0 therule theRule �  ��� � O  P � � � k  O � �  � � � r  & � � � m   ��
�� boovtrue � 1   %��
�� 
isac �  ��� � I 'O���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m  ),��
�� 
rucr � �� ��
�� 
prdt � K  /I � � �~ � �
�~ 
rtyp � m  25�}
�} erutthdk � �| � �
�| 
mhdr � o  89�{�{ 0 	headerkey 	headerKey � �z � �
�z 
rqua � m  <?�y
�y enrqrqco � �x ��w
�x 
rexp � o  BE�v�v 0 listidfilter listIdFilter�w  �  ��   � o  �u�u 0 therule theRule��  ��  ��   �  � � � l UU�t�s�t  �s   �  ��r � r  U[ � � � o  UX�q�q 0 listname listName � l      ��p � n       � � �  ;  YZ � o  XY�o�o 0 mailinglists mailingLists�p  �r  ��  ��  ��  �� 0 eachmessage eachMessage 2 o   & '�n�n $0 selectedmessages selectedMessages 0  � � � l ee�m�l�m  �l   �  ��k � Z  e� � ��j � � ? el � � � l ej ��i � I ej�h ��g
�h .corecnte****       **** � o  ef�f�f 0 mailinglists mailingLists�g  �i   � m  jk�e�e   � k  o� � �  � � � r  ox � � � n ot � � � 1  pt�d
�d 
txdl �  f  op � o      �c�c "0 saveddelimiters savedDelimiters �  � � � r  y� � � � o  y|�b
�b 
ret  � n      � � � 1  }��a
�a 
txdl �  f  |} �  � � � I ���` � �
�` .sysodlogaskr        TEXT � b  �� � � � b  �� � � � b  �� � � � m  �� � � 0 *Mailboxes and rules have been created for:    � o  ���_
�_ 
ret  � o  ���^
�^ 
ret  � l �� ��] � c  �� �  � o  ���\�\ 0 mailinglists mailingLists  m  ���[
�[ 
TEXT�]   � �Z�Y
�Z 
disp m  ���X
�X stic   �Y   � �W r  �� o  ���V�V "0 saveddelimiters savedDelimiters n      1  ���U
�U 
txdl  f  ���W  �j   � I ���T
�T .sysodisAaleR        TEXT m  ��		 $ No Mailing List Messages Found    �S
�R
�S 
mesS
 m  �� D >None of the selected messages appear to be from mailing lists.   �R  �k  ��    m     �null      ߀��  vMail.app �^  0�9 �H�������  ��~�R7 ����+���H��0�}H���09����emal   alis    N  Mac OS X 10.4.5            ��BH+    vMail.app                                                         �e�L��        ����  	                Applications    ����      �M*`      v  %Mac OS X 10.4.5:Applications:Mail.app     M a i l . a p p     M a c   O S   X   1 0 . 4 . 5  Applications/Mail.app   / ��  ��     l     �Q�P�Q  �P   �O i      I      �N�M�N ,0 getheaderfrommessage getHeaderFromMessage  o      �L�L 0 desiredheader desiredHeader �K o      �J�J 0 
themessage 
theMessage�K  �M   k     #  l     �I�I     (string, message)     l     �H�H     returns string     l     �G�F�G  �F     O      !"! Q    #$%# k    && '(' r    )*) e    ++ n    ,-, 4    �E.
�E 
mhdr. o   	 
�D�D 0 desiredheader desiredHeader- o    �C�C 0 
themessage 
theMessage* o      �B�B 0 	theheader 	theHeader( /�A/ r    010 n    232 1    �@
�@ 
ctnt3 o    �?�? 0 	theheader 	theHeader1 o      �>�>  0 headercontents headerContents�A  $ R      �=�<�;
�= .ascrerr ****      � ****�<  �;  % r    454 m    �:
�: 
msng5 o      �9�9  0 headercontents headerContents" m       676 l  ! !�8�7�8  �7  7 8�68 L   ! #99 o   ! "�5�5  0 headercontents headerContents�6  �O       �4:;<�4  : �3�2�3 ,0 getheaderfrommessage getHeaderFromMessage
�2 .aevtoappnull  �   � ****; �1�0�/=>�.�1 ,0 getheaderfrommessage getHeaderFromMessage�0 �-?�- ?  �,�+�, 0 desiredheader desiredHeader�+ 0 
themessage 
theMessage�/  = �*�)�(�'�* 0 desiredheader desiredHeader�) 0 
themessage 
theMessage�( 0 	theheader 	theHeader�'  0 headercontents headerContents> �&�%�$�#�"
�& 
mhdr
�% 
ctnt�$  �#  
�" 
msng�. $�  ��/EE�O��,E�W 
X  �E�UO�< �!@� �AB�
�! .aevtoappnull  �   � ****@ k    �CC  ��  �   �  A �� 0 eachmessage eachMessageB >��� %� '���� 8���� N�� m n����
�	����� �����  ��������������������������������������� �������	
� 
slct� $0 selectedmessages selectedMessages
� .corecnte****       ****
� 
mesS
� .sysodisAaleR        TEXT� 0 mailinglists mailingLists
� 
kocl
� 
cobj� 0 	headerkey 	headerKey� ,0 getheaderfrommessage getHeaderFromMessage� 0 listid listId
� 
msng
� .emaleafneafr       obj � 0 listname listName
� 
dtxt
� .sysodlogaskr        TEXT
� 
rslt
�
 
ttxt
�	 
mbxp� 0 
themailbox 
theMailbox�  �  
� 
prdt
� 
pnam� 
� .corecrel****      � null
� .emaleauaeaur       obj �  0 listidfilter listIdFilter�� 0 rulename ruleName
�� 
rule
�� .coredoexbool        obj 
�� 
rstm
�� 
rtme�� �� 0 therule theRule
�� 
isac
�� 
rucr
�� 
rtyp
�� erutthdk
�� 
mhdr
�� 
rqua
�� enrqrqco
�� 
rexp�� 
�� 
txdl�� "0 saveddelimiters savedDelimiters
�� 
ret 
�� 
TEXT
�� 
disp
�� stic   ����*�,E�O�j j  ���l Y�jvE�O@�[��l kh  �E�O)̠l+ E�O��  a E�O)̠l+ E�Y hO�� ��j E` Oa _ %a %a _ l O_ a ,E` O *a _ /E` W .X  *�a a a a _ %la   !O*a _ /E` O�j "E` #Oa $_ %E` %O*a &_ %/j ' c*�a &a a _ %a (ea )_ a *a   !E` +O_ + 2e*a ,,FO*�a -a a .a /a 0�a 1a 2a 3_ #a 4a   !UY hO_ �6FY h[OY��O�j j >)a 5,E` 6O_ 7)a 5,FOa 8_ 7%_ 7%�a 9&%a :a ;l O_ 6)a 5,FY a <�a =l Uascr  ��ޭ