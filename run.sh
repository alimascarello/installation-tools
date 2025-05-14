#!/bin/bash

echo "Atualizando pacotes..."
sudo pacman -Syu --noconfirm

echo "Instalando pacotes..."
sudo pacman -S --needed --noconfirm git docker docker-compose

echo "Instalando pacotes.."
yay -S --needed --noconfirm \
    slack-desktop \
    librewolf-bin \
    visual-studio-code-bin \
    postman-bin \
    dbeaver

echo "Habilitando e iniciando Docker..."
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

echo "Concluído, reiniciando para aplicar mudanças..."
reboot
