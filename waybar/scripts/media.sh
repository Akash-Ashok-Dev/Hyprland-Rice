#!/bin/bash

player=$(playerctl -l 2>/dev/null | head -n 1)

if [[ "$player" != "" ]]; then
  status=$(playerctl -p "$player" status 2>/dev/null)
  if [[ "$status" == "Playing" || "$status" == "Paused" ]]; then
    artist=$(playerctl -p "$player" metadata artist)
    title=$(playerctl -p "$player" metadata title)
    echo "{\"text\": \"$title – $artist\", \"icon\": \"$player\"}"
    exit 0
  fi
fi

echo "{\"text\": \"No media\", \"icon\": \"default\"}"

