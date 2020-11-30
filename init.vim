if &shell =~# 'fish$'
    set shell=bash
endif

let g:mapleader = "\<Space>"

set nocompatible

syntax enable
filetype plugin indent on

set termguicolors
set noswapfile
set nobackup
set fileencoding=utf-8
set encoding=utf-8
set hidden
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent
set autoindent
set number relativenumber
set wildmenu
set noshowmode
set ignorecase
set nowritebackup
set formatoptions-=cro
set conceallevel=0                      " So that I can see `` in markdown files
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set mouse=a                             " Enable your mouse
set laststatus=0
" set iskeyword+=-                     	" Treat dash separated words as a word text object
set cmdheight=2                         " More space for displaying messages
set pumheight=10                        " Makes popup menu smaller
set scrolloff=6
set nowrap
set wrapscan                            " Searches wrap around end-of-file.
set incsearch                           " Highlight while searching with / or ?.
" set nohlsearch
set complete-=i                         " Disable scanning included files
set complete-=t                         " Disable searching tags
set synmaxcol=200
set cursorline
" set colorcolumn=80                    " Set if you want a vertical line on the 80th symbol

 " Disabling line numbers in netrw(does not affect ranger.vim on startup)
let g:netrw_bufsettings = 'noma nomod nonumber norelativenumber nobl nowrap ro'

" set updatetime=300                      " Faster completion
" set timeoutlen=100                      " By default timeoutlen is 1000 ms

" Autocommands
" Disable these options when open a buffer that is terminal
autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no
" use terminal background
" autocmd ColorScheme * highlight! Normal ctermbg=NONE guibg=NONE

" Auto source vimrc on save
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" Smarter cursorline
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

" Place the cursor where it was the last time you closed the file
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

" END Autocommands

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keybindings.vim

" !important settings :D
set signcolumn=no
