#!/bin/bash


case "$1" in
  play)
  	if [ -a $HOME/.cmus/socket ]; then
  		cmus-remote -u
  	else 
  		audacious -u
  	fi
  	;;

  stop)
	if [ -a $HOME/.cmus/socket ]; then
		cmus-remote -s
	else
		audavious --stop
	fi
	;;
  next)
	cmus-remote -n
	;;

  prev)
	cmus-remote -r
	;;

  *)
	exit 0
esac
 
exit 0