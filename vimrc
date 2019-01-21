set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
"Themes
Plugin 'dracula/vim'
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
"
"
" Set colorscheme
:colorscheme dracula

"Set startup config
autocmd vimenter * NERDTree
set nu
set cursorline
filetype plugin on
syntax enable
set noswapfile

:set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
:set list
let mapleader="\\"

"===============================================
"                    Airline
"===============================================
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1

"===============================================
"                    NerdTree
"===============================================
let NERDTreeShowHidden=1

"===============================================
"                    Easymotion
"===============================================
nmap <leader><leader><space> <Plug>(easymotion-jumptoanywhere)
nmap <leader><leader>sn <Plug>(easymotion-sn)

"===============================================
"                    Ctrlp
"===============================================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " lol
let g:ctrlp_show_hidden=1

"Mapping global
nnoremap <leader>vsc :vsplit $MYVIMRC<CR>
nnoremap <leader>bc :bp \| bw#<CR>

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>

"mapping save file
inoremap <c-s> <esc>:w<CR>
noremap  <c-s> :w<CR>
