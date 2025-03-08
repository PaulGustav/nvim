-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.keymap.set("n", "<leader>r", vim.cmd.PackerSync)

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({
	  --'rose-pine/neovim',
      'ellisonleao/gruvbox.nvim',
	  --as = 'rose-pine',
	  as = 'gruvbox',
	  config = function()
		  --vim.cmd('colorscheme rose-pine')
		  vim.cmd('colorscheme gruvbox')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use { 'xiyaowong/transparent.nvim' }

  use {
	  "windwp/nvim-autopairs",
	  event = "InsertEnter",
	  config = function()
		  require("nvim-autopairs").setup {}
	  end
  }

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

end)

