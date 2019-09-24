" vim-plug stuff
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Start manual setting config here

" Set status line
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
" Unified color scheme (default: dark)
" if has("unix")
"   let s:uname = system("uname -s")
"   if s:uname == "Darwin"
"     set termguicolors
"   endif
" endif
colorscheme gruvbox
" Setting dark mode
set background=dark
" Remap <CTRL>-p to find files using FZF
nnoremap <c-p> :GFiles<CR>
" View buffers and choose one. Escape to exit.
nnoremap <c-b> :buffers<CR>:b<Space>
" File structure explorer
nnoremap <c-e> :Ex<CR>
" Set/unset line numbers
nnoremap <c-n> :set nu!<CR>

" Show line numbers
set number
" Highlight cursor
set cursorline

" tabbing
set tabstop=2
set shiftwidth=2
set expandtab
