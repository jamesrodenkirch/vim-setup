" vim settings
" maintained by James Rodenkirch
" https://github.com/jamesrodenkirch/vim-setup

" ------------------------------------------------->>  general settings  <<-----
set nocompatible

" allow swapping buffers without saving
set hidden

" don't wrap lines
set nowrap

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" always set autoindenting on
set autoindent

" copy the previous indentation on autoindenting
set copyindent

" always show line numbers
set number

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" set show matching parenthesis
set showmatch

" ignore case when searching
set ignorecase

" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase

" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" highlight search terms
set hlsearch

" show search matches as you type
set incsearch

" increase history and undo
set history=1000
set undolevels=1000

" change the terminal's title
set title

" don't beep
set visualbell
set noerrorbells

" no backup files
set nobackup

" no swap files
set noswapfile

" set keyboard shortcut leader
let mapleader=","

" file type detection
filetype on

" file type detection
filetype plugin on

" file type detection for indentation
filetype indent on

" visually mark long lines

highlight OverLength ctermbg=red ctermfg=white guibg=#393939
match OverLength /\%81v.\+/

" enable mouse
set mouse=a

" trim whitespace on save
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''

" turn on spell check
:set spell



" ----------------------------------------------------->>  tab settings  <<-----
" number of columns per tab
set tabstop=4

" number of columns per indent
set shiftwidth=4

" use spaces instead of tabs
set expandtab

" show tab characters if used
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.



" ---------------------------------------->>  color settings and scheme  <<-----
" force 256 colors
set t_Co=256

" color scheme
colorscheme molokai

" allow syntax highlighting
syntax on



" ----------------------------------------------->>  keyboard shortcuts  <<-----
" quick vimrc edit
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" quick vimrc reload
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" show/hide nerd tree
nmap ,n :NERDTreeToggle<CR>

" show/hide file overview
nmap ,b :TlistToggle<CR>

" toggle paste mode
set pastetoggle=,p

" toggle mouse interaction
nnoremap ,m :call ToggleMouse()<CR>
function! ToggleMouse()
  if &mouse == 'a'
    set mouse=
    echo "Mouse is for TERMINAL"
  else
    set mouse=a
    echo "Mouse is for VIM"
  endif
endfunction

" toggle spell check
imap <Leader>s <C-o>:setlocal spell! spelllang=en_gb<CR>
nmap <Leader>s :setlocal spell! spelllang=en_gb<CR>


" ----------------------------------------------->>  miniBufExpl plugin  <<-----
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1



" ----------------------------------------------------->>  ctags plugin  <<-----
" set tags dir name
set tags=tags;
