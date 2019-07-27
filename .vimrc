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
" Plugin 'sclarki/neonwave.vim'
Plugin 'taglist.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'mattesgroeger/vim-bookmarks'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'jeaye/color_coded'
" Plugin 'ervandew/supertab'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'majutsushi/tagbar'
Plugin 'ashisha/image.vim'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'udalov/kotlin-vim'
" Plugin 'scrooloose/syntastic'
Plugin 'lervag/vimtex'

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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" YouCompleteMe
" let g:loaded_youcompleteme = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Indent guides
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'

let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'

let g:lua_compiler_name = '/usr/bin/luac'

" C++ additional highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" Bookmarks
let g:bookmark_sign = '>>'
let g:bookmark_annotation_sign = '##'


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
nnoremap <F7> :cp<CR>
nnoremap <F8> :cn<CR>

" New tab short-cut
nnoremap <F9> :tabe 

nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F2> :TlistToggle<CR>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

let g:UltiSnipsExpandTrigger="<F1>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set history=1000
set hlsearch

hi Normal guibg=darkgrey ctermfg=lightgrey ctermbg=darkgrey
set termguicolors
set background=dark
" colorscheme xoria256
" colorscheme skittles_berry
" colorscheme jelleybeans
" colorscheme mango
" colorscheme zenburn
set number
set relativenumber
set cursorline
set foldmethod=syntax
syntax on
" set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set noshowmode
set clipboard=unnamedplus
set linebreak
set fileencodings=utf-8,windows-1251
set showcmd
set ruler
set scrolloff+=5
set ttyfast

set noswapfile
set undofile
set undolevels=1000
set undoreload=10000
set undodir=~/.vim/undo

set exrc

set smarttab
syntax spell toplevel

set mouse=a
" colorscheme jelleybeans
colorscheme molokai
