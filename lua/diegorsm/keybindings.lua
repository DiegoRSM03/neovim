-- INSERT
vim.keymap.set("i", "jk", "<Esc>")

-- NORMAL
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>w", "<Cmd>w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>v", "<Cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>z", "u", { noremap = true, silent = true, desc = "Undo" })

-- ALL MODES
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Cmd>w<CR>", { noremap = true, silent = true })
