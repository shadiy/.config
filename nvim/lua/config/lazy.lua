local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
{
  dir = vim.fn.stdpath("config") .. "/lua/plugins/roman-empire",
  name = "roman-empire",
  lazy = false,  -- so it's loaded at startup
  priority = 1000,  -- load before other UI stuff
  config = function()
    vim.cmd.colorscheme("roman_empire")
  end,
},
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "nvim-lualine/lualine.nvim",
  "nvim-tree/nvim-web-devicons",
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  {
    "williamboman/mason.nvim",
    opts = {},            -- mason setup via opts
    cmd = "Mason",        -- optional command lazy-loading
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "ts_ls", "eslint", "omnisharp" },
      automatic_installation = true,
      handlers = {
        -- default handler: setup each server via lspconfig
        function(server_name)
          require("lspconfig")[server_name].setup({ capabilities = capabilities })
        end,
      },
    },
    dependencies = { "mason.nvim", "nvim-lspconfig" },
  },
{
"stevearc/conform.nvim",
  event = { "BufWritePre" }, -- lazy-load on save
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier", "eslint_d" },
      typescript = { "prettier", "eslint_d" },
      javascriptreact = { "prettier", "eslint_d" },
      typescriptreact = { "prettier", "eslint_d" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      cs = { "csharpier" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      go = { "gofmt" }
    },
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 1000,
    },
  },
},
})

require("config.theme")
require("config.nvimtree")
require("config.treesitter")
require("config.lualine")
require("config.lsp")
require("config.cmp")
