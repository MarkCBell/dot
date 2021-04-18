
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" UI Layout {{{
set number              " show line numbers
set nocursorline        " highlight current line
set list
set listchars=tab:>-,trail:~
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
" }}}

" Spaces, tabs and indentation {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
filetype indent on
" filetype plugin on
set autoindent
vnoremap < <gv
vnoremap > >gv
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
" }}}

" Tabbing {{{
set hidden
set showtabline=2
set tabpagemax=100  " I love tabs.
nnoremap ( :bn<Return>
nnoremap ) :bp<Return>
" }}}

" Spelling {{{
setlocal spell spelllang=en_gb
set nospell
" }}}

" Searching {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}

" Leader shortcuts {{{
let mapleader = " "
nnoremap <leader>w :mksession<CR>
nnoremap <leader>W :mksession!<CR>
nnoremap <leader>d oimport pdb; pdb.set_trace()<ESC>
nnoremap <leader>/ :noh<CR>
nnoremap <leader>b :ls<CR>:b<Space>
vnoremap <leader>y "+y
nmap <leader>s :set spell!<CR>
nmap <leader>p :set paste!<CR>
nmap <leader>1 :! pdflatex main.tex<CR>
nmap <leader>2 :! bibtex main.aux<CR>
nmap <leader>0 :! xdg-open main.pdf<CR>
" }}}

" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" ... and this is the only way to do that
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]

" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
" }}}

" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" Misc {{{
set backspace=indent,eol,start
nnoremap Y y$
nmap <Return> o<Esc>

inoremap <Return> <Return>x<Backspace>
nnoremap o ox<Backspace>
nnoremap O Ox<Backspace>

set clipboard=unnamed
" }}}
