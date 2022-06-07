"Gotta be the first
set nocompatible              " be iMproved, required
filetype off                  " required


if has("syntax")
  syntax on
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

call vundle#begin()
  Plugin 'preservim/nerdtree'
  Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'PhilRunninger/nerdtree-visual-selection'
  Plugin 'PhilRunninger/nerdtree-buffer-ops'
  "Plugin 'ryanoasis/vim-devicons'
  Plugin 'vim-airline/vim-airline'
call vundle#end()


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ---General settings ---
set nocompatible
set ruler
set number
set showcmd
set background=dark
syntax on


" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_meaningful_tab_names = 1

" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
