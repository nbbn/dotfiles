#!/bin/bash

#Use cmus-remote to find the artist's name and keep it as a string;
ARTIST=$( cmus-remote -Q 2>/dev/null | grep artist | cut -d " " -f 3- )
#Use cmus-remote to find the title and keep it as a string;
TITLE=$( cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- )

#If the artist's name returns empty,
if [ -z "$ARTIST" ];
then
#just print;
echo "Not Running"
#However if anything else comes back, print our two strings;
else
echo "$ARTIST - $TITLE"
fi
