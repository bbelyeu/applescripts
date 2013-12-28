#!/bin/sh

read webaddress
F=`echo $webaddress | sed s/\ /+/g`

open "http://google.com/search?q=$F"