"_vimrc file

"Try to install terminal app to fix stutter
"Use netrw just like :cd below

autocmd FileType cpp iab <buffer> ifa if () {<CR>}<Esc>?(<CR>

":iab ( ()<Esc>%

:cd C:\Users\User\Desktop

set cursorline

"Compile with make and auto-compile upon saving
set makeprg=g++\ %\ -o\ %<
autocmd BufWritePost *.cpp make

"Use syntax highlighting
syntax on

"Fix backspace on Windows
set bs=2

"Use find: in combination wit <tab> for fuzzy finding
set path+=**
set wildmenu

"Use vim instead of vi
set nocompatible
"Always display statusline(doesn't show by default)
set laststatus=2

"Set indent size 
set tabstop=2 softtabstop=2
"Set indent size when using >>
set shiftwidth=2
"Ensure indent size behaves normally
set expandtab

"Auto-indenting
set smartindent
"Show line numbers
set nu
"Display only part of a line when wrapping
set nowrap
"Immediately delete backup file upon writing 
set nobackup

"Not sure if this works ***
"Store undo information after exiting vim
set undodir=~/.vim/undodir
set undofile
"Highlight text while searching with /
set incsearch

"""Disabled"""
"Show relative line number
"set relativenumber
"Show line below cursor
"set cursorline

"Other
set noerrorbells
"Annoying windows beep sound
set belloff=all

call plug#begin()

Plug 'doums/darcula'

call plug#end()

"Set a theme
set termguicolors
colorscheme darcula
