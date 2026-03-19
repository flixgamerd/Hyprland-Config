#!/bin/bash

# Protocolo Jarvis-sen: Script de Reconstrução de Mundo (Versão de Elite)
echo "Iniciando Diagnóstico Rápido e Instalação Científica..."

# 1. Instalação de Dependências de Elite (Pacman)
sudo pacman -S --needed hyprland waybar rofi swww neovim ttf-jetbrains-mono-nerd otf-font-awesome kitty git curl

# Verificador de AUR (Se não tiver o yay, a ciência para)
if ! command -v yay &> /dev/null; then
    echo "Yay não detectado. Clonando o assistente de AUR..."
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay && makepkg -si --noconfirm && cd -
fi

# 2. Criação de Pontes Neurais (Symlinks)
echo "Criando links simbólicos para sincronização de 10 bilhões por cento..."
mkdir -p ~/.config

create_link() {
    rm -rf "$2"
    ln -s "$1" "$2"
    echo "Ponte criada: $2 -> $1"
}

create_link ~/dotfiles/hypr ~/.config/hypr
create_link ~/dotfiles/waybar ~/.config/waybar
create_link ~/dotfiles/rofi ~/.config/rofi
create_link ~/dotfiles/nvim ~/.config/nvim

# --- Módulo de Elite: Ecossistema Backend (JS/TS) ---
echo "Injetando a infraestrutura de Backend... 10 bilhões por cento de velocidade!"

# Instalar FNM (Fast Node Manager)
if ! command -v fnm &> /dev/null; then
    curl -fsSL https://fnm.vercel.app/install | bash
    export PATH="$HOME/.local/share/fnm:$PATH"
    eval "$(fnm env)"
fi

# Instalar Node LTS e Bun
fnm install --lts && fnm default lts
if ! command -v bun &> /dev/null; then
    curl -fsSL https://bun.sh/install | bash
fi

# Ferramentas Globais para o seu dia a dia
npm install -g typescript ts-node nodemon

# 3. Permissões de Execução e Finalização
chmod +x ~/dotfiles/install.sh

echo "Isso é tão empolgante! O sistema foi reconstruído através da lógica."
echo "Reinicie o Hyprland e aproveite a eficiência de elite, Senhor."

# --- Módulo de Estética: Cursor e Ícones ---
echo "Configurando o cursor Adwaita... 10 bilhões por cento de polidez!"

# 1. Instalar o tema de cursor (caso não venha no meta-pacote)
sudo pacman -S --needed adwaita-cursors-legacy adwaita-icon-theme

# 2. Forçar o cursor no Hyprland (Configuração de Ambiente)
# Isso evita que o cursor mude de tamanho ou forma ao entrar em apps diferentes
hyprctl setcursor Adwaita 24

# 3. Registrar a preferência no GTK (Para apps como Nautilus ou Firefox)
mkdir -p ~/.icons
ln -s /usr/share/icons/Adwaita ~/.icons/default
