local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)


    -- Plugins
    use "wbthomason/packer.nvim"            -- Have packer manage itself
    use "nvim-lua/plenary.nvim"             -- Useful lua functions used by lots of plugins
    use "nvim-lua/popup.nvim"               -- Popup windows


    use "nvim-tree/nvim-tree.lua"           -- File explorer
    use "nvim-tree/nvim-web-devicons"       -- Pretty icons
    use "nvim-lualine/lualine.nvim"         -- "Statusline"
    use "nvim-treesitter/nvim-treesitter"   -- Treesitter
    use { "nvim-telescope/telescope.nvim", tag = "0.1.0" }  -- Telescope

    use "akinsho/bufferline.nvim"           -- Bufferline

    use {                                   -- Autopair
	    "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    -- Plugins - LSP
    use {
        "williamboman/mason.nvim",               -- Package manager for LSPs, linters, formaters, ...
        "williamboman/mason-lspconfig.nvim",     -- "Bridge" between Mason and lspconfig 
        "neovim/nvim-lspconfig",                 -- Neovim LSP client
    }

    use "rust-lang/rust.vim"
    use 'simrat39/rust-tools.nvim'

    -- Plugins - Completion
    use {
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "onsails/lspkind-nvim",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    }

    -- Plugins - Comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup({
                toggler = {
                    line = "<C-c>",
                    block = "<A-c>",
                }
            })
        end
    }

    --use "deoplete-plugins/deoplete-clang"   -- C/C++ Autocomplete
    --use "hrsh7th/nvim-cmp"                  -- The completion plugin
    --use "hrsh7th/cmp-buffer"                -- buffer completions
    --use "hrsh7th/cmp-path"                  -- path completions
	--use "saadparwaiz1/cmp_luasnip"          -- snippet completions
	--use "hrsh7th/cmp-nvim-lsp"
	--use "hrsh7th/cmp-nvim-lua" 

    --use "L3MON4D3/LuaSnip"                  -- Lua snippet engine
    --use { "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" } -- a bunch of snippets to use
    ----------

    -- Themes
    use 'navarasu/onedark.nvim'
    ---------


	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

