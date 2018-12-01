" GENERAL

" disable compatibility with vi
set nocompatible

" backup is really just an annoyance since we're using git anyway
set nobackup
set nowb
set noswapfile

" turn on syntax highlighting
syntax on

" filetype
filetype on
filetype plugin indent on

" show title
set title

" tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent

" color
colorscheme dracula
set hlsearch
set ignorecase
set smartcase
set incsearch

" layout
set list " display tabs and line endings
set listchars=trail:-,tab:-- " change the way tabs and line ends are displayed
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

" tags
set tags=tags;


" SHORTCUTS
"
let mapleader = "\<Space>"
" leader + l to clear highlighting
nnoremap <leader>l :noh <enter>
" leader + w to save a file
nnoremap <Leader>w :w<enter>
" close a buffer without closing the window
nnoremap <leader>q :bp<cr>:bd #<cr>
" close all buffers
nnoremap <leader>Q :qa<cr>
" navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" PLUGINS

call plug#begin('~/.local/share/nvim/plugged')
	" colours
	Plug 'dracula/vim', { 'as': 'dracula' }

	" airline plugin
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" file explorer
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

	" markdown
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'

	" git plugins
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'gregsexton/gitv', {'on': ['Gitv']}

	" easy motion
	Plug 'easymotion/vim-easymotion'

	" deoplete
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
	if has('nvim')
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
		Plug 'Shougo/deoplete.nvim'
	endif
	Plug 'zchee/deoplete-jedi'
call plug#end()

" NerdTree settings
nnoremap <Leader>F :NERDTreeToggle <enter>
let NERDTreeWinSize = 35

" deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#disable_auto_complete = 1
inoremap <expr> <leader><Tab> deoplete#mappings#manual_complete()
inoremap <expr> <Tab>  pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab>  pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Airline settings
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

