set mouse=a

" Build single C++
nnoremap <F5> :w <CR>:!g++ -std=c++11 -DUSE_CERR -DHOME % -o %< -O2 && ./%< <CR>
nnoremap <F6> :w <CR>:!g++ -std=c++11 -DUSE_CERR -DHOME % -o %< -g && gnome-terminal -e "gdb %<"<CR> <CR>

" Tab navigation
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

" New tab short-cut
nnoremap <F9> :tabe 

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

colorscheme jellybeans
set number
set foldmethod=syntax
