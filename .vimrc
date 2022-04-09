set nocompatible
filetype off

syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin Manager
Plugin 'gmarik/Vundle.vim'
" Sensible Defaults
Plugin 'tpope/vim-sensible'
"Syntax highlights
Plugin 'sheerun/vim-polyglot'
Plugin 'slim-template/vim-slim.git'
" File manager
Bundle 'scrooloose/nerdtree'
" Built in ACK
Plugin 'mileszs/ack.vim'
" Autocomplete
Plugin 'ctrlpvim/ctrlp.vim'
" Linting
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-endwise'
" Ruby Support
Plugin 'vim-ruby/vim-ruby'
" Rails Support
Plugin 'tpope/vim-rails'
" Javascript Support
Plugin 'pangloss/vim-javascript'

" Visuals 
" Papercolor Theme
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'joshdick/onedark.vim'
Plugin 'nanotech/jellybeans.vim'

" Status bar
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" Load Plugins
call vundle#end()
syntax enable
filetype plugin indent on

set t_Co=256
set guioptions=aAce
set nospell

" Line Numbers
set number
" Statusbar
set laststatus=2
" Sweet Sweet whitespace dots
set list
set lcs=space:·

"set guifont=SauceCodePro\ Nerd\ Font\ Mono:h14
"set guifont=Fantasque\ Sans\ Mono:h14
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab
set nowrap
set hidden

"set foldmethod=syntax
" Configured what level folds are opened to
"set foldlevel=2

" Theme Options
set background=dark
set termguicolors
"let g:airline_theme='papercolor'
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

syntax on
colorscheme onedark
"colorscheme Papercolor
"colorscheme monokai_pro
"colorscheme cobalt2
"colorscheme material

au VimLeave * if filereadable("[path here]/.netrwhist")|call delete("[path here]/.netrwhist")|endif 

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let g:NERDTreeWinSize=45
map <Leader>n :NERDTreeFind<CR>

" Setup Ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
