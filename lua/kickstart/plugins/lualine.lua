return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'powerline',
        section_seperators = '',
        component_seperators = '',
      },
      sections = {
        lualine_c = { { 'filename', color = { fg = '#56fc5b', bg = '#5b615b', gui = 'bold' } } },
      },
    }
  end,
}
