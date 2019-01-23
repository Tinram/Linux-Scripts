#!/bin/sh

# File:           elf_overview.sh
#
# Description:    Provide simple overview of an ELF executable.
#
# Usage:          ./elf_overview.sh <exe> | less
#
# Copyright:      Martin Latter, 23/01/2019
# Version:        0.03
# License:        GNU GPL version 3.0 (GPL v3); http://www.gnu.org/licenses/gpl.html
# Link:           https://github.com/Tinram/Linux-Scripts.git



if [ -z "$1" ]; then
	printf "no executable specified\n\tusage: %s <exe>\n" "$0"
	exit 1
fi


SEP='
-------------------------------------------------------------------------------------------------
'
SEP2="$SEP"'
'


printf "%s" "$SEP"
printf " FILE INFO"
printf "%s" "$SEP2"
file "$1"


printf "%s" "$SEP"
printf " HEADER INFO"
printf "%s" "$SEP2"
readelf -h "$1"


printf "%s" "$SEP"
printf " HEADER BYTES"
printf "%s" "$SEP2"
hd -n 64 "$1"


printf "%s" "$SEP"
printf " HEADERS"
printf "%s" "$SEP"
readelf -l "$1"


printf "%s" "$SEP"
printf " SECTION DETAILS"
printf "%s" "$SEP2"
size -A "$1"


printf "%s" "$SEP"
printf " DYNAMIC SYMBOL TABLE"
printf "%s" "$SEP"
readelf --dyn-syms "$1"


printf "%s" "$SEP"
printf " SYMBOL TABLE"
printf "%s" "$SEP"
readelf -s "$1"


printf "%s" "$SEP"
printf " GCC VERSION"
printf "%s" "$SEP"
objdump -s --section .comment "$1"
#readelf -p .GCC.command.line "$1"


printf "%s" "$SEP"
printf " SHARED LIBRARIES"
printf "%s" "$SEP2"
ldd -v "$1"


printf "%s" "$SEP"
printf " STRINGS"
printf "%s" "$SEP2"
strings -d "$1"


printf "%s" "$SEP"
