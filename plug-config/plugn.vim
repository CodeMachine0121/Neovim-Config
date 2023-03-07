call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'lazywei/vim-doc-tw'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
call plug#end()

"Automatically install missing plugins on startup
autocmd VimEnter *
  \ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif
