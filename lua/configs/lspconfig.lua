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

-- Emmet configuration
vim.lsp.config("emmet_language_server", {
  filetypes = {
    "html",
    "css",
    "javascriptreact",
    "typescriptreact",
  },
})

vim.lsp.enable("emmet_language_server")
