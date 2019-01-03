" File              : /Users/ankurgos/.vimrc
" Author            : Ankur Goswami <agoswam3@ucsc.edu>
" Date              : 08.02.2018
" Last Modified Date: 25.03.2018
" Last Modified By  : Ankur Goswami <agoswam3@ucsc.edu>
"  /home/ankur/.vimrc Author "Ankur Goswami <agoswam3@ucsc.edu>" Date 08.02.2018
syntax enable
colorscheme monokai
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set ruler
set so=999
set encoding=utf-8
set backspace=indent,eol,start
set smartcase
filetype plugin indent on

let g:header_auto_add_header = 0
let g:header_field_author = 'Ankur Goswami'
let g:header_field_author_email = 'agoswam3@ucsc.edu'
map <F4> :AddMinHeader<CR>

imap fd <Esc>

:command Nt NERDTree


map <F7> :-1r !xclip -o -sel clip<CR>
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
" TODO: Compile YouCompleteMe for this computer
" Plug 'Valloric/YouCompleteMe'
Plug 'alpertuna/vim-header'
Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-speeddating'
Plug 'mattn/calendar-vim'
Plug 'vim-scripts/SyntaxRange'
Plug 'mattn/emmet-vim'
Plug 'gabrielelana/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/utl.vim'
call plug#end()

