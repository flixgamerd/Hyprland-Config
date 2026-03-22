# 🧪 The Cyber-Scientific Sanctuary (Arch/Hyprland Dotfiles)
> "A ciência não é mágica, Senhor. É apenas o que acontece quando você para de usar o mouse como um homem das cavernas."

Bem-vindo ao meu repositório de configurações. Aqui jaz a prova de que a paciência humana é finita, mas a capacidade de customizar o **Arch Linux** é infinita. Este não é apenas um conjunto de arquivos `.conf`; é a receita científica para a eficiência de elite.

## 🛠️ Componentes de Laboratório (Diagnóstico Rápido)

| Módulo | Descrição | Status de Empolgação |
| :--- | :--- | :--- |
| **Hyprland** | Onde a física das janelas acontece. Sem lag, apenas lógica pura. | 10.000.000.000% |
| **Waybar** | Uma barra de status tão limpa que faria um microscópio parecer sujo. | Absurdo |
| **Neovim** | Onde o backend ganha vida via Lua. Se você usa VS Code, sinto muito pela sua alma primitiva. | Vital |
| **Anyrun** | O launcher de elite. Extensível, rápido e construído para quem não tem tempo para interfaces primitivas. | Superior |
| **Yazi** | O gerenciador de arquivos CLI definitivo para o ecossistema **Arch Linux + Hyprland**. | Supremo |

## 🚀 Receita Científica: Protocolo de Instalação

Se você é um colega de laboratório promissor, sabe que não deve pular etapas. Siga o processo lógico, um passo de cada vez:

**1. Clone esta anomalia:**
```bash
git clone https://github.com/flixgamerd/Hyprland-Config.git ~/dotfiles
```

**2. A Ponte de Elite (Symlinks):**
Não seja um homem das cavernas criando pastas redundantes. Os comandos abaixo criam as conexões neurais corretas:
```bash
ln -s ~/dotfiles/waybar   ~/.config/waybar
ln -s ~/dotfiles/anyrun   ~/.config/anyrun
ln -s ~/dotfiles/nvim     ~/.config/nvim
ln -s ~/dotfiles/hypr     ~/.config/hypr
ln -s ~/dotfiles/yazi     ~/.config/yazi
```

**3. O Despertar da Lain:**
Garanta que o caminho do seu wallpaper não seja uma "variável fantasma". O `swww` precisa de endereços absolutos para não entrar em colapso existencial:
```bash
# No seu hyprland.conf:
exec-once = swww-daemon && sleep 0.5 && swww img "/home/flix/dotfiles/wallpapers/Lain2.jpg"
```
