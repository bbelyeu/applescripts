FasdUAS 1.101.10   ��   ��    k             p         �� �� 0 current_user    �� 	�� 0 backup_path   	 ������ 0 	home_path  ��     
  
 l     ��  r         I    �� ��
�� .fndrgstl****    ��� ****  m        
 USER   ��    o      ���� 0 current_user  ��        l    ��  r        I   �� ��
�� .fndrgstl****    ��� ****  m    	   
 HOME   ��    o      ���� 0 	home_path  ��        l    ��  r        b        m        /Volumes/mybook/     o    ���� 0 current_user    o      ���� 0 backup_path  ��       !   l     ������  ��   !  " # " i      $ % $ I      �������� 0 exporthandler exportHandler��  ��   % k     Z & &  ' ( ' I    	�� ) *
�� .sysoexecTEXT���     TEXT ) m      + + � �sudo date >> /Library/Logs/Migrate.log
				sudo chmod 777 /Library/Logs/Migrate.log
				sudo echo Starting export copy... >> /Library/Logs/Migrate.log    * �� , -
�� 
RApw , m     . .  opubco    - �� /��
�� 
badm / m    ��
�� boovtrue��   (  0 1 0 I  
 �� 2��
�� .sysoexecTEXT���     TEXT 2 m   
  3 3 S Mdefaults write -app Console OpenLogFilePaths -array /Library/Logs/Migrate.log   ��   1  4 5 4 O     6 7 6 I   ������
�� .miscactvnull��� ��� null��  ��   7 m     8 8�null     ߀��  �Console.app͐   _     ��Ͱ   ��(   )       &(^9������????@  alis    f  Macintosh HD               �A��H+    �Console.app                                                     ����T        ����  	                	Utilities     �A�-      ��Ť      �  �  /Macintosh HD:Applications:Utilities:Console.app     C o n s o l e . a p p    M a c i n t o s h   H D  "Applications/Utilities/Console.app  / ��   5  9 : 9 I   (�� ; <
�� .sysoexecTEXT���     TEXT ; b      = > = b     ? @ ? m     A A  sudo mkdir     @ o    ���� 0 backup_path   > m     B B #  >> /Library/Logs/Migrate.log    < �� C D
�� 
RApw C m   ! " E E  opubco    D �� F��
�� 
badm F m   # $��
�� boovtrue��   :  G H G I  ) >�� I J
�� .sysoexecTEXT���     TEXT I b   ) 4 K L K b   ) 0 M N M b   ) . O P O b   ) , Q R Q m   ) * S S  sudo ditto -rsrc -v     R o   * +���� 0 	home_path   P m   , - T T       N o   . /���� 0 backup_path   L m   0 3 U U #  >> /Library/Logs/Migrate.log    J �� V W
�� 
RApw V m   5 8 X X  opubco    W �� Y��
�� 
badm Y m   9 :��
�� boovtrue��   H  Z [ Z I  ? L�� \ ]
�� .sysoexecTEXT���     TEXT \ m   ? B ^ ^ | vsudo echo Export copy complete.  Please compare the file size with the users home folder. >> /Library/Logs/Migrate.log    ] �� _ `
�� 
RApw _ m   C F a a  opubco    ` �� b��
�� 
badm b m   G H��
�� boovtrue��   [  c�� c I  M Z�� d e
�� .sysodlogaskr        TEXT d m   M P f f 8 2Export copy completed.  View log file for details.    e �� g��
�� 
givu g m   S V���� ��  ��   #  h i h l     ������  ��   i  j k j i     l m l I      �������� 0 importhandler importHandler��  ��   m k      n n  o p o I    �� q r
�� .sysoexecTEXT���     TEXT q m      s s o isudo date >> /Library/Logs/Migrate.log
				sudo echo Starting import copy... >> /Library/Logs/Migrate.log    r �� t��
�� 
badm t m    ��
�� boovtrue��   p  u v u I   �� w��
�� .sysoexecTEXT���     TEXT w m    	 x x S Mdefaults write -app Console OpenLogFilePaths -array /Library/Logs/Migrate.log   ��   v  y z y O     { | { I   ������
�� .miscactvnull��� ��� null��  ��   | m     8 z  } ~ } I   (��  �
�� .sysoexecTEXT���     TEXT  b    " � � � b      � � � b     � � � b     � � � m     � �  sudo ditto -rsrc -v     � o    ���� 0 backup_path   � m     � �       � o    ���� 0 	home_path   � m     ! � � #  >> /Library/Logs/Migrate.log    � �� ���
�� 
badm � m   # $��
�� boovtrue��   ~  � � � I  ) 8�� � �
�� .sysoexecTEXT���     TEXT � b   ) 2 � � � b   ) 0 � � � b   ) . � � � b   ) , � � � m   ) * � �  sudo chown -R     � o   * +���� 0 current_user   � m   , - � �       � o   . /���� 0 	home_path   � m   0 1 � � #  >> /Library/Logs/Migrate.log    � �� ���
�� 
badm � m   3 4��
�� boovtrue��   �  � � � I  9 @�� � �
�� .sysoexecTEXT���     TEXT � m   9 : � � B <sudo echo Import copy complete. >> /Library/Logs/Migrate.log    � �� ���
�� 
badm � m   ; <��
�� boovtrue��   �  � � � l  A A������  ��   �  � � � l  A A������  ��   �  � � � I  A J�� � �
�� .sysoexecTEXT���     TEXT � m   A D � � ^ Xsudo ditto /Volumes/mybook/change_hostname_10.3.app /Library/Scripts/change_hostname.app    � �� ���
�� 
badm � m   E F��
�� boovtrue��   �  � � � l  K K������  ��   �  � � � Q   K ` � ��� � I  N W�� � �
�� .sysoexecTEXT���     TEXT � m   N Q � � * $sudo chmod -R 777 /Library/Scripts/*    � �� ���
�� 
badm � m   R S��
�� boovtrue��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � Q   a v � ��� � I  d m�� � �
�� .sysoexecTEXT���     TEXT � m   d g � � # sudo chmod -R 777 /usr/sybase    � �� ���
�� 
badm � m   h i��
�� boovtrue��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � Q   w � � ��� � I  z ��� � �
�� .sysoexecTEXT���     TEXT � m   z } � � C =sudo chmod -R 777  "/Applications/Adobe InDesign CS/Plug-Ins"    � �� ���
�� 
badm � m   ~ ��
�� boovtrue��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � Q   � � � ��� � I  � ��� � �
�� .sysoexecTEXT���     TEXT � m   � � � � D >sudo chmod -R 777  "/Applications/Adobe InDesign CS2/Plug-Ins"    � �� ���
�� 
badm � m   � ���
�� boovtrue��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � Q   � � � ��� � I  � ��� � �
�� .sysoexecTEXT���     TEXT � m   � � � � 6 0sudo chmod -R 777  /Library/Preferences/Woodwing    � � ��~
� 
badm � m   � ��}
�} boovtrue�~   � R      �|�{�z
�| .ascrerr ****      � ****�{  �z  ��   �  � � � l  � ��y�x�y  �x   �  � � � I  � ��w � �
�w .sysoexecTEXT���     TEXT � m   � � � � A ;sudo echo Permissions changed. >> /Library/Logs/Migrate.log    � �v ��u
�v 
badm � m   � ��t
�t boovtrue�u   �  � � � l  � ��s�r�s  �r   �  � � � l  � ��q�p�q  �p   �  � � � O   � � � � � I  � ��o�n �
�o .aevtunlknull    ��� obj �n   � �m ��l
�m 
akcp � m   � � � �  opubco   �l   � m   � � � �null     ����  6\Keychain Scripting.appc�`��Ͱ   ��(   )       &(^9������kscr   alis    �  Macintosh HD               �A��H+    6\Keychain Scripting.app                                           P]��h�        ����  	                ScriptingAdditions    �A�-      ����      6\  Z  Y  EMacintosh HD:System:Library:ScriptingAdditions:Keychain Scripting.app   .  K e y c h a i n   S c r i p t i n g . a p p    M a c i n t o s h   H D  8System/Library/ScriptingAdditions/Keychain Scripting.app  / ��   �  � � � l  � ��k�j�k  �j   �  � � � O   � � � � � I  � ��i�h�g
�i .miscactvnull��� ��� null�h  �g   � m   � � � ��null     c����  �Keychain Access.app �c���Ͱ   ��(   )       &(^9������kcmr   alis    �  Macintosh HD               �A��H+    �Keychain Access.app                                             ኾhά        ����  	                	Utilities     �A�-      �i#      �  �  7Macintosh HD:Applications:Utilities:Keychain Access.app   (  K e y c h a i n   A c c e s s . a p p    M a c i n t o s h   H D  *Applications/Utilities/Keychain Access.app  / ��   �  � � � I  � ��f�e�d
�f .miscactvnull��� ��� null�e  �d   �  ��c � I  � �b � �
�b .sysodlogaskr        TEXT � m   � � � � � �Please click Edit in the menu bar and pull the menu down then select- 'Change password for keychain login'.  Set their new keychain password to be the same as the user's network password.    � �a � �
�a 
btns � J   � � � �  ��` � m   � � � �  OK   �`   � �_ ��^
�_ 
givu � m   � ��]�] 
�^  �c   k  � � � l     �\�[�\  �[   �    l   �Z I   �Y�X
�Y .sysodlogaskr        TEXT m    4.To run this script, you'll need a backup volume connected.  To make things simple the volume needs to be named 'mybook'.  This script will export or import a user's data to a folder on 'mybook' with their username.  Make sure the username is the same when you do the import as it was when you exported.   �X  �Z    l   �W q     �V	�V 0 x  	 �U�T�U 0 y  �T  �W   

 l   *�S r    * I   (�R
�R .sysodlogaskr        TEXT m     . (Would you like to export or import data?    �Q
�Q 
btns J    "  m      Export    �P m       Import   �P   �O�N
�O 
dflt m   # $  Export   �N   o      �M�M 0 x  �S    l  + 2�L r   + 2  n   + 0!"! 1   , 0�K
�K 
bhit" o   + ,�J�J 0 x    o      �I�I 0 y  �L   #�H# l  3 T$�G$ Z   3 T%&'�F% =  3 8()( o   3 4�E�E 0 y  ) m   4 7**  Export   & I   ; @�D�C�B�D 0 exporthandler exportHandler�C  �B  ' +,+ =  C H-.- o   C D�A�A 0 y  . m   D G//  Import   , 0�@0 I   K P�?�>�=�? 0 importhandler importHandler�>  �=  �@  �F  �G  �H       �<1234�<  1 �;�:�9�; 0 exporthandler exportHandler�: 0 importhandler importHandler
�9 .aevtoappnull  �   � ****2 �8 %�7�656�5�8 0 exporthandler exportHandler�7  �6  5  6  +�4 .�3�2�1 3 8�0 A�/ B E S�. T U X ^ a f�-�,�+
�4 
RApw
�3 
badm�2 
�1 .sysoexecTEXT���     TEXT
�0 .miscactvnull��� ��� null�/ 0 backup_path  �. 0 	home_path  
�- 
givu�, 
�+ .sysodlogaskr        TEXT�5 [����e� O�j O� *j UO��%�%���e� O��%�%�%a %�a �e� Oa �a �e� Oa a a l 3 �* m�)�(78�'�* 0 importhandler importHandler�)  �(  7  8 % s�&�% x 8�$ ��# ��" � ��! � � � � �� � � � � � � �� �� � �� �����
�& 
badm
�% .sysoexecTEXT���     TEXT
�$ .miscactvnull��� ��� null�# 0 backup_path  �" 0 	home_path  �! 0 current_user  �   �  
� 
akcp
� .aevtunlknull    ��� obj 
� 
btns
� 
givu� 
� 
� .sysodlogaskr        TEXT�'��el O�j O� *j UO��%�%�%�%�el O��%�%�%�%�el O��el Oa �el O a �el W X  hO a �el W X  hO a �el W X  hO a �el W X  hO a �el W X  hOa �el Oa  *a a l UOa  *j UO*j Oa a a  kva !a "a # $4 �9��:;�
� .aevtoappnull  �   � ****9 k     T<<  
==  >>  ??  @@ AA 
BB CC #��  �  �  : ��� 0 x  � 0 y  ;  �� � ����
�	�*�/�
� .fndrgstl****    ��� ****� 0 current_user  � 0 	home_path  � 0 backup_path  
� .sysodlogaskr        TEXT
� 
btns
�
 
dflt�	 
� 
bhit� 0 exporthandler exportHandler� 0 importhandler importHandler� U�j E�O�j E�O��%E�O�j O����lv��� E�O�a ,E�O�a   
*j+ Y �a   
*j+ Y h ascr  ��ޭ