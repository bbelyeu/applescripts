FasdUAS 1.101.10   ��   ��    k             l     �� ��    = 7  Copyright (c) 2005 Stephen Holt. All rights reserved.       	  l     �� 
��   
 %   http://www.crashonlaunch.org/    	     l     ������  ��        l     �� ��    L F  This program is free software; you can redistribute it and/or modify         l     �� ��    L F  it under the terms of the GNU General Public License as published by         l     �� ��    I C  the Free Software Foundation; either version 2 of the License, or         l     �� ��    + %  (at your option) any later version.         l     ������  ��        l     �� ��    G A  This program is distributed in the hope that it will be useful,         l     ��  ��     F @  but WITHOUT ANY WARRANTY; without even the implied warranty of      ! " ! l     �� #��   # E ?  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the    "  $ % $ l     �� &��   & 4 .  GNU General Public License for more details.    %  ' ( ' l     ������  ��   (  ) * ) l     �� +��   + J D This script is based on code contained in and knowledge gained from    *  , - , l     �� .��   . = 7 Cyberduck's AppleScript Samples - http://cyberduck.ch/    -  / 0 / l     ������  ��   0  1 2 1 l     �� 3��   3 > 8  Bug fixes, suggestions and comments should be sent to:    2  4 5 4 l     �� 6��   6    sholt@crashonlaunch.org    5  7 8 7 l     ������  ��   8  9 : 9 l     �� ;��   ;     Modified by David Kocher    :  < = < l     ������  ��   =  > ? > l     �� @��   @   remote stuff    ?  A B A l     C�� C r      D E D m      F F  example.net    E o      ���� 0 	theserver 	theServer��   B  G H G l    I�� I r     J K J m     L L 	 ftp    K o      ���� 0 theprotocol theProtocol��   H  M N M l    O�� O r     P Q P m    	 R R  username    Q o      ���� 0 theuser theUser��   N  S T S l    U�� U r     V W V m     X X  /images    W o      ���� "0 theremotefolder theRemoteFolder��   T  Y Z Y l     ������  ��   Z  [ \ [ l     �� ]��   ] / ) Set the location for the image and thumb    \  ^ _ ^ l   # `�� ` r    # a b a b     c d c n     e f e 1    ��
�� 
psxp f l    g�� g I   �� h i
�� .earsffdralis        afdr h m    ��
�� afdrdesk i �� j k
�� 
from j m    ��
�� fldmfldu k �� l��
�� 
rtyp l m    ��
�� 
TEXT��  ��   d m     m m  Screenshots    b o      ���� 0 image_location  ��   _  n o n l  $ + p�� p r   $ + q r q o   $ '���� 0 image_location   r o      ���� 0 thumb_location  ��   o  s t s l     ������  ��   t  u v u l     �� w��   w   take the screenshot    v  x y x l  , 3 z�� z I  , 3�� {��
�� .sysodelanull��� ��� nmbr { m   , / | | ?�      ��  ��   y  } ~ } l  4 C ��  I  4 C�� ���
�� .sysoexecTEXT���     TEXT � b   4 ? � � � b   4 ; � � � m   4 7 � �  /usr/sbin/screencapture     � o   7 :���� 0 image_location   � m   ; > � � 
 .pdf   ��  ��   ~  � � � l     ������  ��   �  � � � l     �� ���   �   do the image stuffs    �  � � � l  D � ��� � Q   D � � � � � O   G � � � � k   M � � �  � � � I  M R������
�� .ascrnoop****      � ****��  ��   �  � � � l  S S�� ���   � ' ! get the image from the clipboard    �  � � � r   S b � � � I  S ^�� ���
�� .aevtodocnull  �    alis � b   S Z � � � o   S V���� 0 image_location   � m   V Y � � 
 .png   ��   � o      ���� 0 	the_image   �  � � � l  c c�� ���   �   resize image for thumb    �  � � � I  c p�� � �
�� .icasscalnull��� ��� obj  � o   c f���� 0 	the_image   � �� ���
�� 
maxi � m   i l���� ���   �  � � � l  q q�� ���   �   save the thumb as png    �  � � � I  q ��� � �
�� .coresavenull���    obj  � o   q t���� 0 	the_image   � �� � �
�� 
fltp � m   w z��
�� typvPNGf � �� ���
�� 
kfil � b   } � � � � o   } ����� 0 thumb_location   � m   � � � �  
.thumb.png   ��   �  ��� � I  � ��� ���
�� .coreclosnull���    obj  � o   � ����� 0 	the_image  ��  ��   � m   G J � ��null     ߀��  �Image Events.app �^�     ��Ͱ   ��$   )       �:(�]鈿����imev   alis    �  	jungle hd                  ��H+    �Image Events.app                                                 k��d=~        ����  	                CoreServices    ��:      �c�.      �  �  �  6jungle hd:System:Library:CoreServices:Image Events.app  "  I m a g e   E v e n t s . a p p   	 j u n g l e   h d  ,System/Library/CoreServices/Image Events.app  / ��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 error_message  ��   � I  � ��� ���
�� .sysodlogaskr        **** � o   � ����� 0 error_message  ��  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � 1 + upload the image and thumbs with Cyberduck    �  ��� � l  �. ��� � Q   �. � � � � O   �! � � � k   �  � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  � � � r   � � � � � l  � � ��� � I  � ��� ���
�� .corecrel****      � null � m   � ���
�� 
docu��  ��   � o      ���� 0 
thebrowser 
theBrowser �  ��� � Q   �  � � � � O   � � � � k   � � �  � � � r   � � � � � m   � � � �  UTF-8    � 1   � ���
�� 
enco �  � � � I  � ����� �
�� .CYCKCoCtnull��� ��� obj ��   � �� � �
�� 
HoSt � o   � ����� 0 	theserver 	theServer � �� � �
�� 
PrCl � o   � ����� 0 theprotocol theProtocol � �� � �
�� 
UsMe � o   � ����� 0 theuser theUser � �� ���
�� 
PaTh � o   � ����� "0 theremotefolder theRemoteFolder��   �  � � � I  � ��� ���
�� .CYCKUpAdnull��� ��� obj  � b   � � � � � 4   � �� �
� 
cobj � o   � ��~�~ 0 image_location   � m   � � � � 
 .png   ��   �  � � � I  ��} ��|
