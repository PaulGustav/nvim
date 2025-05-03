vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2    -- Ensures Tab inserts 2 spaces
    vim.opt_local.shiftwidth = 2     -- Ensures indentation aligns
    vim.opt_local.expandtab = true   -- Ensures spaces, not tab characters
  end,
})

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

