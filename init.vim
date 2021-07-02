  " auto-install vim-plug
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
     silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
    endif
    
   call plug#begin('~/.config/nvim/autoload/plugged')
 
       " Better Syntax Support
       Plug 'sheerun/vim-polyglot'
       " File Explorer
       Plug 'scrooloose/NERDTree'
       " Auto pairs for '(' '[' '{'
       Plug 'jiangmiao/auto-pairs'
      " vim-one color theme
       Plug 'rakr/vim-one'
      " allows git commands in vim session
       Plug 'tpope/vim-fugitive'
      " minmal status bar
       Plug 'itchyny/lightline.vim'
      " shows git changes in gutter
       Plug 'airblade/vim-gitgutter'
     " send commands to REPL
       Plug 'KKPMW/vim-sendtowindow'
     " R completion [dep]: ncm2, Nvim-R
       Plug 'gaalcaras/ncm-R' 
     " required for ncm-R
       Plug 'jalvesaq/Nvim-R'
     " hotkeys for chunks of code
      Plug 'roxma/nvim-yarp'
     " add nord color
      Plug 'arcticicestudio/nord-vim'
  call plug#end()
  
    colorscheme nord
  
   "General Settings                        
     set number                      " set line numbers
     set updatetime=100              " set update time for gitgutter update
                                                                                                
