FasdUAS 1.101.10   ��   ��    k             l     �� ��    c ] Script used to mount macaccess, the Ross switcher, & Grass Valley server for studio machines       	  l     �� 
��   
 ) # modified 03/10/2008 by Brad Belyeu    	     l     ������  ��        l     ��  r         m         http://ROSS/stills/     o      ���� 0 
rossserver 
rossServer��        l    ��  r        m       D >smb://GRASSVALLEY;grassvalley.opubco.oklahoman.com/grassvalley     o      ���� 0 grassvalley grassValley��        l    ��  r        m    	    afp://mmpodcastmac2/Drobo     o      ���� 0 
droboshare 
DroboShare��         l     ������  ��      ! " ! l   ! #�� # Q    ! $ %�� $ I   �� & '
�� .aevtmvolnull���     TEXT & o    ���� 0 
rossserver 
rossServer ' �� ( )
�� 
USER ( m     * * 
 user    ) �� +��
�� 
PASS + m     , ,  password   ��   % R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   "  - . - l     �� /��   / 
  try    .  0 1 0 l     �� 2��   2 U O mount volume grassValley as user name "Administrator" with password "Opubco7&"    1  3 4 3 l     �� 5��   5   end try    4  6�� 6 l  " 7 7�� 7 Q   " 7 8 9�� 8 I  % .�� : ;
�� .aevtmvolnull���     TEXT : o   % &���� 0 
droboshare 
DroboShare ; �� < =
�� 
USER < m   ' ( > >  podcast2    = �� ?��
�� 
PASS ? m   ) * @ @  opubco   ��   9 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��       �� A B��   A ��
�� .aevtoappnull  �   � **** B �� C���� D E��
�� .aevtoappnull  �   � **** C k     7 F F   G G   H H   I I  ! J J  6����  ��  ��   D   E  �� �� ���� *�� ,�������� > @�� 0 
rossserver 
rossServer�� 0 grassvalley grassValley�� 0 
droboshare 
DroboShare
�� 
USER
�� 
PASS�� 
�� .aevtmvolnull���     TEXT��  ��  �� 8�E�O�E�O�E�O ������ W X  hO ������ W X  hascr  ��ޭ