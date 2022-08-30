return require('packer').startup(function() 
	-- Packer can manage it self
	use 'wbthomason/packer.nvim'
    
    -- LSP Configurations
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
        "jose-elias-alvarez/null-ls.nvim",
    }
    -- Treesitter
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-treesitter/nvim-treesitter-textobjects'

	use 'nvim-telescope/telescope.nvim'
	use 'nvim-lua/plenary.nvim'
	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
   	use 'nvim-lualine/lualine.nvim' 
	use 'kyazdani42/nvim-web-devicons'
	use "kyazdani42/nvim-tree.lua"


	use "windwp/nvim-autopairs"
	
	-- snippets
	use "L3MON4D3/LuaSnip" --snippet engine
	use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
	
	-- colorschemes
	use 'tanvirtin/monokai.nvim'
	use "EdenEast/nightfox.nvim"
	use {"ellisonleao/gruvbox.nvim", requires = "rktjmp/lush.nvim" }
	use 'marko-cerovac/material.nvim'
	use "shaunsingh/nord.nvim"
	use "navarasu/onedark.nvim"
	use "cocopon/iceberg.vim"
	use "folke/tokyonight.nvim"
	use "lunarvim/darkplus.nvim"
	use "Mofiqul/dracula.nvim"

    use 'justinmk/vim-sneak'
    

	use "nvim-telescope/telescope-project.nvim"

	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    use {
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    }

    use {
        "akinsho/toggleterm.nvim",
        tag = 'v2.*',
        cmd = { "ToggleTerm", "TermExec" },
        config = function()
            require("toggleterm").setup()
        end
    }

   use {
       'lewis6991/gitsigns.nvim',
       config = function()
           require('gitsigns').setup()
       end
   }

    use {
        "folke/which-key.nvim",
    }

    -- Completions
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
end)
