FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
Copyright � 2003 Apple Computer, Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
       	  l     ������  ��   	  
  
 j     �� �� 80 radarproblem3258323isfixed RadarProblem3258323IsFixed  m     ��
�� boovfals      l     ������  ��        l     ������  ��        i        I     �� ��
�� .aevtoappnull  �   � ****  J      ����  ��    k     �       O         Q         r        c       !   l   
 "�� " 1    
��
�� 
sele��   ! m   
 ��
�� 
alst  o      ���� "0 finderselection FinderSelection  R      ������
�� .ascrerr ****      � ****��  ��    k     # #  $ % $ l   �� &��   & C =Finder Scripting fails with one item (Radar problem 2741967)     %  '�� ' r     ( ) ( l    *�� * 1    ��
�� 
sele��   ) o      ���� "0 finderselection FinderSelection��    m      + +�null     ߀�� ��
Finder.app���    �i������zې� !D�0(   )        )P�hs����   MACS   alis    `  Caesar                     ���H+   ��
Finder.app                                                      �κ��.        ����                  CoreServices    ���^      ����     �� �� ��  -Caesar:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    C a e s a r  &System/Library/CoreServices/Finder.app  / ��     , - , l   ������  ��   -  . / . Z    M 0 1�� 2 0 o    "���� 80 radarproblem3258323isfixed RadarProblem3258323IsFixed 1 k   % * 3 3  4 5 4 r   % ( 6 7 6 o   % &���� "0 finderselection FinderSelection 7 o      ���� 0 fs FS 5  8�� 8 l  ) )�� 9��   9 < 6Ideally, this list could be passed to the open handler   ��  ��   2 k   - M : :  ; < ; r   - 1 = > = J   - /����   > o      ���� 0 fs FS <  ?�� ? X   2 M @�� A @ s   B H B C B c   B E D E D o   B C���� 0 eachitem EachItem E m   C D��
�� 
alis C n       F G F  ;   F G G o   E F���� 0 fs FS�� 0 eachitem EachItem A o   5 6���� "0 finderselection FinderSelection��   /  H I H l  N N������  ��   I  J K J l  N S L M L r   N S N O N n   N Q P Q P m   O Q��
�� 
nmbr Q o   N O���� 0 fs FS O o      ����  0 selectioncount SelectionCount M   count	    K  R S R Z   T � T U V W T =  T W X Y X o   T U����  0 selectioncount SelectionCount Y m   U V����   U r   Z a Z [ Z I   Z _�������� "0 userpicksfolder userPicksFolder��  ��   [ o      ���� 0 fs FS V  \ ] \ =  d g ^ _ ^ l  d e `�� ` o   d e����  0 selectioncount SelectionCount��   _ m   e f����  ]  a�� a k   j � b b  c d c r   j q e f e I  j o�� g��
�� .earsffdralis        afdr g  f   j k��   f o      ���� 0 mypath MyPath d  h�� h Z   r � i j���� i =  r x k l k o   r s���� 0 mypath MyPath l n   s w m n m 4   t w�� o
�� 
cobj o m   u v����  n o   s t���� 0 fs FS j k   { � p p  q r q l  { {�� s��   s 0 *If I'm a droplet then I was double-clicked    r  t�� t r   { � u v u I   { ��������� "0 userpicksfolder userPicksFolder��  ��   v o      ���� 0 fs FS��  ��  ��  ��  ��   W l  � ��� w��   w &  I'm not a double-clicked droplet    S  x y x l  � �������  ��   y  z�� z I  � ��� {��
�� .aevtodocnull  �    alis { o   � ����� 0 fs FS��  ��     | } | l     ������  ��   }  ~  ~ i    
 � � � I      �������� "0 userpicksfolder userPicksFolder��  ��   � k      � �  � � � r      � � � J     ����   � o      ���� 0 these_items   �  ��� � r     � � � c     � � � l    ��� � I   ���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m     � � 7 1Select a folder whose contents you wish to print:   ��  ��   � m    ��
�� 
list � o      ���� 0 these_items  ��     � � � l     ������  ��   �  � � � j    �� ��� 0 
pshortpath 
pShortPath � m     � �       �  � � � l     ������  ��   �  � � � i     � � � I     �� ���
�� .aevtodocnull  �    alis � o      ���� 0 these_items  ��   � k     R � �  � � � r      � � � J     ����   � l      ��� � o      ���� 0 	item_info  ��   �  ��� � Y    R ��� � ��� � k    M � �  � � � r     � � � l    ��� � n     � � � 4    �� �
�� 
cobj � o    ���� 0 i   � o    ���� 0 these_items  ��   � o      ���� 0 	this_item   �  � � � r    ! � � � I   �� ���
�� .sysonfo4asfe       **** � o    ���� 0 	this_item  ��   � l      ��� � o      ���� 0 	item_info  ��   �  ��� � Z   " M � ����� � =  " ' � � � n   " % � � � 1   # %��
�� 
asdr � l  " # ��� � o   " #���� 0 	item_info  ��   � m   % &��
�� boovtrue � l  * I � � � k   * I � �  � � � r   * 6 � � � l  * 0 ��� � c   * 0 � � � n   * . � � � 4   + .�� �
�� 
cobj � o   , -���� 0 i   � o   * +�� 0 these_items   � m   . /�~
�~ 
TEXT��   � o      �}�} 0 
pshortpath 
pShortPath �  � � � r   7 B � � � c   7 @ � � � n   7 > � � � 1   < >�|
�| 
psxp � o   7 <�{�{ 0 
pshortpath 
pShortPath � m   > ?�z
�z 
TEXT � o      �y�y $0 theposixfilepath thePOSIXFilePath �  ��x � I   C I�w ��v�w 0 processfolder processFolder �  ��u � o   D E�t�t $0 theposixfilepath thePOSIXFilePath�u  �v  �x   �  if the item is a folder   ��  ��  ��  �� 0 i   � m    	�s�s  � l  	  ��r � I  	 �q ��p
�q .corecnte****       **** � o   	 
�o�o 0 these_items  �p  �r  ��  ��   �  � � � l     �n�m�n  �m   �  � � � l     �l�k�l  �k   �  � � � i     � � � I      �j ��i�j 0 processfolder processFolder �  ��h � o      �g�g 0 	thefolder 	theFolder�h  �i   � k     l � �  � � � r      � � � n     � � � 1    �f
�f 
txdl � 1     �e
�e 
ascr � o      �d�d 0 	olddelims 	OldDelims �  � � � r     � � � m     � �  /    � n      � � � 1    
�c
�c 
txdl � 1    �b
�b 
ascr �  � � � r     � � � n     � � � 2   �a
�a 
citm � o    �`�` 0 	thefolder 	theFolder � o      �_�_ 0 newtextlist newTextList �  � � � r     � � � l    ��^ � I   �] ��\
�] .corecnte****       **** � o    �[�[ 0 newtextlist newTextList�\  �^   � o      �Z�Z 0 x   �  � � � r    + � � � c    )   n    ' 7   '�Y
�Y 
cobj m    !�X�X  l  " &�W \   " & o   # $�V�V 0 x   m   $ %�U�U �W   o    �T�T 0 newtextlist newTextList m   ' (�S
�S 
TEXT � o      �R�R 0 printedpath printedPath � 	
	 r   , 1 o   , -�Q�Q 0 	olddelims 	OldDelims n      1   . 0�P
�P 
txdl 1   - .�O
�O 
ascr
  l  2 2�N�M�N  �M    l  2 2�L�K�L  �K   �J Q   2 l k   5 H  r   5 B l  5 @�I c   5 @ b   5 >  b   5 <!"! b   5 :#$# b   5 8%&% m   5 6''  ( echo    & o   6 7�H�H 0 printedpath printedPath$ m   8 9((   && ls -l  "   " o   : ;�G�G 0 	thefolder 	theFolder  m   < =))  "  ) | lpr     m   > ?�F
�F 
TEXT�I   o      �E�E  0 theshellscript theShellScript *�D* I  C H�C+�B
�C .sysoexecTEXT���     TEXT+ o   C D�A�A  0 theshellscript theShellScript�B  �D   R      �@,-
�@ .ascrerr ****      � ****, o      �?�? 0 errmsg ErrMsg- �>.�=
�> 
errn. o      �<�< 0 errnmbr ErrNmbr�=   O   P l/0/ I  T k�;12
�; .sysodlogaskr        TEXT1 b   T Y343 b   T W565 o   T U�:�: 0 errmsg ErrMsg6 m   U V77  
Error:    4 o   W X�9�9 0 errnmbr ErrNmbr2 �889
�8 
btns8 J   Z _:: ;�7; m   Z ]<<  OK   �7  9 �6=�5
�6 
disp= m   b e�4
�4 stic   �5  0 m   P Q +�J   � >?> l     �3�2�3  �2  ? @A@ l     �1�0�1  �0  A B�/B l     �.�-�.  �-  �/       �,C�+DEFGHIJ�*�)�(�'�,  C �&�%�$�#�"�!� ������& 80 radarproblem3258323isfixed RadarProblem3258323IsFixed
�% .aevtoappnull  �   � ****�$ "0 userpicksfolder userPicksFolder�# 0 
pshortpath 
pShortPath
�" .aevtodocnull  �    alis�! 0 processfolder processFolder�  "0 finderselection FinderSelection� 0 fs FS�  0 selectioncount SelectionCount�  �  �  
�+ boovfalsD � ��KL�
� .aevtoappnull  �   � ****�  �  K �� 0 eachitem EachItemL  +������������
�	���
� 
sele
� 
alst� "0 finderselection FinderSelection�  �  � 0 fs FS
� 
kocl
� 
cobj
� .corecnte****       ****
� 
alis
� 
nmbr�
  0 selectioncount SelectionCount�	 "0 userpicksfolder userPicksFolder
� .earsffdralis        afdr� 0 mypath MyPath
� .aevtodocnull  �    alis� ��  *�,�&E�W X  *�,E�UOb    
�E�OPY "jvE�O �[��l 	kh  ��&�6G[OY��O��,E�O�j  *j+ E�Y (�k  !)j E�O���k/  *j+ E�Y hY hO�j E � ���MN�� "0 userpicksfolder userPicksFolder�  �  M �� 0 these_items  N �  �����
�  
prmp
�� .sysostflalis    ��� null
�� 
list� jvE�O*��l �&E�F ) Claudius:downs:                  G �� �����OP��
�� .aevtodocnull  �    alis�� 0 these_items  ��  O ������������ 0 these_items  �� 0 	item_info  �� 0 i  �� 0 	this_item  �� $0 theposixfilepath thePOSIXFilePathP ��������������
�� .corecnte****       ****
�� 
cobj
�� .sysonfo4asfe       ****
�� 
asdr
�� 
TEXT
�� 
psxp�� 0 processfolder processFolder�� SjvE�O Lk�j  kh ��/E�O�j E�O��,e  $��/�&Ec  Ob  �,�&E�O*�k+ Y h[OY��H �� �����QR���� 0 processfolder processFolder�� ��S�� S  ���� 0 	thefolder 	theFolder��  Q ������������������ 0 	thefolder 	theFolder�� 0 	olddelims 	OldDelims�� 0 newtextlist newTextList�� 0 x  �� 0 printedpath printedPath��  0 theshellscript theShellScript�� 0 errmsg ErrMsg�� 0 errnmbr ErrNmbrR ���� ���������'()����T +7��<��������
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****
�� 
cobj
�� 
TEXT
�� .sysoexecTEXT���     TEXT�� 0 errmsg ErrMsgT ������
�� 
errn�� 0 errnmbr ErrNmbr��  
�� 
btns
�� 
disp
�� stic   �� 
�� .sysodlogaskr        TEXT�� m��,E�O���,FO��-E�O�j E�O�[�\[Zk\Z�k2�&E�O���,FO �%�%�%�%�&E�O�j 
W #X  � ��%�%�a kva a a  UI ��U��  U   J ��V�� V  WWalis      Claudius                   �R�H+     downs                                                            r���x        ����                  Claudius    ��_      ��a�       Claudius:downs    d o w n s    C l a u d i u s  /downs  /Volumes/Claudius ��  �*  �)  �(  �'  ascr  ��ޭ