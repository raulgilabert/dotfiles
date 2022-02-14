#!/bin/zsh

title=$(echo $(playerctl metadata -p spotifyd | grep title | cut -c 21-))
author=$(echo $(playerctl metadata -p spotifyd | grep artist | cut -c 22-))

duration=$(echo $(playerctl metadata -p spotifyd | grep length | cut -c 22-))


echo $author
