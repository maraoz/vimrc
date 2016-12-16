" Vundle setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Chiel92/vim-autoformat'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'
Plugin 'gcmt/breeze.vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'gregsexton/MatchTag'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'esneider/vim-simlight'
Plugin 'leafgarland/typescript-vim'
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'tomlion/vim-solidity'

" formatting
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set number

" NERDTree 
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd vimenter * wincmd p
"map <C-n> :NERDTreeToggle<CR>


"ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

set wildignore+=*/tmp/*,*.so,*.sw[a-z],*.zip,.svn,.git,*.o,*.pyc,*.class,*.dSYM,node_modules,env
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules|_site|shovestore)$'

" js beautify
map <c-f> :Autoformat<CR>

"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


" All of your Vundle Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" golang syntax
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on


" colors
set t_Co=256
colorscheme apprentice

