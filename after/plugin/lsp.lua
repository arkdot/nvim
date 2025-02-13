local lsp = require('lsp-zero')

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "pylsp",
        "ruff",
        "rust_analyzer",
        "yamlls",
    }
})

lsp.setup()

-- Diagnostics are shown as virtual text.
vim.diagnostic.config({
    virtual_text = true
})


local on_attach = function(_, _)
    local opts = {}

    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)

    vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, opts)
end



local lsp_config = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp_config.lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            },
        },
    },
})

lsp_config.pylsp.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

lsp_config.ruff.setup({
    on_attach = on_attach,
    init_options = {
        settings = {
          lineLength = 100
        }
    }
})


lsp_config.clangd.setup({
    on_attach = function(client, bufnr)
        on_attach(client, bufnr)
        vim.keymap.set("n", "<leader>gf", ":ClangdSwitchSourceHeader<CR>", {})
    end
})

lsp_config.yamlls.setup({
    on_attach = on_attach
})

lsp_config.rust_analyzer.setup({
    on_attach = on_attach
})


