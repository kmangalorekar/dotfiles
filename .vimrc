" Gruvbox theme and syntax highlighting
syntax on
colorscheme gruvbox
set background=dark

"Highlight while searching
set hlsearch
set showmatch
set incsearch


set path+=**
set wildmenu


"Line numbering
set nu
set relativenumber

"Encoding
set encoding=utf-8

set autoindent


"set foldmethod=indent
set ignorecase
set smartcase

"Remove backups and swap files
set nobackup
set noswapfile


set autoindent
set cursorline


set mouse=a
set clipboard=unnamed

set tabstop=4
set expandtab

set ve+=onemore



let mapleader = " " " map leader to Space
map <leader>h :noh<CR>


"Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


"Remap exit to leader key
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>x :x<CR>
nmap <Leader>a :q!<CR>

map <C-l> <C-W>l<15C-W>_
map <C-h> <C-W>h<15C-W>


nnoremap <leader>n :NERDTreeToggle<CR>

filetype plugin on
set hidden


"Vim Plugs
call plug#begin()

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/preservim/nerdcommenter',
Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()



"CoC functions
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>":
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
