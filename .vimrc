filetype plugin indent on
syntax on
set number
vnoremap <C-c> :w !pbcopy<CR><CR> 
noremap <C-v> :r !pbpaste<CR><CR>

set autoindent
" Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler

" ============== Shift->Tab============
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Set 15 lines to the cursor - when moving vertically
set so=15

set linebreak	" Wrap lines at convenient point
highlight Comment ctermfg=green	" Comment color green
" ================ Visual =================
set wildmenu	" Turn on the Wild menu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

set hlsearch	" Highlight search results

set incsearch	" Highlight while searching

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Always show the status line
set laststatus=2
