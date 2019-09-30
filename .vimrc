set nocompatible
filetype on
filetype plugin on
filetype indent on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
call vundle#end()
map <C-\> <ESC>:NERDTree<CR>
let NERDTreeShowHidden=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor$',
    \ 'file': '\v\.(exe|so|dll)$'
\ }
color jellybeans
nmap <F8> :SrcExplToggle<CR>
nmap <C-H> <C-W>h       
nmap <C-J> <C-W>j       
nmap <C-K> <C-W>k       
nmap <C-L> <C-W>l       
nmap <F2> <C-]>
nmap <F3> <C-t>
set tags=./tags,tags
set tags+=../tags
set tags+=../../tags
set tags+=../../../tags
set nu
set title
set showmatch
set ruler
if has("syntax")
 syntax on
endif
set t_Co=256
set autoindent
set cindent
set smartindent
set tabstop=8
set expandtab
set shiftwidth=4
set mouse-=a
set encoding=utf-8
set termencoding=utf-8
set cursorline
set laststatus=2 
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set ignorecase
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
augroup markdown
    autocmd!
    autocmd BufRead,BufNew *.md setf markdown
augroup END
