
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'


call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'
Plug 'franbach/miramare'
Plug 'vim-airline/vim-airline'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'neoclide/coc-eslint'
Plug 'posva/vim-vue'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'pseewald/vim-anyfold'
Plug 'zivyangll/git-blame.vim'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-buffer'

call plug#end()

lua << EOF 
    local cmp = require'cmp'
    cmp.setup({
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end,
        },
        mapping = {
            ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        },
        sources = {
            { name = '...' },
            ...
        }
    })
EOF


let g:ale_disable_lsp = 1
let mapleader = " "
let g:airline_theme='miramare'
let g:coc_global_extensions = [ 'coc-tsserver' ]
let g:ale_linter_aliases = {'vue': ['vue', 'javascript', 'typescript']}
let g:ale_linters = {'vue': ['eslint', 'vls']}
let g:highlightedyank_highlight_duration = 200

let g:vim_vue_plugin_config = { 
    \'syntax': {
    \   'template': ['html'],
    \   'script': ['typescript'],
    \   'style': ['css'],
    \},
    \'full_syntax': [],
    \'initial_indent': [],
    \'attribute': 0,
    \'keyword': 0,
    \'foldexpr': 0,
    \'debug': 0,
\}

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


let g:coc_snippet_next = '<tab>'

set cursorline
set tabstop=4 shiftwidth=4 expandtab
set number relativenumber
set list
set listchars=tab:›\ ,eol:¬,trail:⋅,nbsp:⋅,
set nowrap
set colorcolumn=160
set foldlevel=99 " Open all folds


syntax on
colorscheme miramare

filetype plugin indent on " required
filetype plugin on

autocmd Filetype * AnyFoldActivate   

highlight Search ctermbg=White ctermfg=Black
highlight ALEWarning ctermbg=DarkMagenta ctermfg=White
highlight ALEERROR ctermbg=Red ctermfg=Black
highlight HighlightedyankRegion ctermbg=Yellow ctermfg=Black

nnoremap <leader><leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap <leader><leader>p :PlugInstall<CR>
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap Y y$
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>n :tabn<CR>
nnoremap <leader>p :tabp<CR>
nnoremap <C-f> :Ggrep 
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
nnoremap [count]<leader>cc :NERDCommenterComment<CR>
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

nmap <silent> gd <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

command! -nargs=0 Jest :call CocAction('runCommand', 'jest.projectTest')
command! -nargs=0 JestCurrent :call CocAction('runCommand', 'jest.fileTest', ['%'])
command! JestInit :call CocAction('runCommand', 'jest.init')


