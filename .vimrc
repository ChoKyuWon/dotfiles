set nocompatible
execute pathogen#infect()
filetype on
filetype plugin on
filetype indent on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
call vundle#end()

"YouCompleteMe Setting
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['', '']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol = '>*'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion=2

"nnoremap g :YcmCompleter GoTo
"nnoremap d :YcmCompleter GoToDeclaration
"nnoremap t :YcmCompleter GetType
"nnoremap p :YcmCompleter GetParent 

set background=dark
colorscheme gruvbox

"NerdTree Setting
map <F9> <ESC>:NERDTreeToggle<CR>
autocmd VimEnter * silent NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
nmap <C-Up> <C-W>k
nmap <C-Down> <C-W>j
nmap <C-Right> <C-W>l
nmap <C-Left> <C-W>h
nmap <C-J> <C-W>j       
nmap <C-K> <C-W>k       
nmap <C-L> <C-W>l       
nmap <C-H> <C-W>h       

"ctrlp setting:ignore some file and directory
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor$',
    \ 'file': '\v\.(exe|so|dll)$'
\ }


"ctags Setting
map <F2> <C-]>
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
