vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', ':wincmd j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', ':wincmd k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>vn", vim.cmd.vnew)
vim.keymap.set("n", "<leader>n", vim.cmd.new)

vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { buffer = buf, noremap = true, silent = true })

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

vim.keymap.set("n", "<leader>t", ":lua OpenFloatingTerminal()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>g", ":lua OpenFloatingLazygit()<CR>", { noremap = true, silent = true })
