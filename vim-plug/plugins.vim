call plug#begin('~/.config/nvim/autoload/plugged')
    " Ranger
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim' " Ranger dependency

    " Telescope
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/popup.nvim' " Telescope dependency
    Plug 'nvim-lua/plenary.nvim' " Telescope dependency

    " themes
    " Plug 'christianchiarulli/nvcode-color-schemes.vim' " A collection of themes set up to work with nvim-treesitter
    " Plug 'tomasiser/vim-code-dark'  " Need this to set airline theme
    " Plug 'sainnhe/edge'
    Plug 'https://github.com/sainnhe/gruvbox-material'

    " Auto pairs and closing tags
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'

    " Syntax highlighting
    Plug 'nvim-treesitter/nvim-treesitter'

    " Lsp and file explorer(coc-explorer)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Git integration
    Plug 'tpope/vim-fugitive'
    
    " Misc
    Plug 'https://github.com/unblevable/quick-scope'
    Plug 'tpope/vim-surround' " Quickly surround text with a character or a tag
    Plug 'mhinz/vim-startify' " Start screen
    Plug 'ryanoasis/vim-devicons' " NERD font icons
    Plug 'tpope/vim-commentary' " Comment out stuff
    Plug 'machakann/vim-highlightedyank' " Highlights yanked text
    Plug 'tpope/vim-repeat' " Semantic . repeat
    Plug 'vim-airline/vim-airline' " Status line
    Plug 'troydm/zoomwintab.vim' " Fullscreen a window by moving other windows to another tab
    " Plug 'junegunn/goyo.vim' " Looks interesting and may use it at some point in the future
    " Plug 'https://github.com/dag/vim-fish' " I don't use this anymore
call plug#end()

" Source all the configuration for plugins
source $HOME/.config/nvim/vim-plug/plugin-config.vim
