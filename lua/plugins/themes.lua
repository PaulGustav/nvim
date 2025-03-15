local themes = {
    nord = { repo = "arcticicestudio/nord-vim", alias = "nord" },
    gruvbox = { repo = "morhetz/gruvbox", alias = "gruvbox" },
    tokyonight = { repo = "folke/tokyonight.nvim", alias = "tokyonight" },
    catppuccin = { repo = "catppuccin/nvim", alias = "catppuccin" },
    vscode = { repo = "Mofiqul/vscode.nvim", alias = "vscode" },
    kanagawa = { repo = "rebelot/kanagawa.nvim", alias = "kanagawa" },
    rosepine = { repo = "rose-pine/nvim", alias = "rose-pine" },
}

local selected_theme = themes["rosepine"]
local alias = selected_theme.alias

return {
    selected_theme.repo,
    name = alias,
    config = function()
        require(alias).setup({
            styles = { transparency = true },

            -- -- Deine bestehenden Optionen
            -- transparent = true, -- Stelle sicher, dass Transparenz aktiviert ist
            -- -- Weitere Optionen wie theme = "wave" etc.
            --
            -- Kanagawa
            -- overrides = function(colors)
            --     local theme = colors.theme
            --     return {
            --         NormalFloat = { bg = "none" },
            --         FloatBorder = { bg = "none" },
            --         FloatTitle = { bg = "none" },
            --
            --         TelescopeBorder = { bg = "none" },
            --         TelescopeNormal = { bg = "none" },
            --         TelescopePromptBorder = { bg = "none" },
            --         TelescopeResultsBorder = { bg = "none" },
            --         TelescopePreviewBorder = { bg = "none" },
            --     }
            -- end,
        })

        -- vim.g.nord_disable_background = true -- Nord specific
        vim.cmd('colorscheme ' .. alias)
    end,
}
