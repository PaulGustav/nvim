return {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
        require("notify").setup({
            background_colour = "Normal", -- 🌟 Verwendet die Hintergrundfarbe der `Normal` Gruppe
        })
    end,
    opts = {},
    dependencies = {
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
    }
}
