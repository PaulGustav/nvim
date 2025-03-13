vim.api.nvim_set_hl(0, "@keyword", { fg = "#b48ead" }) -- Nord 15, purple
vim.api.nvim_set_hl(0, "@keyword.function", { fg = "#b48ead" }) -- Nord 15, purple

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "python", "toml", "json", "sql", "typescript", "rust", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

  sync_install = false,

  auto_install = true,


  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
