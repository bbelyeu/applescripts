FasdUAS 1.101.10   ��   ��    k             l      �� ��   jd
	CONVERT ITEM TO H264 MOV
	COPYRIGHT 2008 OPUBCO STUDIOS
	
	This folder action script will convert the final cut movie file to an h264 movie with specific settings for our lobby displays.  After doing that it will move the video to the machine displaying the lobby videos and then archive the movie onto the Drobo.
	
	Designed & tested under OS 10.4.11
	
       	  l     ������  ��   	  
�� 
 i         I     ��  
�� .facofget****      � ****  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    k     G       l     ������  ��        l     �� ��    &   Setup path for bundled contents         r     	    n         1    ��
�� 
psxp  l     ��  l     ��  I    �� ��
�� .earsffdralis        afdr   f     ��  ��  ��    o      ���� 0 	appfolder 	appFolder       l  
 
������  ��      ! " ! l   
 
�� #��   # � 
	-- find out how many new items have been placed in the folder
	set the item_count to the number of items in the added_items
	    "  $ % $ l  
 
������  ��   %  & ' & Y   
 E (�� ) *�� ( k    @ + +  , - , r     . / . n     0 1 0 4    �� 2
�� 
cobj 2 o    ���� 0 i   1 o    ���� 0 added_items   / o      ���� 0 	this_item   -  3 4 3 r     % 5 6 5 m     ! 7 7  .    6 l      8�� 8 1   ! $��
�� 
txdl��   4  9 : 9 r   & . ; < ; n   & , = > = 4   ) ,�� ?
�� 
citm ? m   * +����  > n   & ) @ A @ o   ' )���� 0 i   A o   & '���� 0 added_items   < l      B�� B o      ���� 0 	item_name  ��   :  C D C l  / /�� E��   E   First create a h264 copy    D  F G F I  / >�� H��
�� .sysoexecTEXT���     TEXT H b   / : I J I b   / 8 K L K b   / 6 M N M b   / 4 O P O b   / 2 Q R Q o   / 0���� 0 	appfolder 	appFolder R m   0 1 S S # Contents/Resources/ffmpeg -i     P o   2 3���� 0 	this_item   N m   4 5 T T G A -y -deinterlace -b 2000k -qmin 2 -s 1280x720 ~/Public/Drop\ Box/    L o   6 7���� 0 	item_name   J m   8 9 U U  	_h264.mov   ��   G  V W V l  ? ?�� X��   X   Move copy to mmplasmamac    W  Y�� Y l  ? ?�� Z��   Z !  Move original to the Drobo   ��  �� 0 i   ) m    ����  * n     [ \ [ m    ��
�� 
nmbr \ n    ] ^ ] 2   ��
�� 
cobj ^ o    ���� 0 added_items  ��   '  _ ` _ l  F F������  ��   `  a�� a l  F F������  ��  ��  ��       �� b c��   b ��
�� .facofget****      � **** c �� ���� d e��
�� .facofget****      � ****�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��   d �������������� 0 this_folder  �� 0 added_items  �� 0 	appfolder 	appFolder�� 0 i  �� 0 	this_item  �� 0 	item_name   e �������� 7������ S T U��
�� .earsffdralis        afdr
�� 
psxp
�� 
cobj
�� 
nmbr
�� 
txdl�� 0 i  
�� 
citm
�� .sysoexecTEXT���     TEXT�� H)j  �,E�O :k��-�,Ekh ��/E�O�*�,FO��,�k/E�O��%�%�%�%�%j OP[OY��OPascr  ��ޭ