FasdUAS 1.101.10   ��   ��    k             l     �� ��     GET USERNAME AND PASSWORD       	  i     
  
 I      �������� 0 getusername  ��  ��    k            I    ��  
�� .sysodlogaskr        TEXT  m         Enter your username:     �� ��
�� 
dtxt  m            ��        r        n        1   	 ��
�� 
ttxt  1    	��
�� 
rslt  o      ���� 0 username     ��  L       J        ��  o    ���� 0 username  ��  ��   	     i      !   I      �������� 0 getadminpwd  ��  ��   ! k      " "  # $ # I    	�� % &
�� .sysodlogaskr        TEXT % m      ' '  Enter your password:    & �� ( )
�� 
dtxt ( m     * *       ) �� +��
�� 
htxt + m    ��
�� boovtrue��   $  , - , r   
  . / . n   
  0 1 0 1    ��
�� 
ttxt 1 1   
 ��
�� 
rslt / o      ���� 0 adminpwd   -  2�� 2 L     3 3 J     4 4  5�� 5 o    ���� 0 adminpwd  ��  ��     6 7 6 l     8�� 8 r      9 : 9 I     �������� 0 getusername  ��  ��   : o      ���� 0 username  ��   7  ; < ; l    =�� = r     > ? > I    �������� 0 getadminpwd  ��  ��   ? o      ���� 0 adminpwd  ��   <  @ A @ l     ������  ��   A  B C B l     ������  ��   C  D E D l     ������  ��   E  F G F l     �� H��   H   SET MISC VARIABLES    G  I J I l    K�� K O     L M L r     N O N e     P P n     Q R Q 1    ��
�� 
pnam R 1    ��
�� 
sdsk O o      ���� 
0 mydisk   M m     S S�null     ߀��  b
Finder.app�ⰿ��@����  �      ��d�������dd�b�ؿ����MACS   alis    r  Macintosh HD               �A��H+    b
Finder.app                                                       C���j�        ����  	                CoreServices    �A�-      ���W      b  Z  Y  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��   J  T U T l   # V�� V r    # W X W b    ! Y Z Y o    ���� 
0 mydisk   Z m      [ [ 9 3:Library:Printers:PPDs:Contents:Resources:en.lproj:    X o      ���� (0 ppddefaultlocation ppdDefaultLocation��   U  \ ] \ l  $ ' ^�� ^ r   $ ' _ ` _ m   $ % a a  Printers Installed:    ` o      ���� &0 printersinstalled printersInstalled��   ]  b c b l     ������  ��   c  d e d l     ������  ��   e  f g f l     �� h��   h 9 3FUNCTION THAT RUNS SHELL SCRIPT TO ADD THE PRINTERS    g  i j i i    k l k I      �� m���� 0 
addprinter   m  n o n o      ���� 0 ppd   o  p q p o      ���� 0 username   q  r s r o      ���� 0 adminpwd   s  t u t o      ���� 0 printername printerName u  v�� v o      ���� &0 printersinstalled printersInstalled��  ��   l k     B w w  x y x r      z { z n      | } | 1    ��
�� 
psxp } o     ���� 0 ppd   { o      ���� 0 ppdpath ppdPath y  ~  ~ Q    ? � � � � k   	 0 � �  � � � I  	 (�� ���
�� .sysoexecTEXT���     TEXT � b   	 $ � � � b   	 " � � � b   	   � � � b   	  � � � b   	  � � � b   	  � � � b   	  � � � b   	  � � � b   	  � � � b   	  � � � b   	  � � � b   	  � � � m   	 
 � �  
lpadmin -p    � o   
 ���� 0 printername printerName � m     � �  	 -vsmb://    � o    ���� 0 username   � m     � �  :    � o    ���� 0 adminpwd   � m     � �  
@SYMPRINT/    � o    ���� 0 printername printerName � m     � �   -E -P    � n     � � � 1    ��
�� 
strq � o    ���� 0 ppdpath ppdPath � m     � �   -LLOCATION -D'    � o     !���� 0 printername printerName � m   " # � �  '   ��   �  ��� � r   ) 0 � � � b   ) . � � � b   ) , � � � o   ) *��
�� 
ret  � o   * +���� 0 printername printerName � m   , - � �  		Successful    � o      ���� &0 printersinstalled printersInstalled��   � R      ������
�� .ascrerr ****      � ****��  ��   � r   8 ? � � � b   8 = � � � b   8 ; � � � o   8 9��
�� 
ret  � o   9 :���� 0 printername printerName � m   ; < � �  		Failed    � o      ���� &0 printersinstalled printersInstalled   ��� � L   @ B � � o   @ A���� &0 printersinstalled printersInstalled��   j  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l  ( � ��� � T   ( � � � k   - � � �  � � � I  - 4�� � �
�� .sysodlogaskr        TEXT � m   - . � � 2 ,Enter printer queue name. You must be EXACT!    � �� ���
�� 
dtxt � m   / 0 � �      ��   �  � � � r   5 @ � � � n   5 < � � � 1   8 <��
�� 
ttxt � 1   5 8��
�� 
rslt � o      ���� 0 printername printerName �  � � � r   A S � � � I  A O���� �
�� .sysostdfalis    ��� null��   � �� ���
�� 
dflc � 4   E K�� �
�� 
alis � o   I J���� (0 ppddefaultlocation ppdDefaultLocation��   � o      ���� 0 ppd   �  � � � r   T h � � � b   T f � � � o   T U���� &0 printersinstalled printersInstalled � I   U e�� ����� 0 
addprinter   �  � � � o   V Y���� 0 ppd   �  � � � o   Y Z���� 0 username   �  � � � o   Z [���� 0 adminpwd   �  � � � o   [ ^���� 0 printername printerName �  ��� � o   ^ _���� &0 printersinstalled printersInstalled��  ��   � o      ���� &0 printersinstalled printersInstalled �  � � � I  i ��� � �
�� .sysodlogaskr        TEXT � m   i l � � , &Would you like to add another printer?    � �� � �
�� 
btns � J   o w � �  � � � m   o r � � 	 Yes    �  ��� � m   r u � �  No   ��   � �� ���
�� 
dflt � m   z } � �  No   ��   �  ��� � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � 1   � ��
� 
rslt � m   � � � �  No    �  S   � ���  ��  ��  ��   �  � � � l     �~�}�~  �}   �  ��| � l  � � �{  I  � ��z
�z .sysodlogaskr        TEXT o   � ��y�y &0 printersinstalled printersInstalled �x
�x 
btns J   � � �w m   � �  OK   �w   �v�u
�v 
dflt m   � �		  OK   �u  �{  �|       �t
�s�r�q�p�o�t  
 �n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�n 0 getusername  �m 0 getadminpwd  �l 0 
addprinter  
�k .aevtoappnull  �   � ****�j 0 username  �i 0 adminpwd  �h 
0 mydisk  �g (0 ppddefaultlocation ppdDefaultLocation�f &0 printersinstalled printersInstalled�e 0 printername printerName�d 0 ppd  �c  �b  �a  �`  �_   �^ �]�\�[�^ 0 getusername  �]  �\   �Z�Z 0 username    �Y �X�W�V
�Y 
dtxt
�X .sysodlogaskr        TEXT
�W 
rslt
�V 
ttxt�[ ���l O��,E�O�kv �U !�T�S�R�U 0 getadminpwd  �T  �S   �Q�Q 0 adminpwd    '�P *�O�N�M�L�K
�P 
dtxt
�O 
htxt�N 
�M .sysodlogaskr        TEXT
�L 
rslt
�K 
ttxt�R ����e� O��,E�O�kv �J l�I�H�G�J 0 
addprinter  �I �F�F   �E�D�C�B�A�E 0 ppd  �D 0 username  �C 0 adminpwd  �B 0 printername printerName�A &0 printersinstalled printersInstalled�H   �@�?�>�=�<�;�@ 0 ppd  �? 0 username  �> 0 adminpwd  �= 0 printername printerName�< &0 printersinstalled printersInstalled�; 0 ppdpath ppdPath �: � � � � ��9 � ��8�7 ��6�5 �
�: 
psxp
�9 
strq
�8 .sysoexecTEXT���     TEXT
�7 
ret �6  �5  �G C��,E�O ,�%�%�%�%�%�%�%�%��,%�%�%�%j 	Oʣ%�%E�W X  ʣ%�%E�O� �4�3�2�1
�4 .aevtoappnull  �   � **** k     �    6!!  ;""  I##  T$$  \%%  �&&  ��0�0  �3  �2     $�/�.�-�, S�+�*�) [�( a�' ��& ��%�$�#�"�!� ���� �� � �� ��� �	�/ 0 getusername  �. 0 username  �- 0 getadminpwd  �, 0 adminpwd  
�+ 
sdsk
�* 
pnam�) 
0 mydisk  �( (0 ppddefaultlocation ppdDefaultLocation�' &0 printersinstalled printersInstalled
�& 
dtxt
�% .sysodlogaskr        TEXT
�$ 
rslt
�# 
ttxt�" 0 printername printerName
�! 
dflc
�  
alis
� .sysostdfalis    ��� null� 0 ppd  � � 0 
addprinter  
� 
btns
� 
dflt� 
� 
bhit�1 �*j+  E�O*j+ E�O� 
*�,�,EE�UO��%E�O�E�O shZ���l O_ a ,E` O*a *a �/l E` O�*_ ��_ �a + %E�Oa a a a lva a a  O_ a  ,a !  Y h[OY��O�a a "kva a #a   �'� '  (( �))  b b e l y e u �*� *  ++ �,,  A n d r # a 0 8 1 9 ! �--  M a c i n t o s h   H D �.. ~ M a c i n t o s h   H D : L i b r a r y : P r i n t e r s : P P D s : C o n t e n t s : R e s o u r c e s : e n . l p r o j : �// T P r i n t e r s   I n s t a l l e d :  D S H P 8 0 0 0 D N 	 	 S u c c e s s f u l �00  D S H P 8 0 0 0 D N�alis    �   Macintosh HD               �A��H+    `5HP LaserJet 8000 Series.gz                                      F�L��        ����  	                en.lproj    �A�-      �L�7      `5  `4  `3  `2  `0  A  YMacintosh HD:Library:Printers:PPDs:Contents:Resources:en.lproj:HP LaserJet 8000 Series.gz   6  H P   L a s e r J e t   8 0 0 0   S e r i e s . g z    M a c i n t o s h   H D  LLibrary/Printers/PPDs/Contents/Resources/en.lproj/HP LaserJet 8000 Series.gz  / ��  �s  �r  �q  �p  �o  ascr  ��ޭ