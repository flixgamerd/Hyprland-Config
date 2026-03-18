 require('config.options')
 require('config.keybinds')
 require('config.lazy')
 -- Silenciar avisos de deprecation (como o do lspconfig)
vim.deprecate = function() end
-- 1. Abrir o terminal (mantemos o comando que já funciona bem)
vim.keymap.set('n', '<C-`>', '<CMD>botright split | resize 10 | term<CR>i', { desc = "Abrir terminal" })

vim.opt.clipboard = "unnamedplus"

-- 2. A MAGIA: Ao clicar Esc dentro do terminal, ele fecha a janela automaticamente
-- O comando ':q!' força o fecho da janela do terminal mesmo que haja processos a correr
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>:q!<CR>]], { desc = "Sair e fechar terminal" })

vim.opt.splitbelow = true -- Abrir novos splits horizontais em baixo
vim.opt.splitright = true -- Abrir novos splits verticais à direita

vim.filetype.add({
  extension = {
    kv = "kivy",
  },
})
