" vim:fdm=marker

" COMMON {{{

" stop DOS line endings
set fileformat=unix
set fileformats=unix,dos
"set nobinary

" :set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
au GUIEnter * simalt ~x

map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3

set encoding=utf-8
set nocompatible
set tabstop=4
set expandtab
set autoindent
set shortmess-=S
" }}

" DISPLAY {{{
set ruler
" set number
set showcmd
set laststatus=2
" }}}

" FONT {{{
if has('gui_gtk')
    set guifont=Dejavu\ Sans\ Mono\ 10
else
    set guifont=Consolas:h10:cANSI
endif
" }}}

" COLORS {{{
syntax on
colorscheme koehler
" set t_Co=256
" set background=light
" }}}

" BACKUPS {{{
set nowb
set noswapfile
set nobackup
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
set history=500
set updatecount=100
" }}}

" SEARCH {{{
set incsearch   " do incremental searching
set ignorecase
set infercase
set hlsearch
set showmatch
set diffopt=filler,iwhite
nnoremap / /\v
vnoremap / /\v
" }}}

" AUTOCMD {{{{
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Associate file types with a particular language highlight style
autocmd BufEnter *.tsx,*.jsx,*.ts :setlocal filetype=javascript
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" }}}

