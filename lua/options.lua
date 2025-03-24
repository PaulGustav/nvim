vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.signcolumn = "yes"

vim.opt.updatetime = 50

vim.cmd("syntax enable")
vim.cmd([[
    hi Normal guibg=NONE
    hi! link TSFunction Normal
    hi! link TSKeyword Normal
    hi! link TSVariable Normal
    hi! link TSType Normal
    hi! link TSString Normal
]])

