local devicons = require('nvim-web-devicons')
print("Lua Icon: " .. (devicons.get_icon('init.lua') or "Kein Icon"))
require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
        },
    },
})
