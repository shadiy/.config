local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ts_ls", "eslint", "omnisharp", "clangd" },
})

-- Lua
lspconfig.lua_ls.setup({ capabilities = capabilities })
vim.lsp.enable("lua_ls")

-- TS/JS & ESLint
lspconfig.ts_ls.setup({ capabilities = capabilities })
lspconfig.eslint.setup({
  capabilities = capabilities,
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = true
  end,
})
vim.lsp.enable("eslint")

-- C#
lspconfig.omnisharp.setup({
  cmd = { "omnisharp" },
  capabilities = capabilities,
  enable_import_completion = true,
  organize_imports_on_format = true,
  enable_roslyn_analyzers = true,
})
vim.lsp.enable("omnisharp")

-- C++
lspconfig.clangd.setup({
  capabilities = capabilities,
})
vim.lsp.enable("clangd")

-- Completion
require("cmp").setup({
  mapping = {
    ["<C-Space>"] = require("cmp").mapping.complete(),
    ["<CR>"] = require("cmp").mapping.confirm({ select = true }),
  },
  sources = { { name = "nvim_lsp" } },
})

-- Formatting with conform.nvim
local conform = require("conform")
conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier", "eslint_d" },
    typescript = { "prettier", "eslint_d" },
    cs = { "csharpier" },
    cpp = { "clang-format" },
    c = { "clang-format" },
  },
formatters = {
    csharpier = {
      command = "csharpier",
      args = { "format", "$FILENAME" },
      stdin = false,
    },
  },
  format_on_save = true,
})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*, *.xaml.cs",
  callback = function(ev)
    conform.format({ bufnr = ev.buf })
  end,
})
