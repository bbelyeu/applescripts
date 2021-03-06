FasdUAS 1.101.10   ��   ��    k             l      ��  ��   vp
Mimic PC Monitor
�2007 Apple Computer, Inc.

All the monitor profiles that ship with ColorSync 2.6, and all the profiles you create with the Default Calibrator,
contain video gamma information stored in the Video Card Gamma Tag.  This VCGT information is what allows ColorSync to
change the appearance of your display, allowing you to emulate different video gammas (2.2, 1.8, 1.0) and different
white points (9300, d65, d50, or uncorrected).  Meaning, you can change the overall color balance and contrast of your monitor
by changing the profile associated with your display.

One way to change the profile associated with your display is by opening up Monitors & Sound and selecting various profiles
from the ColorSync Profiles panel under the Color button.  Another way is by using Applescript to do the same thing.

The best thing to do is to run the Default Calibrator to generate a profile of your display
emulating a 1.8 gamma and either uncorrected white point or 9300 white point.  These are the
basic Mac settings.  Then run the Default Calibrator again but instead of 1.8 gamma choose 2.2 gamma,
that's the standard gamma of most PC monitors.  Then modify this script so it specifies your 2.2 gamma
calibrated profile instead of the sRGB Profile. You can leave your monitor set to your normal
1.8 gamma calibrated profile most of the time, but if you want to temporarily set your
display to 2.2 gamma, just launch this script.  When it quits, it'll restore your original gamma.

Running this script is useful if you want to get a quick and dirty approximation
of what a given image or web page will look like when viewed in different gammas and white points.
It is not as accurate as doing a match or proof of a given image from one device profile to another.
Doing a match or a proof takes phosphor values of each monitor into account, whereas
this method just shows how different gammas and white points affect the image's appearance.

