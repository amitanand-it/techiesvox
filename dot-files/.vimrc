filetype plugin on
"runtime macros/matchit.vim

set nocompatible

let mapleader = ","

"The default value of complete option is .,w,b,u,t,i, which means to scan:
" .: the current buffer, w: buffers in other windows , b: other loaded buffers
" u: unloaded buffers,   t: tags,                      i: included files
set complete-=t
set complete-=i

set path+=$PWD/**
set nobackup
set number
set isfname+=:
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showcmd
set wildmenu
set wildmode=list:longest,full
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
set wrap
" set nobackup
" set nowritebackup
" set noswapfile
"set relativenumber
" iskeyword to set a character as a part of key
"set iskeyword+=\:



" plugins sourcing
source ~/.vim/myfiles/vim-abbreviations.vim
source ~/.vim/myfiles/vim-comment-lines.vim
source ~/.vim/myfiles/vim-block-word.vim
"source ~/.vim/myfiles/vim-find-file.vim
source ~/.vim/myfiles/vim-find-file-temp.vim



"nnoremap gf :exe 'find' substitute(expand('<cfile>'), '^/', '', '')<CR>
nnoremap gf :call Find()<cr>
nnoremap <silent> <leader>cc :call CommentLines()<cr>
vnoremap <silent> <leader>cc :call CommentLines()<cr>


inoremap jk <Esc>   
nnoremap j gj
nnoremap k gk

nnoremap <Space> <pagedown>

nnoremap <leader>t :tabnew test.pl<cr>
"nnoremap <leader>tt :tabnew pl<cr>

" nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>:nohlsearch<CR>

nnoremap <leader>/ :noh<cr>
" nnoremap <tab> %
" vnoremap <tab> %

nnoremap <leader>ss :!./stopall && ./startall<cr>
nnoremap <leader>rp :!clear && echo && perl %<cr>
nnoremap <leader>. :set number!<cr>
nnoremap <leader>.r :set relativenumber!<cr>
nnoremap <leader>sm :set syntax=mason<cr>

"commenting commands
vnoremap <leader>cp :s!^!# !<CR>:nohlsearch<CR>
vnoremap <leader>cm :s!^!%# !<CR>:nohlsearch<CR>
vnoremap <leader>cj :s!^!// !<CR>:nohlsearch<CR>
nnoremap <leader>cp :s!^!# !<CR>:nohlsearch<CR>
nnoremap <leader>cm :s!^!%# !<CR>:nohlsearch<CR>
nnoremap <leader>cj :s!^!// !<CR>:nohlsearch<CR>

nnoremap <leader>w :w!<CR> 
"nnoremap <leader>ft vatzf
"nnoremap <leader>fB va{zf
"nnoremap <leader>fb va(zf

nnoremap N Nzz
nnoremap n nzz

" open last command vis as perl line no.
" "===========================================================================================
"
"nnoremap <localleader>tdb :r ~/.vim/skeleton_dbi.pl<cr>
"nnoremap <localleader>tdbix :r ~/.vim/skeleton_dbix.pl<cr>
"
" "===========================================================================================
" 
"====== set paste mode automatically when try to paste anything ==============
" let &t_SI .= "\<Esc>[?2004h"
" let &t_EI .= "\<Esc>[?2004l"
" 
" inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
" 
" function! XTermPasteBegin()
"   set pastetoggle=<Esc>[201~
"   set paste
"   return ""
" endfunction
"=============================================================================


"highlight current line
set cul
hi CursorLine term=none cterm=none ctermbg=195

if has("autocmd")

augroup group_templates
autocmd!
autocmd BufNewFile  *.pl  0r ~/.vim/templates/skeleton.pl
autocmd BufNewFile  *.sh  0r ~/.vim/templates/skeleton.sh
autocmd BufNewFile  *.sql 0r ~/.vim/templates/skeleton.sql
augroup END

augroup group_html
autocmd!
au BufNewFile,BufRead *.html set ft=mason
augroup END

autocmd! bufwritepost .vimrc source ~/.vimrc

endif
