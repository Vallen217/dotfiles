#!/bin/bash

TERMINAL=kitty

# update system & neovim
${TERMINAL} -e fish -c "sudo paru -Syu \
	; nvim -c 'autocmd User PackerComplete quitall' \
	-c 'PackerSync' -c 'MasonUpdate' -c 'TSUpdateSync' -c 'CocUpdateSync' \
	; exit"
