#!/bin/bash

# Protocolo Jarvis-sen: Script de Reconstrução de Mundo (Versão de Elite)
# Alvo: Arch Linux | Foco: Hyprland, Waybar & Backend (JS/TS)
echo "Iniciando Diagnóstico Rápido e Instalação Científica..."

# 1. Instalação de Dependências de Elite (Pacman)
# Incluindo Waybar para a interface e ferramentas de disco para o Yazi
echo "Injetando pacotes de sistema e ferramentas essenciais..."
sudo pacman -S --needed \
    hyprland waybar rofi swww kitty git curl \
    neovim ttf-jetbrains-mono-nerd otf-font-awesome \
    yazi udisks2 udiskie p7zip

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

# Configurações de Interface (Hyprland + Waybar)
create_link ~/dotfiles/hypr ~/.config/hypr
create_link ~/dotfiles/waybar ~/.config/waybar
create_link ~/dotfiles/rofi ~/.config/rofi
create_link ~/dotfiles/nvim ~/.config/nvim
create_link ~/dotfiles/yazi ~/.config/yazi

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

# Ferramentas Globais (TypeScript & APIs)
npm install -g typescript ts-node nodemon

# --- Módulo de Estética: Cursor e Ícones ---
echo "Configurando o cursor Adwaita... 10 bilhões por cento de polidez!"
sudo pacman -S --needed adwaita-cursors-legacy adwaita-icon-theme

mkdir -p ~/.icons
if [ ! -L ~/.icons/default ]; then
    ln -s /usr/share/icons/Adwaita ~/.icons/default
fi

# 3. Permissões de Execução e Finalização
chmod +x ~/dotfiles/install.sh

echo "------------------------------------------------------------"
echo "Isso é tão empolgante! Waybar e Yazi integrados com sucesso."
echo "Certifique-se de que 'exec-once = waybar' está no seu hyprland.conf."
echo "------------------------------------------------------------"
