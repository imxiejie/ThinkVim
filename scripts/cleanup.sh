#!/usr/bin/env bash

source ./scripts/format.sh

thinkvim_personal="$HOME/.thinkvim.d"
cache_vim="$HOME/.cache/vim"
generator="$HOME/.config/nvim/bin/generator"

action "Running Clean up..."


running "Remove the .thinkvim.d folder"
rm -rf thinkvim_personal

running "Remove the plugins install folder"
rm -rf cache_vim

running "Remove the thinkvim"
rm -rf "$HOME/.config/nvim"

ok "Clean up Success"

