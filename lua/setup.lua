-- Plugin Management
require('plugins')

-- Config
require('config')

-- Keymapping
require('keymapping')

-- NVim Tree
require('nvim-tree').setup()

-- Trouble
require('trouble').setup()

require('mason').setup()
require('mason-lspconfig').setup()
local lspconfig = require('lspconfig');

lspconfig.volar.setup{}
lspconfig.tsserver.setup{}

require('lspsaga').setup()

-- require('lint').linters_by_ft = {
--     typescript = {'eslint',}
-- }

