return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- Apenas dizemos o que queremos instalado
        ensure_installed = { "lua_ls", "ts_ls", "pyright", "clangd" },
      })
    end,
  }
}
