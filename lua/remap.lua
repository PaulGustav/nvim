vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>r", ":Lazy sync<CR>")

-- Increment / Decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

local opts = { noremap = true, silent = true}

vim.keymap.set("n", "<leader>h", "<C-w><")
vim.keymap.set("n", "<leader>j", "<C-w>-")
vim.keymap.set("n", "<leader>k", "<C-w>+")
vim.keymap.set("n", "<leader>l", "<C-w>>")

-- Windows & Buffer & Tabs
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<leader>so", vim.cmd.w)
vim.keymap.set("n", "<leader>v", vim.cmd.vnew)
vim.keymap.set("n", "<leader>n", vim.cmd.new)
vim.keymap.set("n", "<leader>o", ":Neotree filesystem reveal right<CR>")

-- New Tab
vim.keymap.set("n", "<leader>et", ":tabedit<CR>", opts)

vim.keymap.set("n", "<C-q>", vim.cmd.qa)
vim.keymap.set("n", "<leader>q", ":bdelete!<CR>")
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { buffer = buf, noremap = true, silent = true })

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)

function OpenFloatingTerminal()
  local buf = vim.api.nvim_create_buf(false, true)

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal", 
    border = "rounded", 
  })

  vim.fn.termopen(vim.o.shell)

  vim.api.nvim_win_set_option(win, "number", false)
  vim.api.nvim_win_set_option(win, "relativenumber", false)

  vim.api.nvim_command("startinsert")

  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'FloatBorder', { fg = '#4C566A', bg = 'none' })
end

function OpenFloatingLazygit()
  local buf = vim.api.nvim_create_buf(false, true)

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })

  vim.fn.termopen("lazygit") -- Hier wird lazygit statt der Shell gestartet

  vim.api.nvim_win_set_option(win, "number", false)
  vim.api.nvim_win_set_option(win, "relativenumber", false)

  vim.api.nvim_command("startinsert")
end

vim.keymap.set("n", "<leader>t", ":lua OpenFloatingTerminal()<CR>", opts)
vim.keymap.set("n", "<leader>g", ":lua OpenFloatingLazygit()<CR>", opts)
