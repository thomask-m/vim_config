" vim-plug stuff
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Start manual setting config here

" Set status line
" let g:lightline = {
"   \ 'colorscheme': 'seoul256',
"   \ }
colorscheme seoul256-light
" Setting light mode
set background=light
let g:seoul256_background = 255
" Customize fzf colors to match color scheme
let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

" Airline Color
let g:airline_theme='seoul256'

" Map F8 key to compile contest code
map <F8> :w <CR> :!g++ -std=c++17 % -o main && ./main <CR>
" Remap <CTRL>-p to find files using FZF
nnoremap <c-p> :GFiles<CR>
" File structure explorer
nnoremap <c-e> :Ex<CR>
" Set/unset relative line numbers
nnoremap <c-n> :set nu! rnu! <CR>
" Show hybrid line number/relative numbers
set number relativenumber
" Do not highlight cursor
set nocursorline

" tabbing
set tabstop=2
set shiftwidth=2
set expandtab
