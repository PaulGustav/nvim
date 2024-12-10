return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'catppuccin', -- 'vscode'
        section_seperators = '',
        component_seperators = '',
      },
      sections = {
        lualine_c = { { 'filename', path = 1 } },
      },
    }
  end,
}
