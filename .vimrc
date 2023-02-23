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
Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'
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
" Tab Autocomplete
Plugin 'ervandew/supertab'

" Visuals
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'joshdick/onedark.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'phanviet/vim-monokai-pro'
Plugin 'sainnhe/sonokai'
Plugin 'lifepillar/vim-gruvbox8'
Plugin 'overcache/NeoSolarized'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'ackyshake/Spacegray.vim'
Plugin 'romainl/Apprentice'
Plugin 'catppuccin/vim', { 'as': 'catppuccin' }

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
"set lcs=space:·

set tabstop=2
set shiftwidth=2
set smartindent
set expandtab
set nowrap
set hidden

"set foldmethod=syntax
" Configured what level folds are opened to
"set foldlevel=2

syntax on

" Theme Options
set background=dark
set termguicolors

let g:airline_powerline_fonts = 1
"let g:airline_theme = 'neodark'
"let g:spacegray_low_contrast = 1
"let g:spacegray_use_italics = 1
"colorscheme spacegray
"colorscheme apprentice
let g:airline_theme = 'catppuccin_mocha'
colorschem catppuccin_frappe

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

" Turn on ALE in Airline
let g:airline#extensions#ale#enabled = 1
" Turn off ALE in source code
let g:ale_virtualtext_cursor=0

" Setup esline as a fixer for ALE
let g:ale_fixers = {
    \   'javascript': ['eslint'],
    \}
" Configure eslint for ALE JS Linting
let g:ale_linters = {
    \   'javascript': ['eslint'],
    \}
