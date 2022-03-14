vim.g.mapleader = " "

-- Vim managment
vim.api.nvim_set_keymap('n', '<leader><leader>r', ':so ~/.config/nvim/init.vim<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader>p', ':PlugInstall<CR>', { noremap = true, silent = true })

-- Navigate between splits
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })

-- Navigate between tabs
vim.api.nvim_set_keymap('n', '<leader>n', ':tabn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', ':tabp<CR>', { noremap = true, silent = true })

-- Ggrep 
vim.api.nvim_set_keymap('n', '<C-]>', ':cnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-[>', ':cprev<CR>', { noremap = true, silent = true })


-- LSP Saga
vim.api.nvim_set_keymap('n', 'gh', ':Lspsaga lsp_finder<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ca', ':Lspsaga code_action<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gd', ':Lspsaga preview_definition<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fa', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fh', ':Telescope help_tags<CR>', { noremap = true, silent = true })

-- Trouble mappings
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)

-- Vim-test mappings
vim.api.nvim_set_keymap("n", "<leader>tt", ":TestSuite<CR>", { noremap = true, silent = true });
