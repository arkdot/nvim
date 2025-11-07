-- Install Lazy.
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    }
end
vim.opt.rtp = vim.opt.rtp ^ lazypath


-- General setup and goodies (order matters here).
require "settings"
require "keymaps"

-- Set up lazy, and load my `lua/custom/plugins/` folder
require("lazy").setup({ import = "plugins" }, {
    ui = { border = "rounded" },
    change_detection = { notify = false },
    rocks = { enabled = false },
    performance = {
        rtp = {
            -- Stuff I don't use.
            disabled_plugins = {
                'gzip',
                'rplugin',
                'tarPlugin',
                'tohtml',
                'tutor',
                'zipPlugin',
            },
        },
    },
})
