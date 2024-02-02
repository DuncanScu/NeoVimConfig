vim.opt.termguicolors = true
require("bufferline").setup({
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                separator = true,
                text_align = "center"
            }
        },
        diagnostics = "nvim_lsp",
    }
})

vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>BufferLinePickClose<CR>")
