-- Key remaping
local opts = { noremap = true, silent = true }
local _keymap = vim.api.nvim_set_keymap

function keymap(mode, keys, action)
	_keymap(mode, keys, action, opts)
end

-- Space as leader
keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General
--keymap('n', "<leader>r", "<cmd>source ~/.config/nvim/init.lua<cr>")
keymap("n", "<BS>", ":")
keymap("i", "jk", "<ESC>")
keymap("i", "kj", "<ESC>")

-- Indetation
keymap("n", ">", ">>")
keymap("n", "<", "<<")
keymap("v", ">", ">gv")
keymap("v", "<", "<gv")

-- Move line
keymap("v", "<A-k>", ":m .-2<CR>v")
keymap("v", "<A-j>", ":m .+1<CR>v")
-- keymap("n", "<A-j>", "ddp")
-- keymap("n", "<A-k>", "ddkP")

-- Redo
keymap("n", "U", "<C-r>")

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>")
keymap("n", "<S-h>", ":bprevious<CR>")

-- Resize windows
keymap("n", "<C-Up>", ":resize -2<CR>")
keymap("n", "<C-Down>", ":resize +2<CR>")
keymap("n", "<C-Left>", ":vertical resize -2<CR>")
keymap("n", "<C-Right>", ":vertical resize +2<CR>")

-- Go To
keymap("n", "gh", "0")  -- End
keymap("n", "gl", "g_")  -- Start

-- Select all
keymap("n", "<C-a>", "ggVG")

-- Clear selection highlight
keymap("n", "<CR>", ":noh<CR><CR>")

-- Cycle active buffer
keymap("n", "<S-Tab>", "<C-w><C-w>")
