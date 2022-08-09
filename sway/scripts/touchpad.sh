#!/bin/bash

status=$(swaymsg -t get_inputs --raw | jq '[.[] | select(.type == "touchpad")][0] | .libinput | .send_events | tostring')
#Returns a string for Waybar
if [[ "$status" == "\"enabled\"" ]]; then
    class="on"
else
    class="off"
fi

printf '{"alt":"%s"}\n' "$class"
