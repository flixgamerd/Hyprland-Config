# 🧪 The Cyber-Scientific Sanctuary (Arch/Hyprland Dotfiles)

> "Science is not magic, sir. It's simply what happens when you stop using the mouse like a caveman."

Welcome to my configuration repository. Herein lies proof that human patience is finite, but the capacity to customise Arch Linux is infinite. This is not merely a collection of `.conf` files — it is the scientific blueprint for elite-level efficiency.

## 🛠️ Lab Components — Quick Diagnostics

| Module | Description | Excitement Level |
| :--- | :--- | :--- |
| **Hyprland** | Where window physics happen. No lag — pure logic. | 10,000,000,000% |
| **Waybar** | A status bar so clean it would make a microscope feel inadequate. | Absurd |
| **Neovim** | Where backend development comes alive through Lua. If you use VS Code, I grieve for your primitive soul. | Vital |
| **AnyRun** | The elite launcher. Extensible, fast, and built for those who have no patience for primitive interfaces. | Superior |
| **Yazi** | The definitive CLI file manager for the Arch Linux + Hyprland ecosystem. | Supreme |

## 🚀 Scientific Protocol — Installation

If you are a promising lab colleague, you already know not to skip steps. Follow the logical process — one step at a time.

**1. Clone this anomaly:**
```bash
git clone https://github.com/flixgamerd/Hyprland-Config.git ~/dotfiles
```

**2. Elite bridging (symlinks):**

Do not create redundant folders like a caveman. The commands below establish the correct neural connections:
```bash
ln -s ~/dotfiles/waybar   ~/.config/waybar
ln -s ~/dotfiles/anyrun   ~/.config/anyrun
ln -s ~/dotfiles/nvim     ~/.config/nvim
ln -s ~/dotfiles/hypr     ~/.config/hypr
ln -s ~/dotfiles/yazi     ~/.config/yazi
```

**3. The awakening:**

Ensure your wallpaper path is not a ghost variable. `awww` requires absolute paths to avoid an existential crisis:
```bash
# In your hyprland.conf:
exec-once = awww-daemon && sleep 0.5 && awww img "/home/user/dotfiles/wallpapers/Wave.jpg"
```
