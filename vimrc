if has('vim_starting')
   set nocompatible               " Be iMproved

   if has("gui_win32")
       " g:gvim_rtp should be set by gvimrc
       if exists('g:gvim_rtp') && isdirectory(fnamemodify(g:gvim_rtp, ':p'))
           let s:rtp = g:gvim_rtp
       else
           echoerr "You must set runtimepath (for plugin bundling) manually."
       finish
       endif
   else
       let s:rtp = "~/.vim"
   endif


   let neobundle_readme =  fnamemodify(s:rtp, ':p') . "bundle/neobundle.vim/README.md"
	if !filereadable(neobundle_readme)
	  echo "Installing Neobundle.."
	  echo ""
	  execute "silent !mkdir -p " . fnamemodify(s:rtp, ':p') . "bundle"
	  execute "silent !git clone https://github.com/Shougo/neobundle.vim.git " . fnamemodify(s:rtp, ':p') . "bundle/neobundle.vim"
	endif

   execute "set runtimepath+=" . fnamemodify(s:rtp, ':p') . "bundle/neobundle.vim"

endif

call neobundle#rc(fnamemodify(s:rtp, ':p') . "bundle/")

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles here:
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'golangtw/gocode.vim'
NeoBundle 'golangtw/go.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'taglist.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle "myusuf3/numbers.vim"



" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

colorscheme ir_black
set t_Co=256
set number
syntax on		" syntax highlight
set hlsearch		" search highlighting


"
"    Numbers
"

let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m', 'nerdtree']
