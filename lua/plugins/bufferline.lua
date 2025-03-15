return {
    "akinsho/bufferline.nvim",
    config = function()
        require('bufferline').setup {
            options = {
                mode = 'tabs', -- set to "tabs" to only show tabpages instead

                themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
                },
                highlights = {
                    -- Alle relevanten Highlights auf transparent setzen
                    fill = { bg = "none" }, -- Hintergrund der gesamten Bufferline
                    background = { bg = "none" }, -- Inaktive Buffers
                    buffer = { bg = "none" }, -- Standard-Buffer
                    buffer_visible = { bg = "none" },
                    buffer_selected = { bg = "none", bold = true, italic = false },
                    separator = { fg = "#434C5E", bg = "none" },
                    separator_visible = { fg = "#434C5E", bg = "none" },
                    separator_selected = { fg = "#434C5E", bg = "none" },
                    tab = { bg = "none" },
                    tab_selected = { bg = "none" },
                    tab_close = { bg = "none" },
                    indicator_visible = { bg = "none" },
                    indicator_selected = { bg = "none" },
                    modified = { bg = "none" },
                    modified_visible = { bg = "none" },
                    modified_selected = { bg = "none" },
                    duplicate = { bg = "none" },
                    duplicate_visible = { bg = "none" },
                    duplicate_selected = { bg = "none" },
                },
            }
            vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "none" })
            vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "none" })
            vim.api.nvim_set_hl(0, "BufferLineBuffer", { bg = "none" })
            vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { bg = "none" })
            vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { bg = "none" })
            vim.api.nvim_set_hl(0, "BufferLineTab", { bg = "none" })
            vim.api.nvim_set_hl(0, "BufferLineCloseButton", { bg = "none" })
            vim.api.nvim_set_hl(0, "BufferLineCloseButtonVisible", { bg = "none" })
            vim.api.nvim_set_hl(0, "BufferLineCloseButtonSelected", { bg = "none" })
        end
    }
