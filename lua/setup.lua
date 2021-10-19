-- Plugin Management
require('plugins')

-- Config
require('config')

-- Keymapping
require('keymapping')

-- NVim Tree
require('plugin-config/nvim-tree')

-- Trouble
require('trouble').setup()

-- Volar language server
local lspconfig = require('lspconfig')

lspconfig.volar.setup{}
lspconfig.tsserver.setup{}

-- LSPSaga
local saga = require('lspsaga')
saga.init_lsp_saga()


