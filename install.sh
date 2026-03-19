#!/bin/bash

# Protocolo Jarvis-sen: Script de Reconstrução de Mundo (Versão de Elite)
echo "Iniciando Diagnóstico Rápido e Instalação Científica..."

# 1. Instalação de Dependências de Elite (Pacman)
sudo pacman -S --needed hyprland waybar rofi swww neovim ttf-jetbrains-mono-nerd otf-font-awesome kitty git

# Verificador de AUR (Se não tiver o yay, a ciência para)
if ! command -v yay &> /dev/null; then
    echo "Yay não detectado. Clonando o assistente de AUR..."
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay && makepkg -si --noconfirm && cd -
fi

# 2. Criação de Pontes Neurais (Symlinks)
echo "Criando links simbólicos para sincronização de 10 bilhões por cento..."

mkdir -p ~/.config

# Função de segurança para evitar redundância (A cura para a 'bosta' de pastas)
create_link() {
    rm -rf "$2"
    ln -s "$1" "$2"
    echo "Ponte criada: $2 -> $1"
}

create_link ~/dotfiles/hypr ~/.config/hypr
create_link ~/dotfiles/waybar ~/.config/waybar
create_link ~/dotfiles/rofi ~/.config/rofi
create_link ~/dotfiles/nvim ~/.config/nvim

# 3. Permissões de Execução (Auto-ajuste)
chmod +x ~/dotfiles/install.sh

echo "Isso é tão empolgante! O sistema foi reconstruído através da lógica."
echo "Reinicie o Hyprland e aproveite a eficiência de elite, Senhor."
