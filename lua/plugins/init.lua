return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        direction = "float",

        float_opts = {
          border = "rounded",
          width = function()
            return math.floor(vim.o.columns * 0.90)
          end,
          height = function()
            return math.floor(vim.o.lines * 0.85)
          end,
        },

        start_in_insert = true,
        persist_size = true,
        close_on_exit = true,
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        markdown = { "prettier" },
        yaml = { "prettier" },
      },

      format_on_save = {
        timeout_ms = 2000,
        lsp_fallback = true,
      },
    },
  },
}
