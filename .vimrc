
execute pathogen#infect()
filetype plugin indent off
syntax on

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
set showtabline=2
set tabpagemax=100  " I love tabs.
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
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>w :mksession<CR>
nnoremap <leader>W :mksession!<CR>
vnoremap <leader>y "+y
nmap <leader>s :set spell!<CR>
nmap <leader>p :set paste!<CR>
nmap <leader>1 :! pdflatex main.tex<CR>
nmap <leader>2 :! bibtex main.aux<CR>
nmap <leader>0 :! open main.pdf<CR>
" }}}

" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]
" }}}

" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
" }}}

" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" airline {{{
" set laststatus=2
" let g:airline_theme = 'zenburn'
" let g:airline_left_sep = ''
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_sep = ''
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

" Command-T {{{
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
let g:CommandTCancelMap = '<Esc>'
" }}}

