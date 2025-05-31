return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()

            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                serverity_sort = true,
            })

            vim.keymap.set("n", "K", function()
                vim.diagnostic.open_float(nil, { focusable = false })
            end)

            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            --lspconfig.gopls.setup({
            --  capabilities = capabilities
            --})
            lspconfig.ts_ls.setup({
                capabilities = capabilities
            })
            lspconfig.solargraph.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

            lspconfig.julials.setup{
                on_new_config = function(new_config, _)
                    local julia = vim.fn.expand("~/.julia/environments/nvim-lspconfig/bin/julia")
                    if require'lspconfig'.util.path.is_file(julia) then
                        new_config.cmd[1] = julia
                    end
                end
            }
lspconfig["mojo"].setup({
	cmd = { 'mojo-lsp-server' },
	single_file_support = true,
	capabilities = capabilities,
	filetypes = { "mojo", "*.🔥" },
})
            vim.keymap.set("n", "m", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
