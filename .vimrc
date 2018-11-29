set nocompatible

syntax enable
filetype plugin on

" Search down into subfolders
" Provide tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

"plugged
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

""" for git merge tool
Plug 'sjl/splice.vim'

" All of your Plugs must be added before the following line
call plug#end()
