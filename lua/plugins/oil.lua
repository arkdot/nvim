return {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    lazy = false,
    config = function()
        require("oil").setup({
            view_options = {
                show_hidden = true
            },
            use_default_keymaps = false,
            keymaps = {
                ["g?"] = { "actions.show_help", mode = "n" },
                ["<CR>"] = { "actions.select", mode = "n" },
                ["-"] = { "actions.parent", mode = "n" },
                ["_"] = { "actions.open_cwd", mode = "n" },
            },
        })
        vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open file explorer" })
    end,
}
