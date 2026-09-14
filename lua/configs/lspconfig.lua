require("nvchad.configs.lspconfig").defaults()

local servers = {
  "ts_ls",
  "eslint",
  "tailwindcss",
  "html",
  "cssls",
  "jsonls",
  "lua_ls",
}

vim.lsp.enable(servers)
