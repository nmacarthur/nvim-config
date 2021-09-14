-- Plugin Management
require('plugins')

-- Config
require('config')

-- Keymapping
require('keymapping')

-- LSPSaga
local saga = require('lspsaga')
saga.init_lsp_saga()

-- NVim Tree
require('plugin-config/nvim-tree')

-- Trouble
require('trouble').setup()