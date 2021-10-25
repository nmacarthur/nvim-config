local Plug = vim.fn['plug#']

vim.fn['plug#begin']('~/.config/nvim/plugged')

Plug 'tpope/vim-sensible'

Plug('neoclide/coc.nvim', { branch = 'release'})
Plug 'neoclide/coc-snippets'

Plug 'dracula/vim'

Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc-snippets'
Plug 'vim-airline/vim-airline'
Plug 'posva/vim-vue'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'glepnir/dashboard-nvim'

-- LSPSaga
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

-- Nvim Tree
Plug 'kyazdani42/nvim-tree.lua'

Plug 'folke/trouble.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'ryanoasis/vim-devicons'

Plug 'kubejm/jest.nvim'

Plug('nvim-treesitter/nvim-treesitter')

vim.fn['plug#end']()
