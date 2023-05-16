require("dashboard").setup({
    theme = "hyper",
    config = {
        shortcut = {
            {
                desc = "Open empty",
                group = "Label",
                key = "n",
                action = ":bd",
            },
            {
                desc = "File picker",
                group = "Label",
                key = "f",
                action = ":Telescope find_files",
            },
            {
                desc = "Dotfiles",
                group = "Label",
                key = "d",
                action = ":NvimTreeOpen ~/.config",
            },
            {
                desc = "plugins.lua",
                group = "Label",
                key = "p",
                action = ":e ~/.config/nvim/lua/user/plugins.lua"
            }
        },
        week_header = {
            enable = true,
        },
        disable_move = false,
        packages = { enable = true }, -- show how many plugins neovim loaded
        project = { enable = false, limit = 8, icon = "", label = "Projects:", action = ":Telescope find_files cwd=" },
        mru = { limit = 10, icon = "", label = "Recent files" },
        footer = {}, -- footer
    }
})

