#! /bin/bash
xset s off
xset -dpms
xset s noblank
wal -i "$(< "${HOME}/.cache/wal/wal")"
exec i3
