-- Mason
require("mason").setup()

-- Mason LSPconfig
require("mason-lspconfig").setup({
    ensure_install = { "lua_ls", "rust_analyzer" },
})

-- LSPConfig
local on_attach = function(_, _)
    -- Rename
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {})

    -- ???
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

    -- Go To
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})                        -- Go to definition
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})                    -- Go to implemetation
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})   -- Go to/List references
    vim.keymap.set("n", "<C-x>", vim.lsp.buf.hover, {})                              -- Show info popup
end

require("lspconfig").lua_ls.setup {
    on_attach = on_attach
}

require("lspconfig").rust_analyzer.setup {
    on_attach = on_attach,
}
