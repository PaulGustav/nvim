return {
  'xiyaowong/transparent.nvim',
  config = function()
    require('transparent').setup {
      extra_groups = {
        'NeoTreeNormal',
        'NeoTreeNormalNC',
        'BufferLineFill',
      },
    }
  end,
}
