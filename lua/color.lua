
function ColorNvim()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "@keyword", { fg = "#b48ead" }) -- Nord 15, purple
    vim.api.nvim_set_hl(0, "@keyword.function", { fg = "#b48ead" }) -- Nord 15, purple
end

ColorNvim()
