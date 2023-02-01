#!/bin/bash

player_status=$(playerctl status)

if [ "${player_status}" = "Stopped" ]; then
	echo ""
else
	# music
	player_type=$(playerctl metadata | awk '{print$1}' | sed -n '1p')
	song=$(playerctl metadata --format "{{artist}}: {{title}}")
	if [ "${player_type}" = "spotify" ]; then
		echo "󰝚 ${song}"
	elif [ "${player_type}" = "spotifyd" ]; then
		echo "󰝚 ${song}"
	else
		# video
		player_title=$(playerctl metadata --format "{{title}}")
		echo "󱜅 ${player_title}"
	fi
fi
