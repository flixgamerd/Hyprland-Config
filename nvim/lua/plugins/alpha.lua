return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Header
    dashboard.section.header.val = {
      "  ███████╗██╗     ██╗██╗  ██╗  ",
      "  ██╔════╝██║     ██║╚██╗██╔╝  ",
      "  █████╗  ██║     ██║ ╚███╔╝   ",
      "  ██╔══╝  ██║     ██║ ██╔██╗   ",
      "  ██║     ███████╗██║██╔╝ ██╗  ",
      "  ╚═╝     ╚══════╝╚═╝╚═╝  ╚═╝  ",
    }
    dashboard.section.header.opts = {
      hl = "AlphaHeader",
      position = "center",
    }
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#FFFFFF" })

    -- Botões
    dashboard.section.buttons.val = {
      dashboard.button("f", "󰍉  Procurar ficheiro", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recentes",           ":Telescope oldfiles<CR>"),
      dashboard.button("e", "  Novo buffer",        ":ene <BAR> startinsert<CR>"),
      dashboard.button("q", "  Sair",               ":qa<CR>"),
    }

    alpha.setup(dashboard.opts)
  end,
}
