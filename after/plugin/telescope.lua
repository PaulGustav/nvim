local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', builtin.git_files, {})
vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
-- viv.keymap.set('n', '<leader>sh', builtin., {}) Home Directory Searc
