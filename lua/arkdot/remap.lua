-- Open file browser.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Line merging: cursor doesn't mov
vim.keymap.set("n", "J", "mzJ`z")

-- Half-page jumps: cursor stays centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-s>", "<C-u>zz")

-- Search: cursor stays centered
vim.keymap.set("n", "n", "nzzzv")

-- Copy to system/vi buffer
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Format current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])


vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

