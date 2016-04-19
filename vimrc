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

" Mod8 (spacegray)
Plugin 'easysid/mod8.vim'

" Molokai
Plugin 'tomasr/molokai'

" Indent guide
Plugin 'Yggdroot/indentLine'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" Stylus
Plugin 'wavded/vim-stylus'


"""""""""""
" Editing "
"""""""""""

" Edit indent block
" ai – the current indentation level and the line above
" ii – the current indentation level excluding the line above
Plugin 'michaeljsmith/vim-indent-object'

" Commentout
Plugin 'scrooloose/nerdcommenter'

" Fuzzy finder
Plugin 'vim-scripts/FuzzyFinder'

" LightLine
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

"server auto complete < no dependent files
Plugin 'ervandew/supertab'

" Plugin YouComplete me
" Needs dependent files
" sudo apt-get install build-essential cmake
"Plugin 'Valloric/YouCompleteMe'

" Snipmate - edit and add in ~/.vim/snippets/<language>.snippet
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'


""""""""""""""""""""
" Navigation Tools "
""""""""""""""""""""

" plugin to control p
Plugin 'ctrlpvim/ctrlp.vim'

" Tagbar
" You need to install exuberant c tags
"     brew install ctags (mac)
"     sudo apt-get install exuberant-ctags (ubuntu)
"Plugin 'majutsushi/tagbar'

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

"Searching
"set smartcase
"/copyright      " Case insensitive
"/Copyright      " Case sensitive
"/copyright\C    " Case sensitive
"/Copyright\c    " Case insensitive

"UX config

"Enable delete if local
let g:remoteSession = ($USER == "ubuntu")
if g:remoteSession
    let g:nothing = 'nothing'
else
    set backspace=2
endif


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

"Smarter searching
":set smartcase
"/copyright      " Case insensitive
"/Copyright      " Case sensitive
"/copyright\C    " Case sensitive
"/Copyright\c    " Case insensitive

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

""""""""""""""""
" Key Mappings "
""""""""""""""""

" I don't like <C-w> in insert mode so i remapped it
inoremap <silent> <C-w> <ESC><C-w>
"inoremap <C-e> <Esc>A
"inoremap <C-a> <Esc>^i

"Paste toggle
set pastetoggle=<F2>

" Reselecting Pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Buffers 
nnoremap <F5> :buffers<CR>:buffer<Space>

" Togggle tagbar
"nnoremap <F6> :TagbarToggle<CR>

" Indent 
nnoremap <F7> :IndentLinesToggle<CR>

" Disabled by default
let g:indentLine_enabled = 0  
" Thing to speed up vim
let g:indentLine_faster = 1

" Toggle foldmethod on
nnoremap <F8> :setlocal foldmethod=indent<CR>:setlocal foldignore= <CR>

" for inserting new lines (like <C-o>)
nnoremap <silent> <leader><CR> i<CR><ESC>

" Make \s also equal save
nnoremap <Leader>s :update<CR>

" f10 will strip out whitespace
nnoremap <silent> <F10> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" for syntastic use f12
let g:syntastic_mode_map = { 'mode': 'passive' }
nnoremap <F12> :update<CR>:SyntasticCheck<CR>  " Toggles Syntax check

" My custom scratch file-  used for notes and for launching common files
" quickly
nnoremap <silent> <c-l> :tabnew asdf.txt<CR>
nnoremap <silent> <c-k> :vsp asdf.txt<CR>

" For toggling between tabs
nnoremap <silent> <S-right> :tabn<CR>
nnoremap <silent> <S-left> :tabp<CR>
"""""""""""""""""""""""""""
" Modifications for CTRLP "
"""""""""""""""""""""""""""

"https://robots.thoughtbot.com/faster-grepping-in-vim
"Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

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
  \ 'dir':  'amazon',
  \ 'file': '\.pyc$'
  \ }
if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
endif
set wildignore+=*/tmp/*,*/amazon/**,"**/amazon/*,*/cc/*,*.so,*.swp,*.zip,*.pyc

"For Airline
set laststatus=2

"Ignore Errors
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = '--max-line-length=100 --ignore=W391'

"Fugitive settings
set diffopt+=vertical

"Tagbar Ignore
autocmd BufNewFile,BufReadPost app/userdata/models.py let b:tagbar_ignore = 1 
