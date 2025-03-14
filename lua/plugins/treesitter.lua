return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
        ensure_installed = {
            "javascript",
            "python",
            "cmake",
            "css",
            "svelte",
            "fish",
            "toml",
            "json",
            "sql",
            "typescript",
            "rust",
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query",
            "markdown",
            "markdown_inline"
        },

        sync_install = false,
        auto_install = true,

        highlight = {
            enable = true,

            additional_vim_regex_highlighting = false,
        },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
