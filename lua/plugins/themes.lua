local themes = {
    nord = { repo = "arcticicestudio/nord-vim", alias = "nord" },
    gruvbox = { repo = "ellisonleao/gruvbox.nvim", alias = "gruvbox" },
    tokyonight = { repo = "folke/tokyonight.nvim", alias = "tokyonight" },
    catppuccin = { repo = "catppuccin/nvim", alias = "catppuccin" },
    vscode = { repo = "Mofiqul/vscode.nvim", alias = "vscode" },
    kanagawa = { repo = "rebelot/kanagawa.nvim", alias = "kanagawa" },
    rosepine = { repo = "rose-pine/nvim", alias = "rose-pine" },
}

local selected_theme = themes["gruvbox"]
local alias = selected_theme.alias

return {
    selected_theme.repo,
    name = alias,
    priority = 1000,
    config = function()
        require(alias).setup({
            terminal_colors = true, -- add neovim terminal colors
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = true,
                emphasis = true,
                comments = true,
                operators = false,
                folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = false, -- invert background for search, diffs, statuslines and errors
            contrast = "soft", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {
                -- Function = { fg = "#ebdbb2", bold = false },
                -- ["@function.call"] = { fg = "#ebdbb2", bold = false },
                -- ["@method"] = { fg = "#ebdbb2", bold = false },
                -- ["@method.call"] = { fg = "#ebdbb2", bold = false },
                -- ["@function.builtin.rust"] = { fg = "#ebdbb2", bold = false },
                -- ["@function.nvim"] = { fg = "#ebdbb2", bold = false },
            },
            dim_inactive = false,
            transparent_mode = true,
      })

        vim.o.background = "dark"
        vim.cmd("colorscheme " .. alias)
        vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, "MyTransparentBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { bg = "none" })
        -- vim.api.nvim_set_hl(0, 'LineNr', { fg = '#de733a' })
    end,
}
