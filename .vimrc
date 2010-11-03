set nocompatible
set t_Co=256

call pathogen#helptags()
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
let mapleader=","

set tabstop=4
set shiftwidth=4
set expandtab




set hidden
set nowrap        " don't wrap lines
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile

filetype on
filetype plugin on
filetype indent on

if &t_Co >= 256 || has("gui_running")
   "colorscheme mustang
   colorscheme molokai
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set mouse=a
set pastetoggle=<F2>

nmap ,n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap ,N :NERDTreeClose<CR>

nmap ,b :TlistToggle<CR>

set tags=tags;
autocmd BufEnter ~/sites/oyas/* :setlocal tags+=~/sites/oyas/tags
autocmd BufEnter ~/sites/orangegrove/* :setlocal tags+=~/sites/orangegrove/tags

highlight OverLength ctermbg=red ctermfg=white guibg=#393939
match OverLength /\%81v.\+/

 let g:miniBufExplMapWindowNavVim = 1 
  let g:miniBufExplMapWindowNavArrows = 1 
  let g:miniBufExplMapCTabSwitchBufs = 1 
  let g:miniBufExplModSelTarget = 1 


map <C-c> "+y<CR>

" on save any: trim trailing whitespace
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''
