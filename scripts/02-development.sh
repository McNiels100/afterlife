#!/bin/bash

sudo pacman -S --noconfirm --needed \
  wget curl unzip  \
  fd eza fzf ripgrep zoxide \
  fastfetch btop mise ghostty \
  github-cli lazygit postgresql-libs \
  imagemagick

yay -S --noconfirm --needed lazydocker
