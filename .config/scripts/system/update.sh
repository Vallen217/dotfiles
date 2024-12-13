#!/bin/bash

TERMINAL=kitty

# update system & neovim
${TERMINAL} -e fish -c "paru -Syu \
	# ; nvim -c 'autocmd User PackerComplete quitall' \
	# -c 'MasonUpdate' -c 'TSUpdateSync' -c 'CocUpdateSync' \
	; exit"
