set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'valloric/youcompleteme'
Plugin 'tkztmk/vim-vala'
Plugin 'tbastos/vim-lua'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-lua-ftplugin'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'leafo/moonscript-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'sclarki/neonwave.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" YouCompleteMe
" let g:loaded_youcompleteme = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'seagull'

let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'

let g:lua_compiler_name = '/usr/bin/luac'

" NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Tab navigation
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

" New tab short-cut
nnoremap <F9> :tabe 

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set history=1000
set hlsearch
set scrolloff=3

hi Normal guibg=darkgrey ctermfg=lightgrey ctermbg=darkgrey
set background=dark
" colorscheme jellybeans
colorscheme mango
" colorscheme zenburn
set number
set relativenumber
" set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set cursorline
set foldmethod=syntax
