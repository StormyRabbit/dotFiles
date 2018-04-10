set number
set numberwidth=4
set encoding=utf-8
set clipboard=unnamed
let python_highlight_all=1
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set directory=~/.vim/swp//
set smartindent
set hlsearch
set showmatch
set autoindent
set t_Co=256
"set laststatus=2
set colorcolumn=120
set completeopt-=preview
highlight ColorColumn ctermbg=darkgray
set hidden
set splitright
set splitbelow
inoremap /* /** */<ESC>2ha
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" pep8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" NERD TREE
map <C-n> :NERDTreeToggle<CR>

" js html and css iad *.jndentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'dylanaraps/wal.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'dracula/vim'
Plug 'Raimondi/delimitMate'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown'] }
Plug 'adimit/prolog.vim'
Plug 'metakirby5/codi.vim'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

call plug#end()
colorscheme dracula
let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
