vim.g.nvim_tree_side = 'left' --left by default
vim.g.nvim_tree_width = 40 --30 by default, can be width_in_columns or 'width_in_percent%'
vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' } --empty by default
vim.g.nvim_tree_window_picker_exclude = {
    ['filetype'] = {
         'notify',
         'packer',
         'qf'
    },
    ['buftype'] = {'terminal'}
}

vim.g.nvim_tree_show_icons = {
    ['git'] = 1,
    ['folders'] = 0,
    ['files'] = 0,
    ['folder_arrows'] = 0,
}

vim.g.nvim_tree_icons = {
    ['default'] = ' ',
    ['symlink'] = ' ',
    ['git'] = {
        ['unstaged'] = "✗",
       ['staged'] = "✓",
       ['unmerged'] = "",
       ['renamed'] = "➜",
       ['untracked'] = "★",
       ['deleted'] = "",
       ['ignored'] = "◌"
    },
    ['folder'] = {
       ['arrow_open'] = ">",
       ['arrow_closed'] = "<",
       ['default'] = "-",
       ['open'] = "|",
       ['empty'] = "|<",
       ['empty_open'] = "|>",
       ['symlink'] = "=",
       ['symlink_open'] = "=",
    },
    ['lsp'] = {
        ['hint'] = "",
        ['info'] = "",
        ['warning'] = "",
        ['error'] = "",
   }
}


vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>F', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
-- NvimTreeOpen, NvimTreeClose and NvimTreeFocus are also available if you need them

-- vim.api.nvim_command('set termguicolors') -- this variable must be enabled for colors to be applied properly

-- a list of groups can be found at ` =help nvim_tree_highlight`
vim.api.nvim_command('highlight NvimTreeFolderIcon guibg=blue')
