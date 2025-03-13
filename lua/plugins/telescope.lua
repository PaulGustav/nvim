return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>sg', builtin.git_files, {})
		vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		-- viv.keymap.set('n', '<leader>sh', builtin., {}) Home Directory Searc
	end
}
