set rnu
set encoding=UTF-8

" Load the colorscheme
colorscheme  PaperColor
set background=dark

" [Edit]
syntax on
syntax enable
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==


" [Move]
nmap hh ^
nmap ll $
map <C-right> w
map <C-left> b

" copy paste
behave mswin
set clipboard=unnamedplus
smap <Del> <C-g>"_d
smap <C-c> <C-g>y
smap <C-x> <C-g>x
imap <C-v> <Esc>pi
smap <C-v> <C-g>p
smap <Tab> <C-g>1> 
smap <S-Tab> <C-g>1<
set clipboard+=unnamedplus


" select suggestion
" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
set cmdheight=2

" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" [Insert]
nmap z, A,<Esc>
imap z, <Esc>A,
nmap z; A;<Esc>
imap z; <Esc>A;
nmap z. A.<Esc>
imap z. <Esc>A.
vmap S :action SurroundWith<CR>
map zrt <Esc>hhireturn <Esc>z;
imap zrt <Esc>hhireturn <Esc>z;
