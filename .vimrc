syntax on

set nu
set mouse=a
set ai
set cursorline
set tabstop=4
set shiftwidth=4
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
inoremap <S-q> <C-x><C-n>
"save file
inoremap <C-s> <Esc>:w<CR>
"copy / cut / paste
inoremap <C-c> <Esc>yyi
inoremap <C-x> <Esc>yyddi
inoremap <C-v> <Esc>pi
"Move cursor
inoremap <S-Up> <Esc><C-b>i
inoremap <S-Down> <Esc><C-f>i
inoremap <S-Left> <Esc>Bi
inoremap <S-Right> <Esc>Wa

"Command shortcuts @ normal mode
nnoremap <F1> :tabe  
nnoremap <F2> :vsplit 
nnoremap <F3> :%s///g<Left><Left><Left>
nnoremap <F4> :noh<CR>
nnoremap <F5> yyp<C-a>
"tab pages
nnoremap <S-Right> :tabnext<CR>
nnoremap <S-Left> :tabNext<CR>
"Add/Remove constant commands
nnoremap <C-c> <Home>i//<Esc>j
nnoremap <S-c> <Home>xx<Esc>j
"move front / back pages
nnoremap <S-Up> <C-b>
nnoremap <S-Down> <C-f>

"Command shortcuts @ visual mode
vnoremap <F3> :s///g<Left><Left><Left>
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

