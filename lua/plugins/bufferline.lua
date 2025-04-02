return {
    "akinsho/bufferline.nvim",
    config = function()
        require('bufferline').setup {
            options = {
                mode = 'tabs',
                themable = true,
            },
            highlights = {
                fill = { bg = "NONE" },
                tab = { bg = "NONE" },
                tab_selected = { bg = "NONE" },
                tab_close = { bg = "NONE" },
                separator = { fg = "#434C5E", bg = "NONE" },
                separator_visible = { fg = "#434C5E", bg = "NONE" },
                separator_selected = { fg = "#434C5E", bg = "NONE" },
            },
        }
    end
}
