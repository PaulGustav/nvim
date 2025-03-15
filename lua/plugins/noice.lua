return {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
        require("notify").setup({
            background_colour = "#1e1e2e",
        })

        require("noice").setup({
            cmdline = {
                enabled = true,
                view = "cmdline_popup",
                opts = {
                    position = {
                        row = 3,
                        col = "50%",
                    },
                    size = {
                        width = "30%",
                        height = 1,
                    },
                    border = {
                        style = "rounded",
                    },
                },
            },
            lsp = {
                progress = { enabled = true },
            },
            views = {
                cmdline_popup = {
                    win_options = {
                        winhighlight = "NormalFloat:NormalFloat,FloatBorder:MyTransparentBorder",
                    },
                },
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

