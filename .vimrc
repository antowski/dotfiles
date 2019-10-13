set nocompatible              " be iMproved, required
filetype off                  " required

" { ----------------------------- VUNDLE

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree'            " A tree explorer plugin for vim
Plugin 'Shougo/unite.vim'               " Navigation between buffers and files
Plugin 'majutsushi/tagbar'              " Class/module browser
Plugin 'valloric/youcompleteme'         " autocomplition while typing
"
"------------------=== Other ===----------------------
Plugin 'vim-airline/vim-airline'        " Lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline-themes' " Themes for vim-airline

Plugin 'jiangmiao/auto-pairs'           " auto close brackets

"------------------=== colour scheme ===--------------
Plugin 'sheerun/vim-wombat-scheme'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()            " required

filetype on                  " required
filetype plugin on           " required
filetype plugin indent on    " required

" } VUNDLE

set number	" line numbers

set tabstop=4
set expandtab	" spaces instead of tabs
set t_Co=256    " 256 colors
set nowrap

colorscheme jellybeans
let g:jellybeans_use_term_italics = 1
set cursorline
syntax on

"NERDTree
map <F1> :NERDTreeToggle<CR>    " browse the list of files in the current directory

" Unite settings
nnoremap <F2> :Unite buffer<CR> " browse a list of the currently opened buffers

" TagBar settings
map <F3> :TagbarToggle<CR>
let g:tagbar_autofocus = 1      " autofocus on Tagbar open

" { ------- vim-airline settings

let g:airline_powerline_fonts = 1
"let g:airline_symbols_ascii = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '≡'

set noshowmode
" airline-tabline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#showtabs = 1
"let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"let g:airline#extensions#bufferline#enabled = 0
let g:airline_section_c = '%t'
" }

" { ------ YouCompleteMe settings

let g:ycm_server_python_interpreter = '/usr/bin/python2'
nmap <C-F1> :YcmCompleter GetDoc<CR>

" }

" hide/show statusbar by Shift+h
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>

