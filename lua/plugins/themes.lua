local themes = {
    nord = { repo = "arcticicestudio/nord-vim", alias = "nord" },
    gruvbox = { repo = "morhetz/gruvbox", alias = "gruvbox" },
    tokyonight = { repo = "folke/tokyonight.nvim", alias = "tokyonight" },
    catppuccin = { repo = "catppuccin/nvim", alias = "catppuccin" }
}

local selected_theme = themes["nord"]

return {
    selected_theme.repo,
    name = selected_theme.alias,
    config = function()
        vim.g.nord_disable_background = true
        vim.cmd('colorscheme nord')
        transparent = true
    end,
}
