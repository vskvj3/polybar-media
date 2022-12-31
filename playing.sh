#!/bin/bash

status=$(playerctl status)

song=$(playerctl metadata title)

artist=$(playerctl metadata artist)

if [ $status = 'Playing' ]
then
	echo $song - $artist
elif [ $status = 'Paused' ]
then 
	echo 'Paused'
else 
	echo 'Nothing is playing'
fi
