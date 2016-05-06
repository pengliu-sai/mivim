set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'
Plugin 'shawncplus/phpcomplete.vim'



call vundle#end()            " required
filetype plugin indent on    " required




" BufExplorer
nnoremap ,e :e <C-R>=expand('%:p:h') . '/'<CR>
nmap <C-L> :BufExplorer<CR>

" ctrlp
let g:ctrlp_map = '<Leader>;'
let g:ctrlp_match_path_mode = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" vim-session
let g:session_autosave = 'yes'
let g:session_autoload = 'no'

" Color
syntax enable
let g:solarized_termcolors=256
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized


" Basic
let mapleader = ";"
set encoding=utf-8
set fileencodings=utf-8
set hlsearch
set incsearch
set sw=4 ts=4 et

nmap <Leader>l :setlocal number!<CR>
nmap <Leader>o :set paste!<CR>
nmap <Leader>q :nohlsearch<CR>
