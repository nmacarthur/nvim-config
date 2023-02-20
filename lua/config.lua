vim.g.mapleader = " "

vim.g.coc_snippet_next = '<tab>'

vim.api.nvim_command('set cursorline')
vim.api.nvim_command('set tabstop=4 shiftwidth=4 expandtab')
vim.api.nvim_command('set number')
-- vim.api.nvim_command('set nowrap')
vim.api.nvim_command('set colorcolumn=160')
vim.api.nvim_command('set encoding=UTF-8')

vim.api.nvim_command('syntax on')
vim.api.nvim_command('colorscheme dracula')

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_header = {
    '██╗████████╗███████╗    ██╗   ██╗██╗███╗   ███╗    ████████╗██╗███╗   ███╗███████╗',
    '██║╚══██╔══╝██╔════╝    ██║   ██║██║████╗ ████║    ╚══██╔══╝██║████╗ ████║██╔════╝',
    '██║   ██║   ███████╗    ██║   ██║██║██╔████╔██║       ██║   ██║██╔████╔██║█████╗  ',
    '██║   ██║   ╚════██║    ╚██╗ ██╔╝██║██║╚██╔╝██║       ██║   ██║██║╚██╔╝██║██╔══╝  ',
    '██║   ██║   ███████║     ╚████╔╝ ██║██║ ╚═╝ ██║       ██║   ██║██║ ╚═╝ ██║███████╗',
    '╚═╝   ╚═╝   ╚══════╝      ╚═══╝  ╚═╝╚═╝     ╚═╝       ╚═╝   ╚═╝╚═╝     ╚═╝╚══════╝',
}
                                                                                  
-- -- Ale linting
-- vim.g.ale_fixers = { typescript = 'eslint' }
-- vim.g.ale_sign_error = '✕';
-- vim.g.ale_sign_warning = '⚠️'
-- vim.g.ale_fix_on_save = 1;
