set number
set numberwidth=4
set encoding=utf-8
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
inoremap /* /** */<ESC>2ha

let g:ycm_server_python_interpreter = '/usr/bin/python2'

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
call plug#end()
colorscheme dracula
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
