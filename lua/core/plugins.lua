-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- starup time optimise
	use 'dstein64/vim-startuptime'
	use 'lewis6991/impatient.nvim'
	use 'nathom/filetype.nvim'
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        requires = {'nvim-tree/nvim-web-devicons'}
    }

	-- buffer
	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	}
	use 'moll/vim-bbye' -- for more sensible delete buffer cmd

	-- themes (disabled other themes to optimize startup time)
    use 'fatih/molokai'
	use 'tiagovla/tokyodark.nvim'
	use 'projekt0n/github-nvim-theme'
	use 'NLKNguyen/papercolor-theme'
	use 'liuchengxu/space-vim-dark'
	use 'sainnhe/edge'
	use 'B4mbus/oxocarbon-lua.nvim'
	use 'Th3Whit3Wolf/one-nvim'

	-- file tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- language
    use {'neoclide/coc.nvim', branch = 'release'}
	use 'nvim-treesitter/nvim-treesitter'
	use 'simrat39/rust-tools.nvim'
	use 'simrat39/symbols-outline.nvim'
    use 'dense-analysis/ale'
    use 'tpope/vim-commentary'
    use 'easymotion/vim-easymotion'
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'

    -- file
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use { 'junegunn/fzf.vim' }

	-- git
	use {
        'tanvirtin/vgit.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
	}
    use {"tpope/vim-fugitive"}

	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- floating terminal
	use 'akinsho/toggleterm.nvim'

	-- indent guide
	use "lukas-reineke/indent-blankline.nvim"

	-- english grammar check
	use 'rhysd/vim-grammarous'

	-- ascii image
	use 'samodostal/image.nvim'

    use 'fatih/vim-go'

    use 'windwp/nvim-autopairs'
end)
