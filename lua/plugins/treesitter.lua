return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "cpp",
                "cmake",

                "lua",
                "python",

                "vim",
                "vimdoc",

                "markdown",
                "markdown_inline",

                "rust",
            },

            -- Install parsers asynchronously (applies to ensure_installed)
            sync_install = false,

            -- Install missing pasers when entering buffer
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "markdown" },
            },

            indent = { enable = true }
        })
    end
}
