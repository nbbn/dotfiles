#!/bin/bash

# Start i3
exec i3

# Start udiskie for automatic mounting
udiskie &

# Hide cursor when it's not in use
unclutter -root -visible & 
