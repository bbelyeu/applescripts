FasdUAS 1.101.10   ��   ��    l      ��  i         I     ��  
�� .facofget****      � ****  o      ���� 0 this_folder    �� 	��
�� 
flst 	 o      ���� 0 added_items  ��    k     � 
 
     l     �� ��    8 2  set scriptPath to POSIX path of (the path to me)         l     �� ��    C =	set the item_count to the number of items in the added_items         Y     � ��  ��  k    {       r        n        4    �� 
�� 
cobj  o    ���� 0 i    o    ���� 0 added_items    o      ���� 0 
this_video        r       !   n     " # " 1    ��
�� 
strq # n     $ % $ 1    ��
�� 
psxp % o    ���� 0 
this_video   ! o      ���� 0 myvideopath myVideoPath   & ' & r    # ( ) ( m     * *  /    ) 1    "��
�� 
txdl '  + , + r   $ * - . - n   $ ( / 0 / 4  % (�� 1
�� 
citm 1 m   & '������ 0 o   $ %���� 0 myvideopath myVideoPath . o      ���� 0 	file_name   ,  2 3 2 r   + 0 4 5 4 m   + , 6 6  .    5 1   , /��
�� 
txdl 3  7 8 7 r   1 7 9 : 9 n   1 5 ; < ; 4  2 5�� =
�� 
citm = m   3 4����  < o   1 2���� 0 	file_name   : o      ���� 0 	file_name   8  > ? > l  8 8������  ��   ?  @ A @ l  8 8�� B��   B k e this section of the script uses 3 open source tools to create a flash encoded file from the QT Movie    A  C D C Q   8 I E F�� E I  ; @�� G��
�� .sysoexecTEXT���     TEXT G m   ; < H H  /bin/mkdir /ffmpegtmp   ��   F R      ������
�� .ascrerr ****      � ****��  ��  ��   D  I J I I  J S�� K��
�� .sysoexecTEXT���     TEXT K b   J O L M L b   J M N O N m   J K P P  /bin/ffmpeg -y -i     O o   K L���� 0 myvideopath myVideoPath M m   M N Q Q I C -acodec mp3 -ar 44100 -ac 2 -ab 128k /ffmpegtmp/extractedSound.wav   ��   J  R S R I  T i�� T��
�� .sysoexecTEXT���     TEXT T b   T e U V U b   T a W X W b   T _ Y Z Y b   T Y [ \ [ b   T W ] ^ ] m   T U _ _ 5 //bin/movtoy4m -w 960 -h 540 -F 30:1 -a 960:540     ^ o   U V���� 0 myvideopath myVideoPath \ m   W X ` `rl | /bin/yuvcorrect -v 0 -Y LUMINANCE_1.26_0_255_0_255 -Y CHROMINANCE_0_1.04_128_1.04_128_0_255 | /bin/ffmpeg -author "The Oklahoma Publishing Company"  -y  -f yuv4mpegpipe  -i - -threads 4  -deinterlace  -s 480x270  -r ntsc  -threads 1 -pix_fmt yuv420p  -g 300  -qmin 2  -b 500k  -async 50    -i /ffmpegtmp/extractedSound.wav -acodec mp3  -ar 44100 -ac 2 -ab 128k     Z n   Y ^ a b a 1   \ ^��
�� 
strq b n   Y \ c d c 1   Z \��
�� 
psxp d o   Y Z���� 0 this_folder   X o   _ `���� 0 	file_name   V m   a d e e 
 .flv   ��   S  f g f I  j q�� h��
�� .sysoexecTEXT���     TEXT h m   j m i i  /bin/rm -R /ffmpegtmp   ��   g  j k j l  r r������  ��   k  l m l l  r r�� n��   n G A this section of the script will create an iPod compatible export    m  o p o I  r y�� q��
�� .sysoexecTEXT���     TEXT q m   r u r r � �/bin/ffmpeg -i /Users/bbelyeu/Desktop/tanner\ test/070920_DM_3_things.mov -y -vcodec h264 -r ntsc -author "NewsOK.com" -copyright "Copyright NewsOK.com" -year 2007 -b 500k -s 320x192 -deinterlace -g 300 -qmax 10 ~/Desktop/ffmpegtest.mp4   ��   p  s�� s l  z z������  ��  ��  �� 0 i    m    ����   n    
 t u t m    	��
�� 
nmbr u n    v w v 2   ��
�� 
cobj w o    ���� 0 added_items  ��     x�� x I  � ��� y��
�� .sysodlogaskr        TEXT y m   � � z z  	All done!   ��  ��  ��       �� { |��   { ��
�� .facofget****      � **** | �� ���� } ~��
�� .facofget****      � ****�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��   } �������������� 0 this_folder  �� 0 added_items  �� 0 i  �� 0 
this_video  �� 0 myvideopath myVideoPath�� 0 	file_name   ~ �������� *���� 6 H������ P Q _ ` e i r z��
�� 
cobj
�� 
nmbr
�� 
psxp
�� 
strq
�� 
txdl
�� 
citm
�� .sysoexecTEXT���     TEXT��  ��  
�� .sysodlogaskr        TEXT�� � k��-�,Ekh ��/E�O��,�,E�O�*�,FO��i/E�O�*�,FO��k/E�O 
�j 	W X 
 hO�%�%j 	O�%�%��,�,%�%a %j 	Oa j 	Oa j 	OP[OY��Oa j ascr  ��ޭ