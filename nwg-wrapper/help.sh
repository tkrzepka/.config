#!/bin/sh
#/usr/share/sway/scripts/sbdp.py $HOME/.config/sway/modes/default | jq --raw-output 'sort_by(.category) | .[] | .action + ": <b>" + .keybinding + "</b>"' 
#/usr/share/sway/scripts/sbdp.py ~/.config/sway/modes/default | jq --raw-output 'group_by(.category)|.[]| {(.[0].category): [.[] | .action + ": <b>" + .keybinding + "</b>"]}'
#/usr/share/sway/scripts/sbdp.py ~/.config/sway/modes/default | jq --raw-output 'group_by(.category)[] | .[0].category + ": <br>" + (map(.action + ": <b>" + .keybinding + "</b><br>") | tostring)'
#/usr/share/sway/scripts/sbdp.py ~/.config/sway/modes/default | jq --raw-output -r 'group_by(.category)[] | .[0].category + ":\n" + ((map(.action + ": <b>" + .keybinding + "</b>\n")) | tostring)' | sed 's/\\n/\n/g; s/\\t/\t/g; s/\",\"//g; s/\[\"//g; s/\"\]//g'
#/usr/share/sway/scripts/sbdp.py ~/.config/sway/modes/default | jq --raw-output -r 'group_by(.category)[] | .[0].category + ":\n" + ((map(.action + ": <span foreground="#6699cc" face="serif">" + .keybinding + "</span>\n")) | tostring)' | sed 's/\\n/\n/g; s/\\t/\t/g; s/\",\"//g; s/\[\"//g; s/\"\]//g'
#/usr/share/sway/scripts/sbdp.py ~/.config/sway/modes/default | jq --raw-output -r 'group_by(.category)[] | .[0].category + ":\n" + ((map("<div class=\"item\">"+ "<span class=\"action\">" + .action + "</span>: <span class=\"binding\" foreground=\"#6699cc\" face=\"serif\"><b>" + .keybinding + "</b></span></div>\n")) | tostring)' | sed 's/\\n/\n/g; s/\\t/\t/g; s/\",\"//g; s/\[\"//g; s/\"\]//g; s/\\\"/"/g'
#/usr/share/sway/scripts/sbdp.py ~/.config/sway/modes/default | jq --raw-output -r 'group_by(.category)[] | .[0].category + ":\n" + ((map(.action + "\n")) | tostring)' | sed 's/\\n/\n/g; s/\\t/\t/g; s/\",\"//g; s/\[\"//g; s/\"\]//g'
$HOME/.config/sway/scripts/sbdp.py ~/.config/sway/modes/default
$HOME/.config/sway/scripts/sbdp.py ~/.config/sway/modes/shutdown
$HOME/.config/sway/scripts/sbdp.py ~/.config/sway/modes/recording
$HOME/.config/sway/scripts/sbdp.py ~/.config/sway/modes/resize
$HOME/.config/sway/scripts/sbdp.py ~/.config/sway/modes/scratchpad
$HOME/.config/sway/scripts/sbdp.py ~/.config/sway/modes/screenshot


