#! /bin/bash
# ManPrint.sh
# by Brad Belyeu 10.7.06
# man (command_name) | col -b | ul -t dumb | lpr

# Explain usage of script to user
echo "This script will print a terminal command's man page to your default printer."

# Take input from user
echo "Please enter the command whose man page you would like printed: "
read manprint

# Error checking
if [ "$manprint" = "" ]; then
  echo "I'm sorry you didn't enter a man page to print- bye."
  exit
else  # Send to printer
  man "$manprint" | col -b | ul -t dumb | lpr
fi
