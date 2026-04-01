return {
  -- Plugin 1: A ponte de comandos (o intermediário)
  {
    "nanotee/sqls.nvim",
  },

  -- Plugin 2: O LSP Config
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")
      local servers = { "ts_ls", "html", "sqls", "lua_ls", "pyright" }

      for _, lsp in ipairs(servers) do
        if lsp == "lua_ls" then
          lspconfig.lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = { globals = { "vim" } },
              },
            },
          })
	  elseif lsp == "sqls" then
        lspconfig.sqls.setup({
          -- Forçamos o servidor a usar o diretório atual do Neovim
          root_dir = function() return vim.fn.getcwd() end,
          on_attach = function(client, bufnr)
            local status, sqls = pcall(require, "sqls")
            if status then
              sqls.on_attach(client, bufnr)
            end
          end,
          settings = {
            sqls = {
              connections = {
                {
                  driver = "postgresql",
                  dataSourceName = "postgres://dev_user:200719@127.0.0.1:5432/meu_projeto?sslmode=disable",
                },
              },
            },
          },
        })
        else
          lspconfig[lsp].setup({})
        end
      end
    end,
  },
}
