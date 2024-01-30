vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
})

local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>pv", function () api.tree.open() end)
vim.keymap.set("n", "<leader>cpv", function() api.tree.close() end)
