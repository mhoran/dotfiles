set autoindent
set autoread
set autowrite
set background=dark
set backspace=2
set copyindent
set expandtab
set hlsearch
set ignorecase
set incsearch
set infercase
set modeline
set ruler
set shiftround
set shiftwidth=2
set shortmess+=I
set showmatch
set smartcase
set softtabstop=2
set spell spelllang=en_us
set wildmenu
set wildmode=list:longest,full

" Syntax highlighting
set background=dark
highlight Normal guibg=Black guifg=White
syntax on
filetype plugin indent on

" Tab completion
imap <Tab> 
" Turn on nice formatting
map <F10> :set fo+=crotqaw
" Quickly invert the default spelling option
map <F12> :set nospell
" Open a file in the current file's path
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
" Open a file in a new tab from the current file's path
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Start editing where you left off (thanks Sean)
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

ab <!D <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">