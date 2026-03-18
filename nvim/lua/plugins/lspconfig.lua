return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- Lista dos servidores que instalaste no Mason
      local servers = { "ts_ls", "html", "sqls", "lua_ls", "pyright" }
      local lspconfig = require("lspconfig")

      -- Em vez de chamar o lspconfig como framework, 
      -- configuramos cada um de forma isolada
      for _, lsp in ipairs(servers) do
        if lsp == "lua_ls" then
          lspconfig.lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = { globals = { "vim" } },
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
