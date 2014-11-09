#!/bin/bash

#Use cmus-remote to find the artist's name
ARTIST=$( cmus-remote -Q 2>/dev/null | grep artist -w | cut -d " " -f 3- )
#Use cmus-remote to find the albumartist's name
ALBUMARTIST=$( cmus-remote -Q 2>/dev/null | grep albumartist -w | cut -d " " -f 3- )
#Use cmus-remote to find the title
TITLE=$( cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- )
#Use cmus-remote to find the track number
TRACK=$( cmus-remote -Q 2>/dev/null | grep tracknumber -w | cut -d " " -f 3- )

#If the artist's or albumartist's name return empty,
if [ -z "$ARTIST" ] && [ -z "$ALBUMARTIST" ];
  then
  #just print;
  echo "Not Running"
  #However if anything else comes back, echo the track, artist and title.
  else
  if [ -z "$ARTIST" ];
    then
    echo "$TRACK. $ALBUMARTIST - $TITLE"
    else
    echo "$TRACK. $ARTIST - $TITLE"
    fi
fi
