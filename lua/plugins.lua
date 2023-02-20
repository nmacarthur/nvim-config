local Plug = vim.fn['plug#']

vim.fn['plug#begin']('~/.config/nvim/plugged')

-- Defaults
Plug 'tpope/vim-sensible'

-- Theme
Plug 'dracula/vim'

-- Git
Plug 'tpope/vim-fugitive'

-- Bottom line
Plug 'vim-airline/vim-airline'

-- LSPS
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-lint'
Plug 'glepnir/lspsaga.nvim'

-- Nvim Tree
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tree-sitter/tree-sitter-typescript'


Plug 'folke/trouble.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

-- Plug 'vim-test/vim-test';

vim.fn['plug#end']()
