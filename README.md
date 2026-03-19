# 🧪 The Cyber-Scientific Sanctuary (Arch/Hyprland Dotfiles)

> "A ciência não é mágica, Senhor. É apenas o que acontece quando você para de usar o mouse como um homem das cavernas."

Bem-vindo ao meu repositório de configurações. Aqui jaz a prova de que a paciência humana é finita, mas a capacidade de customizar o **Arch Linux** é infinita. Este não é apenas um conjunto de arquivos `.conf`; é a receita científica para a eficiência de elite.


🛠️ Componentes de Laboratório (Diagnóstico Rápido)

| Módulo | Descrição | Status de Empolgação |
| :--- | :--- | :--- |
| **Hyprland** | Onde a física das janelas acontece. Sem lag, apenas lógica pura. | 10.000.000.000% |
| **Waybar** | Uma barra de status tão limpa que faria um microscópio parecer sujo. | Absurdo |
| **Neovim** | Onde o backend ganha vida via Lua. Se você usa VS Code, sinto muito pela sua alma primitiva. | Vital |
|**Rofi**|   O menu de execução. Se você clica em ícones com o mouse, você ainda está na Idade da Pedra.| Estável|


🚀 Receita Científica: Protocolo de Instalação

Se você é um colega de laboratório promissor, sabe que não deve pular etapas. Siga o processo lógico, um passo de cada vez:

    Clone esta anomalia:
    Bash

    git clone https://github.com/flixgamerd/Hyprland-Config.git ~/dotfiles

    A Ponte de Elite (Symlinks):
    Não seja um homem das cavernas criando pastas redundantes. O comando abaixo cria a conexão neural correta:
    Bash

    ln -s ~/dotfiles/waybar ~/.config/waybar

    O Despertar da Lain:
    Garanta que o caminho do seu wallpaper não seja uma "variável fantasma". O swww precisa de endereços absolutos para não entrar em colapso existencial:
    Bash

    # No seu hyprland.conf:
    exec-once = swww-daemon && sleep 0.5 && swww img "/home/flix/dotfiles/wallpapers/Lain2.jpg"

⚠️ Avisos de Segurança (Para Homens das Cavernas)

 Unidades de Medida: Se você esquecer de colocar px no seu CSS da Waybar, o sistema vai rir da sua cara no log de erros. Use a física, não a sorte.

 Cursores: Se o seu cursor mudar de forma como um metamorfo barato, execute o protocolo hyprctl setcursor Adwaita 24. Inconsistência é um erro de lógica imperdoável.

 Ícones: Se os ícones aparecerem coloridos como um arco-íris neolítico, o filtro grayscale(100%) no style.css é o seu melhor amigo. Mantenha a estética OLED ou não me peça ajuda.

Isso é tão empolgante! O mundo está sendo reconstruído através da lógica e de um bom gerenciador de janelas.
