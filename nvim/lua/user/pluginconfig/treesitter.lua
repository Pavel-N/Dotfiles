require"nvim-treesitter.configs".setup {
    -- List of parser names
    ensure_installed = { "c", "lua", "rust", "vim" },

    -- Install parsers synchronously
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true,
    }
}
