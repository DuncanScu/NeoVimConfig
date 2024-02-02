local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    --WhichKey (Autocomplete commands)
    "folke/which-key.nvim",

    -- Telescope (Search your projects)
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        lazy = true
    },

    -- Color Theme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },

    -- TreeSitter (Syntax Highlighting)
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = true
    },

    -- TreeSitter Context (Sticky Functions)
    { "nvim-treesitter/nvim-treesitter-context" },

    -- Undo Tree
    { "mbbill/undotree" },

    -- Fugitive (Wrapper around Git)
    {
        "tpope/vim-fugitive",
        lazy = true
    },

    -- LSP Zero (Language Server Protocol)
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x'
    },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },

    -- NVimTree (Tree Explorer)
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

    -- Autoclose (Autoclose tags)
    { "m4xshen/autoclose.nvim" },

    -- BufferLine (Buffer Manager)
    { "akinsho/bufferline.nvim" }
})
