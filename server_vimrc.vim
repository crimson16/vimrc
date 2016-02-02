" for Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


"""""""""""
" Styling "
"""""""""""

" Solarized
Plugin 'altercation/vim-colors-solarized'

" Indent guide
Plugin 'Yggdroot/indentLine'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" Stylus
Plugin 'wavded/vim-stylus'


"""""""""""
" Editing "
"""""""""""

" Commentout
Plugin 'scrooloose/nerdcommenter'

" Fuzzy finder
Plugin 'vim-scripts/FuzzyFinder'

" LightLine
"Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Surround
Plugin 'tpope/vim-surround'

" Emmet
Plugin 'mattn/emmet-vim'

" Syntax highighting
Plugin 'scrooloose/syntastic'

" Git tools
Plugin 'tpope/vim-fugitive'


""""""""""""""""""""
" Navigation Tools "
""""""""""""""""""""

"server auto complete
Plugin 'ervandew/supertab'

" plugin to control p
Plugin 'kien/ctrlp.vim'

" Tagbar
" You need to install exuberant c tags
"     brew install ctags (mac)
"     sudo apt-get install exuberant-ctags (ubuntu)
Plugin 'majutsushi/tagbar'

"Coffeescript tabbar
" install gem install CoffeeTags
"Plugin 'lukaszkorecki/CoffeeTags'

"File Insert
Plugin 'rking/ag.vim'

"NERD TREE
Plugin 'scrooloose/nerdtree'


""""""""""""""""""
" Misc Things... "
""""""""""""""""""

" Vim Shell
Plugin 'Shougo/vimshell.vim'

"plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}


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
"colorscheme monokai
set background=dark

"set t_Co=256
let g:solarized_termcolors=16
colorscheme solarized

"if !has('gui_running')
    "" Compatibility for Terminal
    "let g:solarized_termtrans=1
   
    "if (&t_Co >= 256 || $TERM == 'xterm-256color')
       "" Do nothing, it handles itself.
    "else
        "" Make Solarized use 16 colors for Terminal support
        "let g:solarized_termcolors=256
    "endif
"endif

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
nnoremap <leader><space> :nohlsearch<CR>i

""""""""""""""""
" Key Mappings "
""""""""""""""""

"Paste toggle
set pastetoggle=<F2>

" Buffers 
" go fwd, back and list buffers 
nnoremap <F3> :bp<CR>
nnoremap <F4> :bn<CR>
nnoremap <F5> :buffers<CR>

" Togggle tagbar
nmap <F6> :TagbarToggle<CR>

" f7 will strip out whitespace
nnoremap <silent> <F7> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" for syntastic use f8
let g:syntastic_mode_map = { 'mode': 'passive' }
nmap <F8> :SyntasticCheck<CR>  " Toggles Syntax check

" Make f12 and \s also equal save
noremap <Leader>s :update<CR>
noremap <F12> :update<CR>


" make spaces = '/' for ctrl p
let g:ctrlp_abbrev = {
    \ 'gmode': 't',
    \ 'abbrevs': [
        \ {
        \ 'pattern': ' ',
        \ 'expanded': '/',
        \ 'mode': 'pfrz',
        \ },
        \ ]
    \ }

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$|log\|tmp$\|cc$',
  \ 'file': '\.pyc$'
  \ }


set laststatus=2

"Ignore Errors
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = '--max-line-length=100'

