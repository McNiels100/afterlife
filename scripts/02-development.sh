#!/bin/bash

sudo pacman -S --noconfirm --needed \
  wget curl unzip  \
  fd eza fzf ripgrep zoxide \
  fastfetch btop mise ghostty \
  github-cli lazygit postgresql-libs \
  imagemagick virt-manager qemu libvirt \
  visual-studio-code-bin 

sudo systemctl enable libvirtd
sudo systemctl start libvirtd

sudo usermod -aG libvirt $USER

yay -S --noconfirm --needed lazydocker
