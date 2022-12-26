#!/bin/bash

status=$(playerctl status)

song=$(playerctl metadata | grep title | cut -b 37-)

artist=$(playerctl metadata | grep artist | cut -b 37-)

if [ $status = 'Playing' ]
then
	echo $song - $artist
elif [ $status = 'Paused' ]
then 
	echo 'Paused'
else 
	echo 'Nothing is playing'
fi
