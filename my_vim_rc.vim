" for Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

"Solarized
Plugin 'altercation/vim-colors-solarized'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

"server auto complete
Plugin 'ervandew/supertab'

"Commentout
Plugin 'scrooloose/nerdcommenter'

"File finder
Plugin 'ctrlpvim/ctrlp.vim'

"File Insert
Plugin 'rking/ag.vim'

"NERD TREE
Plugin 'scrooloose/nerdtree'

"Fuzzy finder
Plugin 'vim-scripts/FuzzyFinder'

"LightLine
"Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-airline'

"Surround
Plugin 'tpope/vim-surround'

"Emmet
Plugin 'mattn/emmet-vim'

"Syntax Highlighting
Plugin 'scrooloose/syntastic'

"Indent guide
Plugin 'Yggdroot/indentLine'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" Stylus
Plugin 'wavded/vim-stylus'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"Colors
syntax enable
colorscheme monokai
"set background=dark
"colorscheme solarized


"Spaces and Tabs
set tabstop=4 		" number of visual spaces per TAB
set softtabstop=4  	" number of spaces in tab when editing
set shiftwidth=4    " number of 
set expandtab       	" tabs are spaces (tab button = spaces)

"UI cofigs
set number 		" show line nums
set showcmd 		" show last entered command
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch 		" show matching ()

" Search

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight

"Vim will keep highlighted matches from searches until you
"either run a new one or manually stop highlighting the old 
"search with :nohlsearch. I find myself running this all
" the time so I've mapped it to ,<space>.
"
nnoremap <leader><space> :nohlsearch<CR>
"

set laststatus=2

"Ignore Errors
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = '--max-line-length=100'
