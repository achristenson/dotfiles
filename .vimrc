" Vim Configuration File

" Enable Vim functionality.
set nocompatible

" Turn on syntax highlighting.
syntax on 

" Disable the default startup message.
set shortmess+=I

" Show line numbers.
set number

" Enable relative line numbering.
set relativenumber

" Show the status line at the bottom.
set laststatus=2

" Enable backspace before the insertion point
set backspace=indent,eol,start

" Use hidden buffers to prevent forgetting about changes.
set hidden

" Ignore cases in search, unless specified by using capital letters.
set ignorecase
set smartcase

" Enable searching while typing.
set incsearch

" Unbind annoying default keybindings
nmap Q <Nop> " Roadblock to Ex mode.

" Disable the audible bell.
set noerrorbells visualbell t_vb=

" Enable mouse support.
set mouse+=a

" Disable the arrow keys to prevent bad habits.
" Normal Mode
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
" Insert Mode
inoremap <Left> :echoe "Use h"<CR>
inoremap <Right> :echoe "Use l"<CR>
inoremap <Up> :echoe "Use k"<CR>
inoremap <Down> :echoe "Use j"<CR>

" Nerdtree shortcut remapping
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Update refresh time for live preview
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
