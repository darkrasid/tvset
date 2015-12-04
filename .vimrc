set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')

  " let Vundle manage Vundle, required
  Plugin 'gmarik/Vundle.vim'

  " The following are examples of different formats supported.
  " Keep Plugin commands between vundle#begin/end.
  " plugin on GitHub repo
  Plugin 'tpope/vim-fugitive'
  " plugin from http://vim-scripts.org/vim/scripts.html
  Plugin 'L9'
  " Git plugin not hosted on GitHub
  Plugin 'Command-T'
  " git repos on your local machine (i.e. when working on your own plugin)
  
  " The sparkup vim script is in a subdirectory of this repo called vim.
  " Pass the path to set the runtimepath properly.
  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'flazz/vim-colorschemes'
  Plugin 'godlygeek/tabular'
  Plugin 'tpope/vim-surround'
  Plugin 'tomtom/tcomment_vim'
  Plugin 'moll/vim-node'

  " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required
  " To ignore plugin indent changes, instead use:
  "filetype plugin on
  "
  " Brief help
  " :PluginList       - lists configured plugins
  " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
  " :PluginSearch foo - searches for foo; append `!` to refresh local cache
  " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
  "
  " see :h vundle for more details or wiki for FAQ
  " Put your non-Plugin stuff after this line



set number            
set ai               
set si               
set cindent          
set shiftwidth=2     
set tabstop=2        
set ignorecase      
set hlsearch         
set expandtab       
set background=dark  
set nocompatible   
set fileencodings=utf-8,euc-kr 
set bs=indent,eol,start  
set history=1000    
set ruler           
set nobackup      
set title         
set showmatch    
set nowrap       
set wmnu         


nnoremap <F9> V:w !bash<CR>
vnoremap <F10> :w !bash<CR>

autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif

syntax on        
colorscheme PaperColor
