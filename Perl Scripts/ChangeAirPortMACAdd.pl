#!/usr/bin/perl -w

# Written by Ryan Govostes, rgovostes@gmail.com
# Based on method described by Stefan Esser
# http://www.suspekt.org/airport-static.html

# Disclaimer: Neither Stefan Esser nor Ryan Govostes is responsible for any damage this may cause.
# Use at your own risk!

if(`pwd` =~ m/^\/System\//i) {
	printf "Argh! Are you suicidal?! Don't run this from the System directory!\n";
	exit;
}

###################

chomp($arch = `arch`);
if($arch ne "ppc") {
    printf "Sorry, this patch only works PowerPC-based Macintoshes.\n";
    exit;
}

###################

# Test for en1, which I think is always the AirPort Express
chomp($en1 = `ifconfig en1 2>&1`);

if($en1 eq "ifconfig: interface en1 does not exist") {
    printf "Sorry, it doesn't look like you have an AirPort Express.\n";
    exit;
}

###################

# We require one parameter (if they give us 6, we'll be nice)
if($#ARGV != 0 && $#ARGV != 5) {
	printf "Usage: $0 AA:BB:CC:DD:EE:FF\n";
	exit;
}

# If the user puts spaces as a separator, be forgiving
if($#ARGV == 5) {
    $ARGV[0] = join("", @ARGV);
}

# Strip colons and hyphens from the MAC
$ARGV[0] =~ s/[:-]//g;

# Check the MAC address's format
if(!($ARGV[0] =~ m/^([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})$/i)) {
	printf "Usage: $0 AA:BB:CC:DD:EE:FF\n";
	if(length($ARGV[0]) < 12) {
		printf "Hint: Each byte must be 2 digits (e.g 09)\n";
	}
	exit;
}

# Split the address up into our array
@MAC = ($ARGV[0] =~ m/^([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})$/i);

# Convert these to their decimal values while we're at it
for($i = 0; $i < 6; $i ++) {
	$MAC[$i] = hex($MAC[$i]);
}

# Weird bug mentioned by Stefan Sesser
if($MAC[0] != 0) {
	printf "Warning: The first byte of this MAC address is not 00!\n";
}

###################

# This will give us some time to do things as a privileged user
`sudo echo`;

###################

printf "Checking unpatched extension integrity... ";

# Get the MD5 hash of the MD5 hash listing of the kext bundle... wee!
chomp($hash = `find /System/Library/Extensions/AppleAirPort2.kext -type f -print0 | xargs -0 -J % md5 % | md5`);

if($hash eq "7f8d99671e5c479d4c960663487acf45") {
	printf "passed\n";
} else {
	printf "failed\n";
	exit;
}

###################

printf "Copying unpatched extension to working directory... ";

# If there's one lying around, delete it... you said you weren't in /System/, right?
`sudo rm -rf ./AppleAirPort2.kext`;

`cp -pR /System/Library/Extensions/AppleAirPort2.kext ./AppleAirPort2.kext`;

printf "done\n";

###################

# Get the size of the file, what a mess
$size = (stat("./AppleAirPort2.kext/Contents/MacOS/AppleAirPort2"))[7];
           
###################      

printf "Reading unpatched extension binary file... ";

open ORIGINAL, '< /System/Library/Extensions/AppleAirPort2.kext/Contents/MacOS/AppleAirPort2';

# These values were calculated by me based on the offsets and lengths of the sections
# of the file that we *don't* want to change... must be altered after the extension is updated
sysread ORIGINAL, $prefix, 0x1D294;
sysseek ORIGINAL, 52, 1;
sysread ORIGINAL, $suffix, $size - (sysseek ORIGINAL, 0, 1);

close ORIGINAL;

printf "done\n";

###################

printf "Constructing patch machine code... ";

