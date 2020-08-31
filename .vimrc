syntax on 

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
set relativenumber
set colorcolumn=80
" Set split separator to Unicode box drawing character
set encoding=utf8
set fillchars=vert:│
let g:airline_powerline_fonts = 1

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
 
Plug 'maxmellon/vim-jsx-pretty'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yuezk/vim-js'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}  
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
colorscheme gruvbox
set background=dark
autocmd vimenter * NERDTree
map <C-e> :wqa <CR>
map <C-n> :NERDTreeToggle<CR>
map <C-f>:w <CR> 
map <C-q>:wq <CR> 
map <C-s> :source ~/.vimrc<CR>
:imap <C-j> <Esc>
:nmap <Space> i
inoremap {      {}<Left>
inoremap <      <><Left>
inoremap (      ()<Left>
inoremap "      ""<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap psvm<CR>  public static void main(String[] args){<CR>}<Esc>O   
inoremap {{     {
inoremap ((     (
inoremap <<     <
inoremap {}     {}
inoremap ""     ""
inoremap ()     ()
inoremap <>     <>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
