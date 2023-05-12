local bufferline = require("bufferline")
bufferline.setup {
    options = {
        style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
        themable = true,
        numbers = "none",

        -- Commands
        close_command = "bdelete! %d",
        right_mouse_command = nil,
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,          -- can be a string | function, | false see "Mouse actions"

        -- Icons / Markers
        color_icons = true,
        indicator_icon = '▎',
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',

        -- Diagnostics
        --diagnostics = false | "nvim_lsp" | "coc",
        --diagnostics_update_in_insert = false,

        -- Offsets
        offsets = {
            -- NerdTree offset
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
            }
        },
    }
}


