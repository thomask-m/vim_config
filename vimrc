" vim-plug stuff
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Start manual setting config here

" Set status line
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
" Unified color scheme (default: dark)
set termguicolors
colorscheme gruvbox
" Remap <CTRL>-p to find files using FZF
nnoremap <c-p> :GFiles<CR>
nnoremap <c-b> :buffers<CR>:b<Space>
nnoremap <c-e> :Ex<CR>
" Show line numbers
set number
" Highlight cursor
set cursorline
