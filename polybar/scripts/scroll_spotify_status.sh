#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 15 \
        --delay 0.5 \
        --scroll-padding "  " \
        --match-command "$HOME/.config/polybar/scripts/get_spotify_status.sh --status" \
        --match-text "Playing" "--scroll 0" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "$HOME/.config/polybar/scripts/get_spotify_status.sh" &

wait
