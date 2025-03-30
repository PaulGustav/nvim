return {
    {
        "neovim/nvim-lspconfig",
    },
    { "williamboman/mason.nvim" },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason").setup()

            local servers = {
                "lua_ls",
                "rust_analyzer",
                "clangd",
                "tailwindcss",
                "pyright",
                "html",
                "ts_ls",
            }

            require("mason-lspconfig").setup({
                ensure_installed = servers,
            })

            local on_attach = function(client, bufnr)
                local opts = { noremap = true, silent = true }
                vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
                vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
            end

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            for _, server in ipairs(servers) do
                require("lspconfig")[server].setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                })
            end

            vim.diagnostic.config({
                virtual_text = true,
                float = {
                    border = "rounded",
                    source = "always",
                    max_width = 80,
                },
            })

            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic in float" })
        end,
    },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                sources = {
                    { name = "nvim_lsp" },
                },
                mapping = {
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-y>"] = cmp.mapping.confirm(),
                },
            })
        end,
    },
    {
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
            library = {
                -- Load luvit types when the `vim.uv` word is found
                { path = 'luvit-meta/library', words = { 'vim%.uv' } },
            },
        },
    },
}
