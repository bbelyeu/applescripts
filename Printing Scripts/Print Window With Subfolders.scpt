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
�� boovfals      l     ������  ��        i        I     �� ��
�� .aevtoappnull  �   � ****  J      ����  ��    k     �       O         Q         r        c        l   
  ��   1    
��
�� 
sele��    m   
 ��
�� 
alst  o      ���� "0 finderselection FinderSelection  R      ������
�� .ascrerr ****      � ****��  ��    k     ! !  " # " l   �� $��   $ C =Finder Scripting fails with one item (Radar problem 2741967)     #  %�� % r     & ' & l    (�� ( 1    ��
�� 
sele��   ' o      ���� "0 finderselection FinderSelection��    m      ) )�null     ߀�� ��
Finder.app��    �i����� �� !D�0,   )         �hs����`  MACS   alis    `  Caesar                     ���H+   ��
Finder.app                                                      �κ��.        ����                  CoreServices    ���^      ����     �� �� ��  -Caesar:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    C a e s a r  &System/Library/CoreServices/Finder.app  / ��     * + * l   ������  ��   +  , - , Z    M . /�� 0 . o    "���� 80 radarproblem3258323isfixed RadarProblem3258323IsFixed / k   % * 1 1  2 3 2 r   % ( 4 5 4 o   % &���� "0 finderselection FinderSelection 5 o      ���� 0 fs FS 3  6�� 6 l  ) )�� 7��   7 < 6Ideally, this list could be passed to the open handler   ��  ��   0 k   - M 8 8  9 : 9 r   - 1 ; < ; J   - /����   < o      ���� 0 fs FS :  =�� = X   2 M >�� ? > s   B H @ A @ c   B E B C B o   B C���� 0 eachitem EachItem C m   C D��
�� 
alis A n       D E D  ;   F G E o   E F���� 0 fs FS�� 0 eachitem EachItem ? o   5 6���� "0 finderselection FinderSelection��   -  F G F l  N N������  ��   G  H I H l  N S J K J r   N S L M L n   N Q N O N m   O Q��
�� 
nmbr O o   N O���� 0 fs FS M o      ����  0 selectioncount SelectionCount K   count	    I  P Q P Z   T � R S T U R =  T W V W V o   T U����  0 selectioncount SelectionCount W m   U V����   S r   Z a X Y X I   Z _�������� "0 userpicksfolder userPicksFolder��  ��   Y o      ���� 0 fs FS T  Z [ Z =  d g \ ] \ l  d e ^�� ^ o   d e����  0 selectioncount SelectionCount��   ] m   e f����  [  _�� _ k   j � ` `  a b a r   j q c d c I  j o�� e��
�� .earsffdralis        afdr e  f   j k��   d o      ���� 0 mypath MyPath b  f�� f Z   r � g h���� g =  r x i j i o   r s���� 0 mypath MyPath j n   s w k l k 4   t w�� m
�� 
cobj m m   u v����  l o   s t���� 0 fs FS h k   { � n n  o p o l  { {�� q��   q 0 *If I'm a droplet then I was double-clicked    p  r�� r r   { � s t s I   { ��������� "0 userpicksfolder userPicksFolder��  ��   t o      ���� 0 fs FS��  ��  ��  ��  ��   U l  � ��� u��   u &  I'm not a double-clicked droplet    Q  v w v l  � �������  ��   w  x�� x I  � ��� y��
�� .aevtodocnull  �    alis y o   � ����� 0 fs FS��  ��     z { z l     ������  ��   {  | } | i    
 ~  ~ I      �������� "0 userpicksfolder userPicksFolder��  ��    k      � �  � � � r      � � � J     ����   � o      ���� 0 these_items   �  ��� � r     � � � c     � � � l    ��� � I   ���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m     � � 7 1Select a folder whose contents you wish to print:   ��  ��   � m    ��
�� 
list � o      ���� 0 these_items  ��   }  � � � l     ������  ��   �  � � � j    �� ��� 0 
pshortpath 
pShortPath � m     � �       �  � � � l     ������  ��   �  � � � i     � � � I     �� ���
�� .aevtodocnull  �    alis � o      ���� 0 these_items  ��   � k     R � �  � � � r      � � � J     ����   � l      ��� � o      ���� 0 	item_info  ��   �  ��� � Y    R ��� � ��� � k    M � �  � � � r     � � � l    ��� � n     � � � 4    �� �
�� 
cobj � o    ���� 0 i   � o    ���� 0 these_items  ��   � o      ���� 0 	this_item   �  � � � r    ! � � � I   �� ���
�� .sysonfo4asfe       fss  � o    ���� 0 	this_item  ��   � l      ��� � o      ���� 0 	item_info  ��   �  ��� � Z   " M � ����� � =  " ' � � � n   " % � � � 1   # %��
�� 
asdr � l  " # ��� � o   " #���� 0 	item_info  ��   � m   % &��
�� boovtrue � l  * I � � � k   * I � �  � � � r   * 6 � � � l  * 0 ��� � c   * 0 � � � n   * . � � � 4   + .�� �
�� 
cobj � o   , -���� 0 i   � o   * +���� 0 these_items   � m   . /��
�� 
TEXT��   � o      �� 0 
pshortpath 
pShortPath �  � � � r   7 B � � � c   7 @ � � � n   7 > � � � 1   < >�~
�~ 
psxp � o   7 <�}�} 0 
pshortpath 
pShortPath � m   > ?�|
�| 
TEXT � o      �{�{ $0 theposixfilepath thePOSIXFilePath �  ��z � I   C I�y ��x�y 0 processfolder processFolder �  ��w � o   D E�v�v $0 theposixfilepath thePOSIXFilePath�w  �x  �z   �  if the item is a folder   ��  ��  ��  �� 0 i   � m    	�u�u  � l  	  ��t � I  	 �s ��r
�s .corecnte****       **** � o   	 
�q�q 0 these_items  �r  �t  ��  ��   �  � � � l     �p�o�p  �o   �  � � � l     �n�m�n  �m   �  � � � i     � � � I      �l ��k�l 0 processfolder processFolder �  ��j � o      �i�i 0 	thefolder 	theFolder�j  �k   � k     l � �  � � � r      � � � n     � � � 1    �h
�h 
txdl � 1     �g
�g 
ascr � o      �f�f 0 	olddelims 	OldDelims �  � � � r     � � � m     � �  /    � n      � � � 1    
�e
�e 
txdl � 1    �d
�d 
ascr �  � � � r     � � � n     � � � 2   �c
�c 
citm � o    �b�b 0 	thefolder 	theFolder � o      �a�a 0 newtextlist newTextList �  � � � r     � � � l    ��` � I   �_ ��^
�_ .corecnte****       **** � o    �]�] 0 newtextlist newTextList�^  �`   � o      �\�\ 0 x   �  � � � r    + � � � c    ) � � � n    '   7   '�[
�[ 
cobj m    !�Z�Z  l  " &�Y \   " & o   # $�X�X 0 x   m   $ %�W�W �Y   o    �V�V 0 newtextlist newTextList � m   ' (�U
�U 
TEXT � o      �T�T 0 printedpath printedPath �  r   , 1	
	 o   , -�S�S 0 	olddelims 	OldDelims
 n      1   . 0�R
�R 
txdl 1   - .�Q
�Q 
ascr  l  2 2�P�O�P  �O   �N Q   2 l k   5 H  r   5 B l  5 @�M c   5 @ b   5 > b   5 < b   5 :  b   5 8!"! m   5 6##  ( echo    " o   6 7�L�L 0 printedpath printedPath  m   8 9$$   && ls -R  "    o   : ;�K�K 0 printedpath printedPath m   < =%%  "  ) | lpr     m   > ?�J
�J 
TEXT�M   o      �I�I  0 theshellscript theShellScript &�H& I  C H�G'�F
�G .sysoexecTEXT���     TEXT' o   C D�E�E  0 theshellscript theShellScript�F  �H   R      �D()
�D .ascrerr ****      � ****( o      �C�C 0 errmsg ErrMsg) �B*�A
�B 
errn* o      �@�@ 0 errnmbr ErrNmbr�A   O   P l+,+ I  T k�?-.
�? .sysodlogaskr        TEXT- b   T Y/0/ b   T W121 o   T U�>�> 0 errmsg ErrMsg2 m   U V33  
Error:    0 o   W X�=�= 0 errnmbr ErrNmbr. �<45
�< 
btns4 J   Z _66 7�;7 m   Z ]88  OK   �;  5 �:9�9
�: 
disp9 m   b e�8
�8 stic   �9  , m   P Q )�N   � :;: l     �7�6�7  �6  ; <�5< l     �4�3�4  �3  �5       �2=�1>?@ABCD�0E�/�.�2  = �-�,�+�*�)�(�'�&�%�$�#�"�- 80 radarproblem3258323isfixed RadarProblem3258323IsFixed
�, .aevtoappnull  �   � ****�+ "0 userpicksfolder userPicksFolder�* 0 
pshortpath 
pShortPath
�) .aevtodocnull  �    alis�( 0 processfolder processFolder�' "0 finderselection FinderSelection�& 0 fs FS�%  0 selectioncount SelectionCount�$ 0 mypath MyPath�#  �"  
�1 boovfals> �! � �FG�
�! .aevtoappnull  �   � ****�   �  F �� 0 eachitem EachItemG  )����������������
� 
sele
� 
alst� "0 finderselection FinderSelection�  �  � 0 fs FS
� 
kocl
� 
cobj
� .corecnte****       ****
� 
alis
� 
nmbr�  0 selectioncount SelectionCount� "0 userpicksfolder userPicksFolder
� .earsffdralis        afdr� 0 mypath MyPath
� .aevtodocnull  �    alis� ��  *�,�&E�W X  *�,E�UOb    
�E�OPY "jvE�O �[��l 	kh  ��&�6G[OY��O��,E�O�j  *j+ E�Y (�k  !)j E�O���k/  *j+ E�Y hY hO�j ? � ��
HI�	� "0 userpicksfolder userPicksFolder�  �
  H �� 0 these_items  I � ���
