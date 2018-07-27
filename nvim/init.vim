"GENERAL

"disable compatibility with vi
set nocompatible

"backup is really just an annoyance since we're using git anyway
set nobackup
set nowb
set noswapfile

"turn on syntax highlighting
syntax on

"show title
set title

"TABS
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

"COLOURS
colorscheme dracula
set hlsearch
set ignorecase
set smartcase
set incsearch

"LAYOUT
set list " display tabs and line endings
set listchars=trail:-,tab:\ \  " change the way tabs and line ends are displayed
set number
set backspace=2 "allow backspace to delete characters
set hidden "allow multiple files to opened in different buffers, 'hidden' in the background
set wildmenu "Enable enhanced command-line completion
set autochdir "change the working directory to the directory in which the file being opened lives
set history=1000 "remember 1000 commands/search strings
set sessionoptions-=options "when a session is saved, do not store vimrc options
set autoread "reread file if an external program has changed a file
autocmd Filetype c setlocal textwidth=132  "max 132 characters in a line for c files
set guicursor=

filetype on
filetype plugin indent on

"TAGS
set tags=tags;

"LEADER KEY SHORTCUTS
let mapleader = "\<Space>"
"leader + w to save a file
nnoremap <Leader>w :w<CR>
"various shortcuts to copy/paste from system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
"leader + l to clear highlighting
nnoremap <leader>l :noh <enter>

call plug#begin('~/.local/share/nvim/plugged')
	" colours
	Plug 'dracula/vim', { 'as': 'dracula' }

	" airline plugin
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" markdown
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'

	"Git plugins
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'gregsexton/gitv', {'on': ['Gitv']}
call plug#end()

" Airline settings
"let g:airline_section_b="" "dont show git hunks
"let g:airline_section_x="" "dont show filetype
"let g:airline_section_y="" "dont show file encoding
"let g:airline_section_z="" "dont show cursor pos info
let g:airline#extensions#tabline#enabled = 1 "enable buffer line at the top
let g:airline#extensions#tabline#buffer_min_count = 2 "show buffer line only when at least 2 buffers are open
let g:airline#extensions#tabline#buffer_idx_mode = 1 "show numbers in buffer line
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab
set noshowmode

" GitGutter settings
let g:gitgutter_max_signs = 5000 "max diff of 5000 lines
