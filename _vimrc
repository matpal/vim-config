set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'The-NERD-tree'
Plugin 'NERD_tree-Project'
Plugin 'minibufexpl.vim'
Plugin 'tcomment'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'delimitMate.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Display
syntax on
colorscheme molokai
set guifont=Monaco:h10
set number
set cursorline
au GUIEnter * simalt ~n          " Maximized window

" Indentation and tabbings
set autoindent smartindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2

" Search
set ignorecase
set hlsearch
set incsearch
set showmatch

set hidden
set undolevels=1000
set history=1000

set backupdir=~/.vim/tmp,.       " Directory used for backup files
set directory=~/.vim/tmp,.       " Directory used for the swap file

"disable error bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

"""" Key Bindings 
let mapleader=","
let localmapleader=","


map <C-t><C-t> :tabnew<CR>     " Open new tab
map <C-t><C-w> :tabclose<CR>   " Close tab

" Navigate through windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Switch buffers
noremap <C-TAB>   :MBEbn<CR>
noremap <C-S-TAB> :MBEbp<CR>

map <F2> :NERDTreeToggle<CR>
map <A-v> "+gP                 " Paste from system clipboard with alt-v

" MiniBufExpl
let g:miniBufExplMapCTabSwitchBufs=1
" Set the working directory of CtrlP to the directory of the current file
let g:ctrlp_working_path_mode = 'c'

