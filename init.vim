set encoding=UTF-8
set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

set updatetime=50

set shortmess+=c
set colorcolumn=90

" Plugins
call plug#begin('~/.neovim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' | 
            \ Plug 'ryanoasis/vim-devicons' |
            \ Plug 'PhilRunninger/nerdtree-visual-selection'

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'scrooloose/nerdcommenter'
call plug#end()

" Colorscheme from gruvbox
colorscheme gruvbox

highlight Normal guibg=none
" Auto start COC
let g:coq_settings = { 'auto_start': v:true }
" Leader
let mapleader=" "

" Telescope
nnoremap <leader>fs <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope git_files<cr>
nnoremap <leader>ss <cmd>Telescope live_grep<cr>
nnoremap <leader>st <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Custom bindings
nnoremap <leader><cr> <cmd>:so %<cr>
nnoremap <leader>ww <cmd>:w<cr>
nnoremap <leader>wq <cmd>:wq<cr>
nnoremap <leader>qq <cmd>:q<cr>

" Split navigations
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-k> <C-w>k
map <C-j> <C-w>j

" Tab navigations
map <leader>tt :tabnew file <Cr>
nnoremap <M-h> :tabprevious<CR>
nnoremap <M-l> :tabnext<CR>

" moves tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

noremap <leader>0 :tablast<cr>
nnoremap <leader>x :tabclose<Cr>
map <leader>tm :tabmove<Cr>

" resizing splits
map <s-LEFT> :vertical resize +5 <Cr>
map <s-RIGHT> :vertical resize -5 <Cr>
map <s-UP> :resize +5 <Cr>
map <s-DOWN> :resize -5 <Cr>

" Nerd commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
