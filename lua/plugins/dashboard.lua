return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup({
            theme = "doom",
            config = {
                header = vim.split(string.rep("\n", 12) .. [[
                ███████╗███████╗██████╗ ██╗   ██╗██╗   ██╗███████╗    ██╗
                ██╔════╝██╔════╝██╔══██╗██║   ██║██║   ██║██╔════╝    ██║
                ███████╗█████╗  ██████╔╝██║   ██║██║   ██║███████╗    ██║
                ╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██║   ██║╚════██║    ╚═╝
                ███████║███████╗██║  ██║ ╚████╔╝ ╚██████╔╝███████║    ██╗
                ╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝   ╚═════╝ ╚══════╝    ╚═╝
                ]] .. "\n\n", "\n"),
                center = {
                    { icon = "󰈞 ", desc = "Find File", action = "Telescope find_files", key = "f" },
                    { icon = " ", desc = "Recently Used Files", action = "Telescope oldfiles", key = "r" },
                    { icon = " ", desc = "New File", action = "ene | startinsert", key = "n" },
                    { icon = "󰅚 ", desc = "Quit", action = "qa", key = "q" },
                },
                footer = { "🚀 Happy Coding 🚀" },
                disable_move = true,
                padding = { 2, 2, 2, 2 },
            }
        })
    end,
}
