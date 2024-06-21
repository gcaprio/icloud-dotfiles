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

" fzf native plugin
Plugin 'junegunn/fzf'
" fzf.vim
Plugin 'junegunn/fzf.vim'
" Linting
Plugin 'dense-analysis/ale'
" Auto End certain structures: when, if, etc..
Plugin 'tpope/vim-endwise'
" Ruby & Rails Support
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
" Javascript Support
Plugin 'pangloss/vim-javascript'
Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'
" Tab Autocomplete
Plugin 'ervandew/supertab'

" Git Integration
Plugin 'tpope/vim-fugitive'

" Support repeat . command for plugins
Plugin 'tpope/vim-repeat'

" Support for Surrounding
Plugin 'tpope/vim-surround'

" Support for commenting
Plugin 'tpope/vim-commentary'

" Visuals
Plugin 'catppuccin/vim', { 'as': 'catppuccin' }
Plugin 'mellow-theme/mellow.nvim'

" Status bar
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Best Practices for VIM
Plugin 'm4xshen/hardtime.nvim'

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

" Catppuccin Scheme
"let g:airline_theme = 'catppuccin_mocha'
"colorschem catppuccin_frappe
colorschem mellow

au VimLeave * if filereadable("[path here]/.netrwhist")|call delete("[path here]/.netrwhist")|endif 

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let g:NERDTreeWinSize=45
map <Leader>n :NERDTreeFind<CR>

" Remap keys for fzf and Ag
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-a> :Ag<CR>

" Setup Ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/node_modules/*     " MacOSX/Linux

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
