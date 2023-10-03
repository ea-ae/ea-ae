" Leader

" map <Space> <Nop>

let mapleader = " "

:set scrolloff=999
:set number
:set relativenumber

" Navigation

map <Leader> <Plug>(easymotion-prefix)
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

nnoremap <S-h> :bprevious<CR>
nnoremap <S-l> :bnext<CR>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Move lines

nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

" Saving

nnoremap <leader><S-w> :w<CR>
nnoremap <leader><S-q> :q<CR>
nnoremap <leader><S-e> :wq<CR>

" Yoinkless

nnoremap <leader>d "_d
xnoremap <leader>d "_d
nnoremap <leader>p "_dP
xnoremap <leader>p "_dP

" Search

:set incsearch
:set ignorecase
:set smartcase

" Regex very magic mode

nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %smagic/
cnoremap \>s/ \>smagic/
nnoremap :g/ :g/\v
nnoremap :g// :g//
