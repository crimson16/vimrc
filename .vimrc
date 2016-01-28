"For Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo


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
Plugin 'bling/vim-airline'

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
Plugin 'lukaszkorecki/CoffeeTags'

"File Insert
Plugin 'rking/ag.vim'

"NERD TREE
Plugin 'scrooloose/nerdtree'


""""""""""""""""""
" Misc Things... "
""""""""""""""""""

"plugin from http://vim-scripts.org/vim/scripts.html
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

" To ssh to server 
" vim scp://qnew//home/ubuntu/quorum-ty2/ 


"Colors
syntax enable
"colorscheme monokai

"Solarized background
set background=dark
set t_Co=256  " For Solarized
let g:solarized_termcolors=16  " For solarized
colorscheme solarized



"Spaces and Tabs
set tabstop=4 		" number of visual spaces per TAB
set softtabstop=4  	" number of spaces in tab when editing
set shiftwidth=4
set expandtab       	" tabs are spaces (tab button = spaces)

"UI cofigs
set number 		" show line nums
set showcmd 		" show last entered command
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch 		" show matching ()

"Search

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight

"Vim will keep highlighted matches from searches until you
"either run a new one or manually stop highlighting the old 
"search with :nohlsearch. I find myself running this all
" the time so I've mapped it to ,<space>.

nnoremap <leader><space> :nohlsearch<CR>
nmap <F6> :TagbarToggle<CR>

"merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"


"execute ":source " . "/Users/tyrocca/.opam/system/share/vim/syntax/ocp-indent.vim"

"installing ocp indent for ocaml
"set rtp+=</Users/tyrocca/.vim/ocp-indent-vim>
"
au BufEnter *.ml setf ocaml
au BufEnter *.mli setf ocaml
au FileType ocaml call FT_ocaml()
function FT_ocaml()
    set textwidth=80
    set colorcolumn=80
    set shiftwidth=2
    set tabstop=2
    " ocp-indent with ocp-indent-vim
    let opamshare=system("opam config var share | tr -d '\n'")
    execute "autocmd FileType ocaml source".opamshare."/vim/syntax/ocp-indent.vim"
    filetype indent on
    filetype plugin indent on
endfunction

set rtp+=</Users/tyrocca/.vim/ocp-indent-vim>

