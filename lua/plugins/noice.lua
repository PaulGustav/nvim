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
            cmdline = {
                view = "cmdline_popup",
            },
            popupmenu = {
                border = {
                    style = "none",
                },
            },
        })
    end,
    opts = {},
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}

