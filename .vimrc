syntax on

set nu
set mouse=a
set ai
set cursorline
set tabstop=4
set shiftwidth=8
set showcmd
set noshowmode
set textwidth=0					"auto change line if meet textwidth
set autoindent
set expandtab
set showmatch
"set lines=40 columns=100
:set background=dark
colorscheme gruvbox 

source $HOME/.vim/hdlmap.vim

"Check keyboard button codes using cmd :h key-notation 

"Command shortcuts @ insert mode
"auto complete the word
inoremap <S-Down> <C-x><C-n>
"save file
inoremap <C-s> <Esc>:w<CR>
"copy / cut / paste
inoremap <C-c> <Esc>yyi
inoremap <C-x> <Esc>yyddi
inoremap <C-v> <Esc>pi
"undo / redo
inoremap <S-Left> <Esc>ui
inoremap <S-Right> <Esc><C-r>i


"Command shortcuts @ normal mode
nnoremap <F1> :vsplit 
nnoremap <F2> :%s///g<Left><Left><Left>
nnoremap <F3> :noh<CR>
"tab pages
nnoremap <S-Up> :tabe 
nnoremap <S-Right> :tabnext<CR>
nnoremap <S-Left> :tabNext<CR>
"Add/Remove constant commands
nnoremap <C-c> <Home>i//<Esc>j
nnoremap <S-c> <Home>xx<Esc>j
"move front / back pages
nnoremap <C-Up> <C-b>
nnoremap <C-Down> <C-f>


"Command shortcuts @ visual mode
vnoremap <F2> :s///g<Left><Left><Left>
vnoremap <Tab> >
vnoremap <S-Tab> <

"save file
map <C-s> <Esc>:w<CR>


"Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
call plug#end()

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'angr'

"nerdtree mapping
inoremap <silent> <F10> <Esc>:NERDTreeToggle<CR>
map <silent> <F10> <Esc>:NERDTreeToggle<CR>
"to solve nerdtree 
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let NERDTreeMinimalUI = 1
