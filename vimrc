" ~/.vimrc
" Lisa McCutcheon
" Wed Feb 07, 2007

" **************************************
" * VARIABLES
" **************************************
set nocompatible                " Get rid of strict vi compatibility!
set nu                          " Line numbering on.
set autoindent                  " Autoindent on.
set cindent                     " Support C autoindenting of braces, etc.
set fo+=r                       " Support continuing * in C block comments.
"set noerrorbells                " Turn off error bells (screen flashing).
set modeline                    " Allow setting specific vim variables in files.
set showmode                    " Show curr mode (Insert, Replace, Visual, etc)
set nowrap                      " No line wrapping!
set ignorecase                  " Search without regards to case.
set backspace=indent,eol,start  " Make backspace work normally.
set fileformats=unix,dos,mac    " Open files from mac/dos.
set exrc                        " Use local dir .vimrc, if available.
set nojoinspaces                " Don't add white space after ., ?, !
set ruler                       " Show which line I am on.
set showmatch                   " Check matching delims () {} []
set incsearch                   " Incremental searching.
"set nohlsearch                  " Don't highlight search results.
set bs=2                        " Fix backspacing in insert mode.
set bg=light                    " Light background.

" Expand tabs to spaces.
au BufRead,BufNewFile *.{c,h,java} set expandtab
au BufRead,BufNewFile *.{c,h,java} set shiftwidth=4
au BufRead,BufNewFile *.{c,h,java} set tabstop=4

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" Show syntax
syntax on

" This is my prefered colorscheme, feel free to choose another colorscheme 
" (You can try out other colors by doing :colorscheme in command mode, then 
" press space, then tab.  Keep pressing tab to cycle through all the colorscheme
" options).
colors elflord

" For switching between many opened files by using Ctrl-J or Ctrl-K.
map <C-J> :next <CR>
map <C-K> :prev <CR>

" Spelling toggle via F10 and F11.
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>
