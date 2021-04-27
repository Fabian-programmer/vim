nnoremap <C-Left> <C-W>:tabprevious<CR>
nnoremap <C-Right> <C-W>:tabnext<CR>
nnoremap <S-Left> <C-W>h
nnoremap <S-Right> <C-W>l
nnoremap <S-Up> <C-W>k
nnoremap <S-Down> <C-W>j

nnoremap <F5> :tab terminal<CR>


tnoremap <C-Left> <C-W>:tabprevious<CR>
tnoremap <C-Right> <C-W>:tabnext<CR>
tnoremap <S-Left> <C-W>h
tnoremap <S-Right> <C-W>l
tnoremap <S-Up> <C-W>k
tnoremap <S-Down> <C-W>j

tnoremap <F5> <C-W>:tab terminal<CR>

" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
if bufwinnr(1)
  map <kPlus> <C-W>+
  map <kMinus> <C-W>-
  map <kDivide> <c-w><
  map <kMultiply> <c-w>>
endif


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let g:NERDTreeWinSize=60

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

let &t_TI = ""
let &t_TE = ""
