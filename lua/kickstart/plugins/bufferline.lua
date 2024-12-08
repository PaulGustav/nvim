return {
  'akinsho/bufferline.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        numbers = 'none',
        close_command = 'bdelete! %d',
        right_mouse_command = 'bdelete! %d',
        diagnostics = 'nvim_lsp',
      },
    }
  end,
}
