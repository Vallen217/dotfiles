#!/bin/bash

# replace these with your prefered terminal, editor, and shell.
TERMINAL=kitty
EDITOR=nvim
SHELL=fish

menu() {
  echo -en "Workspace\0icon\x1ffolder\n"
  echo -en "LTC\0icon\x1fdocument\n"
  echo -en "Documents\0icon\x1fdocument\n"
  echo -en "Downloads\0icon\x1fdownload\n"
  echo -en "Images\0icon\x1fimage\n"
  echo -en "Games\0icon\x1ffolder\n"
  echo -en ".config\0icon\x1ffolder\n"
  echo -en "nvim\0icon\x1fneovim\n"
}

function main() {
  CHOICE=$(menu | rofi -dmenu | cut -f1)

  # exit if the rofi instance is closed early,
  # otherwise it will simply open into the $HOME directory
  if [ "$HOME/$CHOICE" == "$HOME/" ]; then
    exit
  fi

  # if the selected directory is already in $HOME we can just append $CHOICE
  if [ -d "$HOME/$CHOICE" ]; then
    $TERMINAL -e $SHELL -c "cd $HOME/$CHOICE ; $1"

  # otherwise absolute path must be specified here
  else
    case $CHOICE in
      "LTC")
        $TERMINAL -e $SHELL -c "cd $HOME/Workspace/LTC ; $1"
        ;;
      "nvim")
        $TERMINAL -e $SHELL -c "cd $HOME/.config/nvim ; $1"
        ;;
    esac
  fi
}

while getopts "et" opt; do
  case $opt in
    # open an editor in the selected directory
    e)
      main $EDITOR
      ;;
    # open a terminal in the selected directory
    t)
      main $SHELL
      ;;
    ?)
      echo "Error: Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done
