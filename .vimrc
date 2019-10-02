" Basic settings

set nocompatible

" Edit
set fileencodings=ucs-bom,utf-8,iso-2022-jp,sjis,cp932,euc-jp,cp20932
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set backspace=2
set smartindent
let g:vim_indent_cont = 0

" Search and Replace
set hlsearch
set ignorecase
set incsearch

" Appearance
set number
set nowrap
set laststatus=2
set statusline=%f%m%=%y[%{&fileencoding}][%{&fileformat}]
set showtabline=2
set list
set listchars=tab:>-,trail:-
set ambiwidth=double
set colorcolumn=80
syntax on

" Others
set wildmenu
set wildmode=list:full
set foldlevelstart=99
set autowrite
set autoread
set noswapfile
set visualbell t_vb=
set clipboard+=unnamed

" Filetype Plugin
filetype plugin on

" Colorscheme
colorscheme desert

" Key mappings

let mapleader = ' '

" Move fast
noremap H b
noremap J }
noremap K {
noremap L w

" Reload
nnoremap <Leader>r :source ~/.vimrc<CR>

" Move to another split window
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

" Resize split window
nnoremap <Leader>L :10wincmd ><CR>
nnoremap <Leader>H :10wincmd <<CR>
nnoremap <Leader>K :resize +5<CR>
nnoremap <Leader>J :resize -5<CR>

" Search
nnoremap / /\v
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap n nzz
nnoremap N Nzz

" Tab
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>n :tabnext<CR>
nnoremap <Leader>p :tabprev<CR>
nnoremap <Leader>th :tabmove -1<CR>
nnoremap <Leader>tl :tabmove +1<CR>

" Buffer
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>d :bdelete<CR>

" QuickFix
nnoremap <Leader>co :copen<CR>
nnoremap <Leader>cc :cclose<CR>
nnoremap <Leader>cn :cnext<CR>
nnoremap <Leader>cp :cprevious<CR>

" Increment
nnoremap + <C-a>
nnoremap - <C-x>

" Commands and Other settings

" Rename current file
command! -nargs=1 -complete=file Rename call rename(expand('%'), '<args>') | e <args>

" Open help window on right window
command! -nargs=1 -complete=help Vh :vertical belowright help <args>

" Change indentation
command! Indent2 :setlocal tabstop=2 shiftwidth=2
command! Indent4 :setlocal tabstop=4 shiftwidth=4

" Convert single quatations into double quatations
command! Double :%s/'/"/g

" Convert an encode into SJIS
command! ToSjis :e ++enc=sjis<CR>

" Refresh buffer every time a cursor moves to another window
augroup CheckFileChange
  autocmd!
  autocmd WinEnter * checktime
augroup END