$patch  = chr(0x3C) . chr(0xE0) . chr($MAC[0]) . chr($MAC[1]); # lis r7,0xAABB
$patch .= chr(0x90) . chr(0xFF) . chr(0x19)    . chr(0x90);    # stw r7,0x1990(r31)
$patch .= chr(0x3C) . chr(0xE0) . chr($MAC[2]) . chr($MAC[3]); # lis r7,0xCCDD
$patch .= chr(0x60) . chr(0xE7) . chr($MAC[4]) . chr($MAC[5]); # ori r7,r7,0xEEFF
$patch .= chr(0x90) . chr(0xFF) . chr(0x19)    . chr(0x92);    # stw r7,0x1992(r31)
$patch .= chr(0x60) . chr(0x00) . chr(0x00)    . chr(0x00);    # nop
$patch .= chr(0x60) . chr(0x00) . chr(0x00)    . chr(0x00);    # nop
$patch .= chr(0x60) . chr(0x00) . chr(0x00)    . chr(0x00);    # nop
$patch .= chr(0x60) . chr(0x00) . chr(0x00)    . chr(0x00);    # nop
$patch .= chr(0x60) . chr(0x00) . chr(0x00)    . chr(0x00);    # nop
$patch .= chr(0x60) . chr(0x00) . chr(0x00)    . chr(0x00);    # nop
$patch .= chr(0x60) . chr(0x00) . chr(0x00)    . chr(0x00);    # nop
$patch .= chr(0x60) . chr(0x00) . chr(0x00)    . chr(0x00);    # nop

printf "done\n";

###################

printf "Writing patched extension binary file... ";

open PATCHED, '> ./AppleAirPort2.kext/Contents/MacOS/AppleAirPort2';

syswrite PATCHED, $prefix;
syswrite PATCHED, $patch;
syswrite PATCHED, $suffix;

close PATCHED;

printf "done\n";

###################

printf "Copying Info.plist file to extension bundle... ";

`sudo cp -f ./Info.plist ./AppleAirPort2.kext/Contents/ > /dev/null`;

printf "done\n";

###################

printf "Setting correct permissions for patched extension... ";

`sudo chmod u=rw,go=r  ./AppleAirPort2.kext/Contents/MacOS/AppleAirPort2 ./AppleAirPort2.kext/Contents/Info.plist`;
`sudo chown -R root:wheel ./AppleAirPort2.kext ./AppleAirPort2.kext/Contents/Info.plist`;

printf "done\n";

###################

printf "Shutting down en1 interface... ";

`sudo ifconfig en1 down > /dev/null`;

printf "done\n";

###################

printf "Unloading unpatched kernel extension...";

# This probably isn't insanely smart
while(!(`sudo kextunload AppleAirPort2.kext` =~ m/succeeded/o)) {
    printf ".";
}

printf " done\n";

###################

printf "Loading patched kernel extension... ";

`sudo kextload ./AppleAirPort2.kext > /dev/null`;

printf "done\n";

###################

printf "Bringing en1 interface up... ";

`sudo ifconfig en1 up > /dev/null`;

printf "done\n";

###################

printf "Checking new MAC address... ";

# We're assuming the AirPort Extreme is en1 here
chomp($ifconfig = `ifconfig en1 ether`);

# Get MAC address from ifconfig
@ifcmac = ($ifconfig =~ m/ether ([0-9A-F]{2}):([0-9A-F]{2}):([0-9A-F]{2}):([0-9A-F]{2}):([0-9A-F]{2}):([0-9A-F]{2})/i);
$ifcmac = join("", @ifcmac);

# Check ifconfig's address against the one the user passed
if(uc($ifcmac) eq uc($ARGV[0])) {
	printf "success!\n";
	exit;
}

printf "failure!\n";


###################

printf "Shutting down en1 interface again... ";

`sudo ifconfig en1 down > /dev/null`;

printf "done\n";

###################

printf "Unloading patched kernel extension...";

# This probably isn't insanely smart
while(!(`sudo kextunload AppleAirPort2.kext` =~ m/succeeded/o)) {
    printf ".";
}

printf " done\n";

###################

printf "Loading unpatched kernel extension... ";

# If this fails, we're in trouble
`sudo kextload /System/Library/Extensions/AppleAirPort2.kext > /dev/null`;

printf "done\n";

###################

printf "Bringing en1 interface up again... ";

`sudo ifconfig en1 up > /dev/null`;

printf "done\n";

###################

exit;
