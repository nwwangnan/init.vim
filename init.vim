call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'rakr/vim-one'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'KKPMW/vim-sendtowindow'
Plug 'gaalcaras/ncm-R' 
Plug 'jalvesaq/Nvim-R'
Plug 'roxma/nvim-yarp'
Plug 'arcticicestudio/nord-vim'
call plug#end()
  
colorscheme nord
set termguicolors                " fg and bg highlighting requires compatible terminal colors

" General Settings
set number                      " set line numbers
set updatetime=100              " set update time for gitgutter update
set noswapfile                  " no swap
set clipboard=unnamedplus       " Copy/paste between vim and other programs. '"+y' then middlemouse
" tabs and spaces
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Uses shiftwidth and tabstap to insert blanks when <Tab>
set shiftwidth=2                " One tab == four spaces.
set tabstop=2                   " One tab == four spaces.<Paste>
" remap
:imap ii <Esc>
" python alias (,p runs python on script. ,t times python script)
nmap ,p :w<CR>:!python3 %<CR>
nmap ,t :w<CR>:!time python3 %<CR>
" SQLite should use SQL highlights. See :help ft-sql for more info
autocmd BufNewFile,BufRead *.sqlite set syntax=sql

" Window Splits
set splitbelow splitright
" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>
" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K
" Start terminals for R and Python sessions '\tr' or '\tp'
map <Leader>tr :new term://bash<CR>iR<CR><C-\><C-n><C-w>k
map <Leader>tp :new term://bash<CR>ipython3<CR><C-\><C-n><C-w>k
