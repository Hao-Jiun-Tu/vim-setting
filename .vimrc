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
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
call plug#end()

