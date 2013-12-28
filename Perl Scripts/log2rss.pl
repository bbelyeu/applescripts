#!/usr/bin/perl -w

#
# Reads a syslog-format log file and provides an RSS entry for each valid line.
#
# Copyright 2005 codepoet (codepoet@codepoetry.net)
#
# This software is released without warranty of any kind and may be redistributed or modified as long as this copyright and license are attached.
#

use strict;

my @months = (	"Jan",
				"Feb",
				"Mar",
				"Apr",
				"May",
				"Jun",
				"Jul",
				"Aug",
				"Sep",
				"Oct",
				"Nov",
				"Dec"
			);

my $filename = shift @ARGV;
my $cap = shift @ARGV || 0;

if (!$filename) {
print <<END
Usage: log2rss.pl [filename] [max recent lines]
END
;
}

# Get the year
my @timebits = localtime(time);
my $year = $timebits[5]+1900; #Because Perl's solution to Y2K sucked...

if (-f $filename) {
	my ($file, $line, @lines);
	open(LOG, $filename) || die("Could not open $filename: $!");

	print <<END
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
>
	<channel>
		<title>$filename</title>
		<link>file://$filename</link>
END
;
	my @file = <LOG>;
	for (my $ln = (@file - $cap); @file > $ln; $ln++) {
		$line = $file[$ln];
		$line =~ s/[^[:print:]]//g;
		my ($month, $day, $time, $host, $msg) = $line =~ /^(.*?)\s+(.*?)\s+(.*?)\s+(.*?)\s+(.*)$/;
		my $monthnum = grep(@months, $month);
		my $timecode = sprintf("%d-%02d-%02dT%s-06:00",$year,$monthnum,$day,$time);
		if ($msg) {
			print <<END
		<item>
			<title><![CDATA[$msg]]></title>
			<link>file://$filename</link>
			<description><![CDATA[$line]]></description>
			<guid isPermaLink="false">$ln\@$timecode</guid>
			<dc:date>$timecode</dc:date>
		</item>
END
;
		}
	}

	print <<END
	</channel>
</rss>
END
;	
	close (LOG);
} else {
	print STDERR "$filename does not exist.";
}
