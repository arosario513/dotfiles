" General Settings
set tabstop=4
set softtabstop=4
syntax on
filetype plugin indent on
filetype plugin on
set relativenumber
set autoindent
set expandtab
set cursorline

" Plugins
call plug#begin()
        Plug 'dracula/vim'
        Plug 'ryanoasis/vim-devicons'
        Plug 'scrooloose/nerdtree'
        Plug 'vim-airline/vim-airline'
        Plug 'ap/vim-css-color'
        Plug 'neoclide/coc.nvim',{'branch':'release'}
        Plug 'preservim/tagbar'
        Plug 'BurntSushi/ripgrep'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim',{'branch':'release'}
        Plug 'nvim-treesitter/nvim-treesitter', {'do':'TSUpdate'}
        Plug 'preservim/nerdcommenter'
call plug#end()

" Colorscheme
:colorscheme dracula

" Keybindings
let mapleader=" "
nnoremap <leader>e :NERDTreeToggle<CR>
