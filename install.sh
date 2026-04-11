#!/bin/bash
# Protocolo Flix-Linux: Script de Reconstrução de Mundo (Versão de Elite)
# Alvo: Arch Linux | Foco: Hyprland, Waybar & Backend (JS/TS)

set -e

echo "Initiating Rapid Diagnostics and Scientific Installation..."

# ============================================================
# 1. SYSTEM DEPENDENCIES (PACMAN)
# ============================================================
echo "Injecting system packages and essential tools..."
sudo pacman -S --needed \
    hyprland waybar swww kitty git curl \
    neovim ttf-jetbrains-mono-nerd otf-font-awesome \
    yazi udisks2 udiskie p7zip \
    usbutils libmtp gvfs gvfs-mtp gvfs-gphoto2 \
    libgphoto2 mtpfs \
    file-roller unzip unrar

# ============================================================
# 2. AUR HELPER (YAY)
# ============================================================
if ! command -v yay &> /dev/null; then
    echo "Yay not detected. Cloning AUR assistant..."
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay && makepkg -si --noconfirm && cd -
fi

# ============================================================
# 3. AUR PACKAGES
# ============================================================
echo "Injecting AUR packages..."
yay -S --needed \
    anyrun-git \
    jmtpfs \
    android-udev

# ============================================================
# 4. NEURAL BRIDGES (SYMLINKS)
# ============================================================
echo "Creating symbolic links..."
mkdir -p ~/.config

create_link() {
    rm -rf "$2"
    ln -s "$1" "$2"
    echo "Bridge created: $2 -> $1"
}

create_link ~/dotfiles/hypr     ~/.config/hypr
create_link ~/dotfiles/waybar   ~/.config/waybar
create_link ~/dotfiles/anyrun   ~/.config/anyrun
create_link ~/dotfiles/nvim     ~/.config/nvim
create_link ~/dotfiles/yazi     ~/.config/yazi

# ============================================================
# 5. DEVICE DETECTION & MOUNTING STACK
# ============================================================
echo "Configuring automatic mounting stack..."

# Enable udisks2 as systemd service
sudo systemctl enable --now udisks2.service

# Inject udiskie autostart into hyprland.conf (idempotent)
HYPR_CONF=~/dotfiles/hypr/hyprland.conf
grep -qxF 'exec-once = udiskie --tray &' "$HYPR_CONF" \
    || echo 'exec-once = udiskie --tray &' >> "$HYPR_CONF"

# Add user to storage group (required for mounting without sudo)
sudo usermod -aG storage "$USER"

echo "Device stack configured. Re-login to apply group changes."

# ============================================================
# 6. BACKEND ECOSYSTEM (JS/TS)
# ============================================================
echo "Injecting backend infrastructure..."

# fnm (Node version manager)
if ! command -v fnm &> /dev/null; then
    curl -fsSL https://fnm.vercel.app/install | bash
    export PATH="$HOME/.local/share/fnm:$PATH"
    eval "$(fnm env)"
fi

fnm install --lts && fnm default lts

# bun
if ! command -v bun &> /dev/null; then
    curl -fsSL https://bun.sh/install | bash
fi

# Global npm packages
npm install -g typescript ts-node nodemon

# ============================================================
# 7. AESTHETICS — CURSOR & ICONS
# ============================================================
echo "Configuring Adwaita cursor..."
sudo pacman -S --needed adwaita-cursors-legacy adwaita-icon-theme

mkdir -p ~/.icons
if [ ! -L ~/.icons/default ]; then
    ln -s /usr/share/icons/Adwaita ~/.icons/default
fi

# ============================================================
# 8. PERMISSIONS
# ============================================================
chmod +x ~/dotfiles/install.sh

# ============================================================
# DONE
# ============================================================
echo "------------------------------------------------------------"
echo "Installation complete. All systems nominal."
echo ""
echo "Checklist:"
echo "  - Ensure 'exec-once = waybar' is in your hyprland.conf"
echo "  - Ensure 'exec-once = udiskie --tray &' is in your hyprland.conf"
echo "  - Re-login to apply 'storage' group (USB/MTP mounting)"
echo "  - AnyRun config expected at ~/dotfiles/anyrun/"
echo "------------------------------------------------------------"
