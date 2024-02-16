#!/bin/bash

# This only works with the pacman package manager.
# This was made for personal use,
# and will overwrite existing files.
# Use at your own discretion.

sudo pacman -Syu --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru || exit
makepkg -si
cd "$HOME" || exit

paru -S acpi acpi_call alacritty alsa-plugins alsa-utils base base-devel blueman bluez-tools bluez-utils bottom brightnessctl calc cava clamav cmake cmatrix codespell deluge dictd dictionary discord dmenu dunst efibootmgr firefox firewalld fish flameshot fzf gimp glow grub gst-plugins-base-libs gtkmm3 gtop gvfs hadolint intel-ucode i3lock-color-git kitty lazygit libreoffice-fresh libical libxcrypt-compat lua luacheck mandoc mbedtls neofetch neovim node-gyp nitrogen npm nyx pacman-contrib picom pipewire-alsa pipewire-audio pipewire-pulse pkgstats playerctl polybar polybar-spotify-module protobuf python-pip python-pyserial python-build python-cairo qmk-git qpwgraph ranger ripgrep rsync rustup sequoia-sqv setconf shellcheck speedtest++ spicetify-cli sqlfluff sshguard stack steam thunar thunar-voman tinycompress tlp tlp-rdw tokei tor tor-browser tree ufw unzip usbimager-x11 volnoti vulkan-tools wireplumber xautolock xclip xcursor-themes xdotool xorg-server xorg-xbacklight xorg-xinit xorg-xinput xorg-xrandr xsel yamllint zip

DOTFILES="$(dirname "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)")"
cd "$DOTFILES" || exit

cp -r ".bashrc" "$HOME/"
cp -r ".icons" "$HOME/"
cp -r ".local" "$HOME/"
cp -r ".config" "$HOME/"
