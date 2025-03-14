local themes = {
    nord = { repo = "arcticicestudio/nord-vim", alias = "nord" },
    gruvbox = { repo = "morhetz/gruvbox", alias = "gruvbox" },
    tokyonight = { repo = "folke/tokyonight.nvim", alias = "tokyonight" },
    catppuccin = { repo = "catppuccin/nvim", alias = "catppuccin" },
    vscode = { repo = "Mofiqul/vscode.nvim", alias = "vscode" },
    kanagawa = { repo = "rebelot/kanagawa.nvim", alias = "kanagawa" },
}

local selected_theme = themes["kanagawa"]
local alias = selected_theme.alias

return {
    selected_theme.repo,
    name = alias,
    config = function()
        require(alias).setup({
            -- Deine bestehenden Optionen
            transparent = true, -- Stelle sicher, dass Transparenz aktiviert ist
            -- Weitere Optionen wie theme = "wave" etc.

            overrides = function(colors)
                local theme = colors.theme
                return {
                    TelescopeBorder = { bg = "none" }, -- Entfernt den Hintergrund der Borders
                    TelescopeNormal = { bg = "none" }, -- Optional: Entfernt den Hintergrund des Hauptfensters
                    TelescopePromptBorder = { bg = "none" }, -- Für die Eingabezeile
                    TelescopeResultsBorder = { bg = "none" }, -- Für die Ergebnisse
                    TelescopePreviewBorder = { bg = "none" }, -- Für die Vorschau
                }
            end,
        })

        vim.cmd("colorscheme kanagawa")
        -- vim.g.nord_disable_background = true -- Nord specific
        vim.cmd('colorscheme ' .. alias .. "-dragon")
    end,
}
