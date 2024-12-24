return {
  {
    'aserowy/tmux.nvim',
    config = function()
      require('tmux').setup {
        navigation = {
          enable_default_keybindings = true, -- Standardmäßig Ctrl-hjkl für Fensterwechsel
        },
        resize = {
          enable_default_keybindings = true, -- Standardmäßig Ctrl-Arrow für Resizing
        },
      }
    end,
  },
}
