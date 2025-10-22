" Basic settings
set nocompatible
syntax enable
set number
set relativenumber
set showcmd
set showmatch       " Show matching brackets
set incsearch       " Incremental search
set hlsearch        " Highlight search results


" Tabs & Indentation
set tabstop=4       " Tabs are 8 characters wide
set shiftwidth=4    " Auto-indent uses 8 characters
set noexpandtab     " Use real tabs, not spaces
set autoindent      " Copy indent from previous line

" Search and navigation
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch

" Bracket completion
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>



" Keep undo history
set undofile
set undodir=~/.vim/undodir	

set laststatus=2    " Always show status line
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]

set wildmenu       " Command line completion
set clipboard=unnamed  " Use system clipboard

nmap ]d :cnext<CR>
nmap [d :cprevious<CR>

" Color scheme
colorscheme habamax
let g:netrw_banner = 0
:set diffopt+=iwhiteall


" Create backup before formatting
"" autocmd BufWritePre *.c execute '!cp % %.' . strftime("%Y%m%d_%H%M%S") . '.bak'
let g:user42 = 'dazzali'
let g:mail42 = 'dazzali@student.42.fr'
