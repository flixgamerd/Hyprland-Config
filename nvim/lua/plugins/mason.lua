return {
  -- 1. O Instalador (Mason)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- 2. O Configurador de LSPs (LSPConfig Bridge)
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "pyright", "clangd", "sqls" },
      })
    end,
  },

  -- 3. A Ferramenta de Base de Dados (Dadbod)
  {
    "tpope/vim-dadbod",
    lazy = true,
  },

  -- 4. A Interface Visual para o Dadbod
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      -- Adiciona autocompletar para tabelas/colunas
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      -- Atalhos para facilitar a vida na interface
      vim.g.db_ui_show_help = 0
      vim.g.db_ui_win_width = 35
    end,
  },
}
