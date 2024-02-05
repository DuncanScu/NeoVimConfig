local lsp = require("lsp-zero")

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format() end, opts)
    vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.code_action() end, opts)
end)

-- Setup the servers
require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {
        -- REACT DEVELOPMENT
        "tsserver",
        "tailwindcss",
        "eslint",

        -- LUA DEVELOPMENT
        "lua_ls",

        -- GO DEVELOPMENT
        "gopls",
    },
    handlers = {
        lsp.default_setup
    }
})


-- Setup Autocomplete
local cmp = require("cmp")
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    })
})
