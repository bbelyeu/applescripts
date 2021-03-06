FasdUAS 1.101.10   ��   ��    k             l     �� ��     
 chkADpass       	  l     �� 
��   
 9 3 by Peter Bukowinski (bukowinskip@janelia.hhmi.org)    	     l     ������  ��        l     �� ��    c ] This script attempts to be a universal Active Directory account password expiration checker.         l     �� ��    ^ X There is no hard-coded AD info here -- it is discovered dynamically using various shell         l     �� ��      utilities.         l     ������  ��        l     ������  ��        l     �� ��    u o For deployment, set value equal to the number of days before expiration you want warnings to appear (e.g. 10).         l     �� ��    = 7 For testing, set value to a large integer (e.g. 1000).        !   l     "�� " r      # $ # m     ����� $ o      ���� 0 warningdays warningDays��   !  % & % l     ������  ��   &  ' ( ' l     �� )��   ) Z T Use dscl to check if logged-in account is an AD account, exit script quietly if not    (  * + * l    ,�� , Q     - . / - r     0 1 0 I   �� 2��
�� .sysoexecTEXT���     TEXT 2 m     3 3 j d/usr/bin/dscl /Search -read /Users/$USER | grep AuthenticationAuthority: | grep '/Active Directory/'   ��   1 o      ���� 0 adtest ADtest . R      ������
�� .ascrerr ****      � ****��  ��   / L    ����  ��   +  4 5 4 l     ������  ��   5  6 7 6 l   � 8�� 8 Q    � 9 : ; 9 k    } < <  = > = l   �� ?��   ? + % Get AD and LDAP information from DNS    >  @ A @ r    # B C B I   !�� D��
�� .sysoexecTEXT���     TEXT D m     E E K E/usr/sbin/scutil --dns | grep nameserver | head -1 | awk '{print $3}'   ��   C o      ���� 0 mydns myDNS A  F G F r   $ 3 H I H I  $ 1�� J��
�� .sysoexecTEXT���     TEXT J b   $ - K L K b   $ + M N M b   $ ) O P O b   $ ' Q R Q m   $ % S S  /usr/bin/host    R 1   % &��
�� 
spac P o   ' (���� 0 mydns myDNS N 1   ) *��
�� 
spac L m   + , T T b \| awk '{print $5}' | awk -F. '{$1=""; print}' | sed 's| $||g' | sed 's| |.|g' | sed 's|^.||'   ��   I o      ���� 0 mydomain myDomain G  U V U r   4 C W X W I  4 A�� Y��
�� .sysoexecTEXT���     TEXT Y b   4 = Z [ Z b   4 ; \ ] \ b   4 9 ^ _ ^ b   4 7 ` a ` m   4 5 b b  /usr/bin/host    a 1   5 6��
�� 
spac _ o   7 8���� 0 mydns myDNS ] 1   9 :��
�� 
spac [ m   ; < c c e _| awk '{print $5}' | awk -F. '{$1=""; print}' | sed 's| $||g' | sed 's| |,dc=|g' | sed 's|^,||'   ��   X o      ���� 0 mysearchbase mySearchBase V  d e d l  D D������  ��   e  f g f l  D D�� h��   h > 8 Use ldapsearch to get the maximum age of an AD password    g  i j i r   D c k l k I  D _�� m��
�� .sysoexecTEXT���     TEXT m b   D [ n o n b   D W p q p b   D U r s r b   D S t u t b   D Q v w v b   D M x y x b   D K z { z b   D I | } | m   D G ~ ~ , &/usr/bin/ldapsearch -LLL -Q -s base -h    } 1   G H��
�� 
spac { o   I J���� 0 mydns myDNS y 1   K L��
�� 
spac w m   M P    -b    u 1   Q R��
�� 
spac s o   S T���� 0 mysearchbase mySearchBase q 1   U V��
�� 
spac o m   W Z � � < 6maxPwdAge | tail -2 | sed 's|maxPwdAge: -||' | head -1   ��   l o      ���� 0 rawmaxpwdage rawmaxPwdAge j  � � � l  d d������  ��   �  � � � l  d d�� ���   �   convert it to days    �  � � � r   d { � � � c   d w � � � ^   d s � � � ^   d o � � � ^   d k � � � o   d g���� 0 rawmaxpwdage rawmaxPwdAge � m   g j����  ��� � m   k n���� � m   o r����  � m   s v��
�� 
long � o      ���� 0 	maxpwdage 	maxPwdAge �  ��� � l  | |������  ��  ��   : R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 theerror theError��   ; I  � ��� ���
�� .sysodlogaskr        TEXT � o   � ����� 0 theerror theError��  ��   7  � � � l     ������  ��   �  � � � l  � � ��� � Q   � � � � � � k   � � � �  � � � l  � ��� ���   � 9 3 Use dscl to get the date the password was last set    �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � ' !/usr/bin/dscl "/Active Directory/    � o   � ����� 0 mydomain myDomain � m   � � � � F @" -read /Users/$USER | grep pwdLastSet: | sed 's|pwdLastSet: ||'   ��   � o      ���� 0 rawpwdlastset rawpwdLastSet �  � � � l  � �������  ��   �  � � � l  � ��� ���   � 4 . determine the number of days until expiration    �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � �  
date "+%s"   ��   � o      ���� 	0 today   �  � � � r   � � � � � \   � � � � � ^   � � � � � o   � ����� 0 rawpwdlastset rawpwdLastSet � m   � �����  ��� � m   � � � � B���    � o      ���� 0 
pwdlastset 
pwdLastSet �  � � � r   � � � � � \   � � � � � o   � ����� 	0 today   � o   � ����� 0 
pwdlastset 
pwdLastSet � o      ���� 0 	rawpwdage 	rawPwdAge �  � � � r   � � � � � ^   � � � � � ^   � � � � � o   � ����� 0 	rawpwdage 	rawPwdAge � m   � ����� � m   � �����  � o      ���� 0 pwdage PwdAge �  � � � r   � � � � � I  � ��� ���
�� .sysorondlong        doub � l  � � ��� � \   � � � � � o   � ����� 0 	maxpwdage 	maxPwdAge � o   � ����� 0 pwdage PwdAge��  ��   � o      ���� 0 daysuntilexp daysUntilExp �  ��� � l  � �������  ��  ��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 theerror theError��   � I  � ��� ���
�� .sysodlogaskr        TEXT � o   � ����� 0 theerror theError��  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � W Q Display a warning / change password prompt if expiration occurs within two weeks    �  � � � l  �� ��� � Z   �� � ����� � B   � � � � � o   � ����� 0 daysuntilexp daysUntilExp � o   � ����� 0 warningdays warningDays � k   �� � �  � � � l  � ��� ���   � 5 / Get user's full name for a personalized dialog    �  � � � r   � � � � I  ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � b   � � � � m   � � � ' !/usr/bin/dscl "/Active Directory/    � o  ���� 0 mydomain myDomain � m   � � ? 9" -read /Users/$USER | grep FirstName: | awk '{print $2}'   ��   � o      �� 0 	firstname 	firstName �  � � � r  " � � � I �~ ��}
�~ .sysoexecTEXT���     TEXT � b   � � � b   � � � m   � � ' !/usr/bin/dscl "/Active Directory/    � o  �|�| 0 mydomain myDomain � m   � � > 8" -read /Users/$USER | grep LastName: | awk '{print $2}'   �}   � o      �{�{ 0 lastname lastName �  �  � Z  #��z = #* o  #&�y�y 0 lastname lastName m  &)       s  -j l -e	�x	 I -e�w

�w .sysodlogaskr        TEXT
 b  -F b  -B b  -@ b  -< b  -: b  -6 b  -4 o  -0�v�v 0 	firstname 	firstName m  03  ,    1  45�u
�u 
spac m  69 " your password will expire in    1  :;�t
�t 
spac o  <?�s�s 0 daysuntilexp daysUntilExp 1  @A�r
�r 
spac m  BE ) #days. Do you want to change it now?    �q
�q 
btns v  IQ  !  m  IL""  Not now   ! #�p# m  LO$$ 	 Yes   �p   �o%&
�o 
dflt% m  TU�n�n & �m'(
�m 
givu' m  X[�l�l,( �k)�j
�k 
disp) m  ^_�i�i �j  �x   o      �h�h 0 response  �z   s  m�*+* l m�,�g, I m��f-.
�f .sysodlogaskr        TEXT- b  m�/0/ b  m�121 b  m�343 b  m�565 b  m�787 b  m|9:9 b  mz;<; b  mv=>= b  mr?@? o  mp�e�e 0 	firstname 	firstName@ 1  pq�d
�d 
spac> o  ru�c�c 0 lastname lastName< m  vyAA  ,   : 1  z{�b
�b 
spac8 m  |BB " your password will expire in   6 1  ���a
�a 
spac4 o  ���`�` 0 daysuntilexp daysUntilExp2 1  ���_
�_ 
spac0 m  ��CC ) #days. Do you want to change it now?   . �^DE
�^ 
btnsD v  ��FF GHG m  ��II  Not now   H J�]J m  ��KK 	 Yes   �]  E �\LM
�\ 
dfltL m  ���[�[ M �ZNO
�Z 
givuN m  ���Y�Y,O �XP�W
�X 
dispP m  ���V�V �W  �g  + o      �U�U 0 response    QRQ l ���T�S�T  �S  R STS l ���RU�R  U      T V�QV Z  ��WX�P�OW = ��YZY l ��[�N[ n  ��\]\ 1  ���M
�M 
bhit] o  ���L�L 0 response  �N  Z m  ��^^ 	 Yes   X k  ��__ `a` r  ��bcb I ���Kd�J
�K .sysoexecTEXT���     TEXTd m  ��ee  
echo $USER   �J  c o      �I�I 0 user  a fgf l ���Hh�H  h 2 , Use Kerberos.app's nice change password GUI   g i�Gi O  ��jkj k  ��ll mnm l ���Fo�F  o , & hide the default window from the user   n pqp r  ��rsr m  ���E
�E boovfalss n      tut 1  ���D
�D 
pvisu 2  ���C
�C 
cwinq vwv I ���B�Ax
�B .corechpa****       obj �A  x �@y�?
�@ 
priny o  ���>�> 0 user  �?  w z�=z I ���<�;�:
�< .aevtquitnull���    obj �;  �:  �=  k m  ��{{�null     ߀��  bKerberos.app�    �_] �c�`����    }�L   )       �(�^����� ~KrbM   alis    z  Macintosh HD               �A��H+    bKerberos.app                                                     OG��e�        ����  	                CoreServices    �A�-      ���       b  Z  Y  5Macintosh HD:System:Library:CoreServices:Kerberos.app     K e r b e r o s . a p p    M a c i n t o s h   H D  (System/Library/CoreServices/Kerberos.app  / ��  �G  �P  �O  �Q  ��  ��  ��   � |�9| l     �8�7�8  �7  �9       �6}~�5�����4���3�2�1�0�/�.�6  } �-�,�+�*�)�(�'�&�%�$�#�"�!� ��
�- .aevtoappnull  �   � ****�, 0 warningdays warningDays�+ 0 adtest ADtest�* 0 mydns myDNS�) 0 mydomain myDomain�( 0 mysearchbase mySearchBase�' 0 rawmaxpwdage rawmaxPwdAge�& 0 	maxpwdage 	maxPwdAge�% 0 rawpwdlastset rawpwdLastSet�$ 	0 today  �#  �"  �!  �   �  �  ~ �������
� .aevtoappnull  �   � ****� k    ���   ��  *��  6��  ���  ���  �  �  � �� 0 theerror theError� H�� 3���� E� S� T� b c� ~  �����
�	��� � �� �� ����� �� � ��� � �����"$������������ABCIK��^e��{������������� 0 warningdays warningDays
� .sysoexecTEXT���     TEXT� 0 adtest ADtest�  �  � 0 mydns myDNS
� 
spac� 0 mydomain myDomain� 0 mysearchbase mySearchBase� 0 rawmaxpwdage rawmaxPwdAge�  �����
 
�	 
long� 0 	maxpwdage 	maxPwdAge� 0 theerror theError
� .sysodlogaskr        TEXT� 0 rawpwdlastset rawpwdLastSet� 	0 today  � 0 
pwdlastset 
pwdLastSet� 0 	rawpwdage 	rawPwdAge� 0 pwdage PwdAge
�  .sysorondlong        doub�� 0 daysuntilexp daysUntilExp�� 0 	firstname 	firstName�� 0 lastname lastName
�� 
btns
�� 
dflt
�� 
givu��,
�� 
disp�� �� 0 response  
�� 
bhit�� 0 user  
�� 
cwin
�� 
pvis
�� 
prin
�� .corechpa****       obj 
�� .aevtquitnull���    obj ���E�O �j E�W 	X  hO f�j E�O��%�%�%�%j E�O��%�%�%�%j E�Oa �%�%�%a %�%�%�%a %j E` O_ a !a !a !a &E` OPW X  �j O `a �%a %j E` Oa j E` O_ a !a  E` !O_ _ !E` "O_ "a !a !E` #O_ _ #j $E` %OPW X  �j O_ %� �a &�%a '%j E` (Oa )�%a *%j E` +O_ +a ,  B_ (a -%�%a .%�%_ %%�%a /%a 0a 1a 2la 3la 4a 5a 6la 7 EQ` 8Y E_ (�%_ +%a 9%�%a :%�%_ %%�%a ;%a 0a <a =la 3la 4a 5a 6la 7 EQ` 8O_ 8a >,a ?  5a @j E` AOa B f*a C-a D,FO*a E_ Al FO*j GUY hY h�5� ��� � A u t h e n t i c a t i o n A u t h o r i t y :   ; L o c a l C a c h e d U s e r ; / A c t i v e   D i r e c t o r y / o p u b c o . o k l a h o m a n . c o m : b b e l y e u : D 6 2 1 6 7 3 0 - A D B 7 - 4 2 9 6 - B D 4 0 - 8 1 5 F E 5 7 9 A 2 0 8� ���  1 7 2 . 1 6 . 1 5 . 2 4 9� ��� ( o p u b c o . o k l a h o m a n . c o m� ��� : d c = o p u b c o , d c = o k l a h o m a n , d c = c o m� ���  5 1 8 4 0 0 0 0 0 0 0 0 0 0�4 <� ���  � ���  1 1 7 7 9 6 0 1 5 8�3  �2  �1  �0  �/  �.   ascr  ��ޭ