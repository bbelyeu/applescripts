#!/usr/bin/perl
# changes
# 03/24/2006 - akf
#   Revised to list entries in descending date order
# Additional changes made 8/24/07 by Brad Belyeu
#	Updated to reflect rss 2.0 & new iTunes tagging

use File::Basename;
require '/etc/newsok/podcast.pl';

my $NowTime = TimeString(time);
my @FileStats;

my $podcast_timestamp = 0;
if (-e "$BASEDIR/$XML") {
	#podcast exists so get the last modified time
	@FileStats = stat("$BASEDIR/$XML");
	$podcast_timestamp = $FileStats[9];
}

#see if we have a file newer than the podcast file
my $rebuild = ($ARGV[0] eq "--rebuild"); #allow command line to force rebuild
foreach (glob("$BASEDIR/*.mp3 $BASEDIR/*.txt")) {
	@FileStats = stat($_);
	if ($FileStats[9] > $podcast_timestamp) {
		$rebuild = 1;
		last;
	};
}
exit if ($rebuild == 0);  #don't need to do anything

open (XML, "> $BASEDIR/$XML") or die "Can't open XML file";
&print_XML_header;

#get list of files and push name/age into hash
foreach (glob("$BASEDIR/*.mp3")) { $i{$_} = -M $_ };

foreach ( sort{$i{$a} <=> $i{$b} } keys %i ) { 
	#deconstruct filename
	my ($file, $dir, $ext) = fileparse ($_, '\..*');

	#get file details
	@FileStats = stat($_);

	my $url = $BASEURL . "/" . $file . $ext;
	my $length = $FileStats[7];
	my $pubdate = TimeString($FileStats[9]);

	#get description info
	undef $/;   #unset record delimiter so we will read the entire file
	open (DESC, "$dir/$file.txt");
	my $desc = <DESC>;
	close (DESC);

	print XML qq{
	<item>
		$desc
		<pubDate>$pubdate</pubDate>
		<enclosure url="$url" type="audio/mpeg" length="$length" />
		<guid isPermaLink="false">$url$pubdate</guid>
		<itunes:author>NewsOK.com Podcast</itunes:author>
		<category>News</category>
	</item>
}
}
&print_XML_footer;
close (XML);
exit;

sub TimeString {

my @t=gmtime($_[0]);
my @DayOfWeek=("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat");
my @MonthName=("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");

return "$DayOfWeek[$t[6]], $t[3] $MonthName[$t[4]] " . ($t[5]+1900) . sprintf(" %02d:", $t[2]) . sprintf("%02d:", $t[1]) . sprintf("%02d", $t[0]) . " GMT";

#      0    1    2     3     4    5     6     7
#    ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday) = gmtime(time);

# example output "Fri, 31 Dec 2004 17:00:00 GMT"

}

sub print_XML_header {

print XML qq{<?xml version="1.0" encoding="UTF-8"?>	
<?xml-stylesheet type="text/css" href="http://downloads.newsok.com/podcasts/podcast.css" ?>
<rss xmlns:itunes="http://www.itunes.com/DTDs/Podcast-1.0.dtd" version="2.0">
        <channel>
                <title>NewsOK  - Oklahoma's News and Information Source</title>	
                <link>http://newsok.com/news/podcasts</link>
                <description>NewsOK Podcasts contain daily news and information for Oklahoma.</description>
                <language>en-us</language>
                <copyright>2007 The Oklahoma Publishing Company</copyright>
                <lastBuildDate>$NowTime</lastBuildDate>
                <ttl>60</ttl>
		<skipHours>
			<hour>0</hour>
			<hour>1</hour>
			<hour>2</hour>
			<hour>3</hour>
			<hour>4</hour>
			<hour>5</hour>
		</skipHours>
		<skipDays>
			<day>Saturday</day>
			<day>Sunday</day>
		</skipDays>
		<category>News</category>
		<image>
			<link>http://www.newsok.com</link>
			<url>http://downloads.newsok.com/podcasts/images/newsok_podcast.jpg</url>
			<title>NewsOK.com Podcast</title>
		</image>
		<itunes:author>NewsOK.com Podcast</itunes:author>
		<itunes:owner>
			<itunes:name>NewsOK.com Webmaster</itunes:name>
			<itunes:email>webmaster\@newsok.com</itunes:email>
		</itunes:owner>
		<itunes:image href="http://downloads.newsok.com/podcasts/images/newsok_podcast.jpg" />
		<itunes:category text="News" />
};
}

sub print_XML_footer {
print XML qq{
</channel>
</rss>
}
}
