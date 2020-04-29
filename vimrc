" vim-plug stuff
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'morhetz/gruvbox'
Plug 'ocaml/vim-ocaml'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Start manual setting config here

" Set status line
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
colorscheme gruvbox
" Setting dark mode
set background=dark
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
" Highlight cursor
set cursorline

" tabbing
set tabstop=2
set shiftwidth=2
set expandtab
