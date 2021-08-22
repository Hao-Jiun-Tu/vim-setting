"nerdtree mapping
inoremap <silent> <F10> <Esc>:NERDTreeToggle<CR>
map <silent> <F10> <Esc>:NERDTreeToggle<CR>

" eliminate "press ? for help
let NERDTreeMinimalUI = 1

"to solve nerdtree garbled text 
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