� 
prmp
� .sysostflalis    ��� null
� 
list�	 jvE�O*��l �&E�@ ) Claudius:downs:                  A � ���JK�
� .aevtodocnull  �    alis� 0 these_items  �  J � ���������  0 these_items  �� 0 	item_info  �� 0 i  �� 0 	this_item  �� $0 theposixfilepath thePOSIXFilePathK ��������������
�� .corecnte****       ****
�� 
cobj
�� .sysonfo4asfe       fss 
�� 
asdr
�� 
TEXT
�� 
psxp�� 0 processfolder processFolder� SjvE�O Lk�j  kh ��/E�O�j E�O��,e  $��/�&Ec  Ob  �,�&E�O*�k+ Y h[OY��B �� �����LM���� 0 processfolder processFolder�� ��N�� N  ���� 0 	thefolder 	theFolder��  L ������������������ 0 	thefolder 	theFolder�� 0 	olddelims 	OldDelims�� 0 newtextlist newTextList�� 0 x  �� 0 printedpath printedPath��  0 theshellscript theShellScript�� 0 errmsg ErrMsg�� 0 errnmbr ErrNmbrM ���� ���������#$%����O )3��8��������
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
�� .sysoexecTEXT���     TEXT�� 0 errmsg ErrMsgO ������
�� 
errn�� 0 errnmbr ErrNmbr��  
�� 
btns
�� 
disp
�� stic   �� 
�� .sysodlogaskr        TEXT�� m��,E�O���,FO��-E�O�j E�O�[�\[Zk\Z�k2�&E�O���,FO �%�%�%�%�&E�O�j 
W #X  � ��%�%�a kva a a  UC ��P��  P   D ��Q�� Q  RRalis      Claudius                   �R�H+     downs                                                            r���x        ����                  Claudius    ��_      ��a�       Claudius:downs    d o w n s    C l a u d i u s  /downs  /Volumes/Claudius ��  �0  Evalis    r  Caesar                     ���H+   �?Script Editor.app                                               �@���        ����                  AppleScript     ���^      ���}     �?  c  1Caesar:Applications:AppleScript:Script Editor.app   $  S c r i p t   E d i t o r . a p p    C a e s a r  *Applications/AppleScript/Script Editor.app  / ��  �/  �.   ascr  ��ޭ