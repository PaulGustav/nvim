return {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
        require("notify").setup({
            background_colour = "#1e1e2e",
        })

        require("noice").setup({
            lsp = {
                progress = { enabled = true },
            },
            views = {
                cmdline_popup = {
                    win_options = {
                        winhighlight = "NormalFloat:NormalFloat,FloatBorder:MyTransparentBorder",
                    },
                },
                -- Falls du andere Views wie popupmenu nutzt, füge sie hier hinzu, z. B.:
                -- popupmenu = {
                    --   win_options = {
                        --     winhighlight = "NormalFloat:NormalFloat,FloatBorder:MyTransparentBorder",
                        --   },
                        -- },
                    },
                })

                -- Benutzerdefinierte Highlight-Gruppe für transparente Ränder definieren
                vim.api.nvim_set_hl(0, "MyTransparentBorder", { bg = "none" })
                vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { bg = "none" })
            end,
    opts = {},
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}

