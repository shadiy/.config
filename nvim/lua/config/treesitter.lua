require("nvim-treesitter.configs").setup({
  ensure_installed = { "tsx", "typescript", "javascript", "html", "css", "lua", "json", "c_sharp", "c", "cpp" },
  highlight = { enable = true },
  indent = { enable = true },
})