�} .CYCKUpAdnull��� ��� obj  � b   � � � � 4   � ��{ �
�{ 
cobj � o   � ��z�z 0 thumb_location   � m   � � �  
.thumb.png   �|   �  � � � I �y�x�w
�y .CYCKDiCtnull��� ��� obj �x  �w   �  ��v � I �u�t�s
�u .coreclosnull���    obj �t  �s  �v   � l  � � ��r � o   � ��q�q 0 
thebrowser 
theBrowser�r   � R      �p ��o
�p .ascrerr ****      � **** � o      �n�n 0 error_message  �o   � I  �m ��l
�m .sysodlogaskr        **** � o  �k�k 0 error_message  �l  ��   � m   � � � �null     ߀�� U��Cyberduck.app�����^� ��ِ��؀   ��   )       �:(�]鈿�ذ�CYCK   alis    �  	jungle hd                  ��H+   U��Cyberduck.app                                                   �ID�^��        ����  	                
Deployment    ��:      �^Z     U�� 2�� 2�� '�� �;  k�  Ijungle hd:Users:dkocher:Projects:cyberduck:build:Deployment:Cyberduck.app     C y b e r d u c k . a p p   	 j u n g l e   h d  ?Users/dkocher/Projects/cyberduck/build/Deployment/Cyberduck.app   /    ��   � R      �j ��i
�j .ascrerr ****      � **** � o      �h�h 0 error_message  �i   � I ).�g ��f
�g .sysodlogaskr        **** � o  )*�e�e 0 error_message  �f  ��  ��       �d � ��d   � �c
�c .aevtoappnull  �   � **** � �b �a�`�_
�b .aevtoappnull  �   � ****  k    .  A  G  M  S  ^  n		  x

  }  �  ��^�^  �a  �`   �]�] 0 error_message   ; F�\ L�[ R�Z X�Y�X�W�V�U�T�S�R�Q m�P�O |�N � ��M ��L ��K�J�I�H�G�F�E�D ��C�B�A�@�? ��>�=�<�; ��:�9�8�7�6�5�4�3 ��2 ��1�\ 0 	theserver 	theServer�[ 0 theprotocol theProtocol�Z 0 theuser theUser�Y "0 theremotefolder theRemoteFolder
�X afdrdesk
�W 
from
�V fldmfldu
�U 
rtyp
�T 
TEXT�S 
�R .earsffdralis        afdr
�Q 
psxp�P 0 image_location  �O 0 thumb_location  
�N .sysodelanull��� ��� nmbr
�M .sysoexecTEXT���     TEXT
�L .ascrnoop****      � ****
�K .aevtodocnull  �    alis�J 0 	the_image  
�I 
maxi�H �
�G .icasscalnull��� ��� obj 
�F 
fltp
�E typvPNGf
�D 
kfil
�C .coresavenull���    obj 
�B .coreclosnull���    obj �A 0 error_message  �@  
�? .sysodlogaskr        ****
�> .miscactvnull��� ��� null
�= 
docu
�< .corecrel****      � null�; 0 
thebrowser 
theBrowser
�: 
enco
�9 
HoSt
�8 
PrCl
�7 
UsMe
�6 
PaTh�5 
�4 .CYCKCoCtnull��� ��� obj 
�3 
cobj
�2 .CYCKUpAdnull��� ��� obj 
�1 .CYCKDiCtnull��� ��� obj �_/�E�O�E�O�E�O�E�O������ �,a %E` O_ E` Oa j Oa _ %a %j O Oa  E*j O_ a %j E` O_ a a l O_ a  a !a "_ a #%� $O_ j %UW X & '�j (O �a ) z*j *Oa +j ,E` -O [_ - Qa .*a /,FO*a 0�a 1�a 2�a 3�a 4 5O*a 6_ /a 7%j 8O*a 6_ /a 9%j 8O*j :O*j %UW X & '�j (UW X & '�j ( ascr  ��ޭ