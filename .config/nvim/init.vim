
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                           Modular VIMRC                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set t_Co=256
set guicursor=

if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Setup Python
let g:python3_host_prog='~/anaconda3/envs/nvim/bin/python'
let g:python_host_prog='/usr/bin/python2'

source ~/.config/nvim/plugin.vim
source ~/.config/nvim/general.vim
source ~/.config/nvim/keys.vim
