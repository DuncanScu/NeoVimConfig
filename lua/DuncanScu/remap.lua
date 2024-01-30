vim.g.mapleader = " "


-- Moving Lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Vim Specific Maps
vim.keymap.set("n", "<leader><leader>", "<cmd>so<CR>")

-- Replace occurances of currently selected word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
