return {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
        -- Konfiguriere nvim-notify zuerst
        require("notify").setup({
            background_colour = "#1e1e2e",  -- Setze eine Hintergrundfarbe (z.B. dunkel)
        })

        -- Jetzt die noice.nvim Konfiguration
        require("noice").setup({
            lsp = {
                progress = { enabled = true }, -- Beispiel: LSP Fortschritt anzeigen
            },
            -- Hier kannst du weiter Anpassungen an Noice vornehmen
        })
    end,
    opts = {},
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",  -- Optional, nur wenn du Notify benötigst
    },
}