This is not the be-all, end-all of color management.  You still should embed profiles into images you give away,
and you still should match images you receive from their original space into your viewing space.
     � 	 	� 
 M i m i c   P C   M o n i t o r 
 � 2 0 0 7   A p p l e   C o m p u t e r ,   I n c . 
 
 A l l   t h e   m o n i t o r   p r o f i l e s   t h a t   s h i p   w i t h   C o l o r S y n c   2 . 6 ,   a n d   a l l   t h e   p r o f i l e s   y o u   c r e a t e   w i t h   t h e   D e f a u l t   C a l i b r a t o r , 
 c o n t a i n   v i d e o   g a m m a   i n f o r m a t i o n   s t o r e d   i n   t h e   V i d e o   C a r d   G a m m a   T a g .     T h i s   V C G T   i n f o r m a t i o n   i s   w h a t   a l l o w s   C o l o r S y n c   t o 
 c h a n g e   t h e   a p p e a r a n c e   o f   y o u r   d i s p l a y ,   a l l o w i n g   y o u   t o   e m u l a t e   d i f f e r e n t   v i d e o   g a m m a s   ( 2 . 2 ,   1 . 8 ,   1 . 0 )   a n d   d i f f e r e n t 
 w h i t e   p o i n t s   ( 9 3 0 0 ,   d 6 5 ,   d 5 0 ,   o r   u n c o r r e c t e d ) .     M e a n i n g ,   y o u   c a n   c h a n g e   t h e   o v e r a l l   c o l o r   b a l a n c e   a n d   c o n t r a s t   o f   y o u r   m o n i t o r 
 b y   c h a n g i n g   t h e   p r o f i l e   a s s o c i a t e d   w i t h   y o u r   d i s p l a y . 
 
 O n e   w a y   t o   c h a n g e   t h e   p r o f i l e   a s s o c i a t e d   w i t h   y o u r   d i s p l a y   i s   b y   o p e n i n g   u p   M o n i t o r s   &   S o u n d   a n d   s e l e c t i n g   v a r i o u s   p r o f i l e s 
 f r o m   t h e   C o l o r S y n c   P r o f i l e s   p a n e l   u n d e r   t h e   C o l o r   b u t t o n .     A n o t h e r   w a y   i s   b y   u s i n g   A p p l e s c r i p t   t o   d o   t h e   s a m e   t h i n g . 
 
 T h e   b e s t   t h i n g   t o   d o   i s   t o   r u n   t h e   D e f a u l t   C a l i b r a t o r   t o   g e n e r a t e   a   p r o f i l e   o f   y o u r   d i s p l a y 
 e m u l a t i n g   a   1 . 8   g a m m a   a n d   e i t h e r   u n c o r r e c t e d   w h i t e   p o i n t   o r   9 3 0 0   w h i t e   p o i n t .     T h e s e   a r e   t h e 
 b a s i c   M a c   s e t t i n g s .     T h e n   r u n   t h e   D e f a u l t   C a l i b r a t o r   a g a i n   b u t   i n s t e a d   o f   1 . 8   g a m m a   c h o o s e   2 . 2   g a m m a , 
 t h a t ' s   t h e   s t a n d a r d   g a m m a   o f   m o s t   P C   m o n i t o r s .     T h e n   m o d i f y   t h i s   s c r i p t   s o   i t   s p e c i f i e s   y o u r   2 . 2   g a m m a 
 c a l i b r a t e d   p r o f i l e   i n s t e a d   o f   t h e   s R G B   P r o f i l e .   Y o u   c a n   l e a v e   y o u r   m o n i t o r   s e t   t o   y o u r   n o r m a l 
 1 . 8   g a m m a   c a l i b r a t e d   p r o f i l e   m o s t   o f   t h e   t i m e ,   b u t   i f   y o u   w a n t   t o   t e m p o r a r i l y   s e t   y o u r 
 d i s p l a y   t o   2 . 2   g a m m a ,   j u s t   l a u n c h   t h i s   s c r i p t .     W h e n   i t   q u i t s ,   i t ' l l   r e s t o r e   y o u r   o r i g i n a l   g a m m a . 
 
 R u n n i n g   t h i s   s c r i p t   i s   u s e f u l   i f   y o u   w a n t   t o   g e t   a   q u i c k   a n d   d i r t y   a p p r o x i m a t i o n 
 o f   w h a t   a   g i v e n   i m a g e   o r   w e b   p a g e   w i l l   l o o k   l i k e   w h e n   v i e w e d   i n   d i f f e r e n t   g a m m a s   a n d   w h i t e   p o i n t s . 
 I t   i s   n o t   a s   a c c u r a t e   a s   d o i n g   a   m a t c h   o r   p r o o f   o f   a   g i v e n   i m a g e   f r o m   o n e   d e v i c e   p r o f i l e   t o   a n o t h e r . 
 D o i n g   a   m a t c h   o r   a   p r o o f   t a k e s   p h o s p h o r   v a l u e s   o f   e a c h   m o n i t o r   i n t o   a c c o u n t ,   w h e r e a s 
 t h i s   m e t h o d   j u s t   s h o w s   h o w   d i f f e r e n t   g a m m a s   a n d   w h i t e   p o i n t s   a f f e c t   t h e   i m a g e ' s   a p p e a r a n c e . 
 
 T h i s   i s   n o t   t h e   b e - a l l ,   e n d - a l l   o f   c o l o r   m a n a g e m e n t .     Y o u   s t i l l   s h o u l d   e m b e d   p r o f i l e s   i n t o   i m a g e s   y o u   g i v e   a w a y , 
 a n d   y o u   s t i l l   s h o u l d   m a t c h   i m a g e s   y o u   r e c e i v e   f r o m   t h e i r   o r i g i n a l   s p a c e   i n t o   y o u r   v i e w i n g   s p a c e . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    O        r        4    �� 
�� 
prof  m       �   " s R G B   I E C 6 1 9 6 6 - 2 . 1  n          1    ��
�� 
mPrf  4    �� 
�� 
disp  m   
 ����   m       �                                                                                  cssc   alis    �  9A549                      �
�H+    ]aColorSyncScripting.app                                           j���K        ����  	                ScriptingAdditions    �3�      �	F�      ]a   3   2  >9A549:System:Library:ScriptingAdditions:ColorSyncScripting.app  .  C o l o r S y n c S c r i p t i n g . a p p    9 A 5 4 9  8System/Library/ScriptingAdditions/ColorSyncScripting.app  / ��         l     ��������  ��  ��      ! " ! l     ��������  ��  ��   "  #�� # l     ��������  ��  ��  ��       �� $ %��   $ ��
�� .aevtoappnull  �   � **** % �� ���� & '��
�� .aevtoappnull  �   � ****��  ��   &   '  �� ����
�� 
prof
�� 
disp
�� 
mPrf�� � *��/*�k/�,FUascr  ��ޭ