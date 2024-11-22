
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)

	use "wbthomason/packer.nvim"

    -- Java setup
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-jdtls'

    -- Prettier
    use('MunifTanjim/prettier.nvim')

	-- Gruvbox Theme
    use "sainnhe/gruvbox-material"

    -- Nvim Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Comments Toggler
    use "terrortylor/nvim-comment"

    -- Status line Lualine
	use 'nvim-lualine/lualine.nvim'

	-- Telescope
	use 'nvim-telescope/telescope.nvim'

    -- Terminal
    use {
        "akinsho/toggleterm.nvim",
        tag = '*'
    }

    -- Autocomplete Icons
    use('onsails/lspkind-nvim')

    -- Snippets Autocomplete
    use 'saadparwaiz1/cmp_luasnip'

    -- Multiple cursors
    use 'mg979/vim-visual-multi'

    -- Autopairs
    use {
        'windwp/nvim-autopairs',
    }

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
	}

    -- NeoTree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        }
    }

    -- ESLint
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/eslint.nvim'

    -- BarBar
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'

    -- Autoformatter
    use { 'mhartington/formatter.nvim' }

    -- Surround
    use 'tpope/vim-surround'

    -- LSP SETUP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- lsp manager
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
        }
    }

    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'nvim-lua/plenary.nvim'

    use {
        'L3MON4D3/LuaSnip',
        tag = "v2.*",
        run = "make install_jsregexp",
    }

    use { "rafamadriz/friendly-snippets" }

    use {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    }

    use "nvimtools/none-ls.nvim"

end)

