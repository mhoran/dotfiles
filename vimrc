set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'mileszs/ack.vim'
Plugin 'ledger/vim-ledger'
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required

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
set spelllang=en_us
set wildmenu
set wildmode=list:longest,full
set pastetoggle=<F2>

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

let mapleader = ","
let maplocalleader = ";"

let g:ctrlp_map = '<leader>f'

" https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" File tree browser
map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

" Automatically delete Fugitive buffers that are no longer being used.
" Otherwise, they tend to fill up the buffer list.
"
" Credit to Drew Neil of Vimcasts:
" http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/

autocmd BufReadPost fugitive://* set bufhidden=delete

autocmd QuickFixCmdPost *grep* cwindow

" Start editing where you left off (thanks Sean)
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

ab <!D <!DOCTYPE html>

set cinoptions=:0,t0,+4,(4
au BufNewFile,BufReadPost *.c setl noet sw=0 ts=8
au BufNewFile,BufReadPost *.h setl noet sw=0 ts=8
autocmd FileType ruby,eruby set noballooneval
autocmd FileType mail set spell

" Add format option 'w' to add trailing white space, indicating that paragraph
" continues on next line. This is to be used with mutt's 'text_flowed' option.
augroup mail_trailing_whitespace " {
    autocmd!
    autocmd FileType mail setlocal formatoptions+=w
augroup END " }
