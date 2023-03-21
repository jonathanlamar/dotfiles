set scrolloff=3
set wildmenu
set hidden
set nowrap
set number
set splitbelow
set splitright
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set ignorecase
set smartcase
"set wildmode="list:longest"
set foldenable
set foldlevelstart=100
set foldnestmax=5
set autoindent
set foldmethod=indent
colorscheme desert
syntax enable
filetype plugin indent on

" Do not autocomment new lines
autocmd BufEnter * set fo-=c fo-=r fo-=o

" Move cursorline to active window
autocmd VimEnter,WinEnter,BufWinEnter * set cursorline
autocmd VimEnter,WinEnter,BufWinEnter * set colorcolumn=120
autocmd WinLeave * set nocursorline
autocmd WinLeave * set colorcolumn=

augroup bash
    autocmd!
augroup end

augroup java
    autocmd!
    autocmd FileType java set colorcolumn=120
augroup end

augroup javascript
    autocmd!
    autocmd BufRead,BufNewFile *.ts set filetype=javascript
    autocmd BufRead,BufNewFile *.jsx set filetype=javascript
    autocmd BufRead,BufNewFile *.tsx set filetype=javascript
    autocmd FileType javascript set colorcolumn=120
augroup end

augroup json
    autocmd!
    autocmd FileType json set tabstop=2
    autocmd FileType json set softtabstop=2
    autocmd FileType json set shiftwidth=2
augroup end

augroup markdown
    autocmd!
    autocmd BufRead,BufNewFile *.mdx,*.markdown set filetype=markdown
    autocmd FileType markdown set textwidth=120
    autocmd FileType markdown set colorcolumn=120
augroup end

augroup python
    autocmd!
    autocmd FileType python set colorcolumn=120
    autocmd FileType python set textwidth=120
    autocmd FileType python set formatoptions-=t
    autocmd BufRead,BufNewFile  *.ipynb set filetype=python
augroup end

augroup scala
    autocmd!
    autocmd BufRead,BufNewFile *.sbt set filetype=scala
    autocmd FileType scala set foldmethod=syntax
    autocmd FileType scala set colorcolumn=120
augroup end

let mapleader=" "

" map to move up/down over wraps
nnoremap j gj
nnoremap k gk

" Half page up/down but recenter
nnoremap <m-d> Lzz
nnoremap <m-u> Hzz

""  The sacred spacebar remap
"nnoremap <space> ifoo<ESC>

" When using macros, I always accidentally hit shift-Q and go to Ex mode.
nnoremap Q <Nop>

nnoremap <leader>h :split<cr>
nnoremap <leader>v :vsplit<cr>

" easier split navigations
" a la i3
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Window resize a la i3
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Add blank line below cursor
nnoremap <M-o> o<Esc>

" Clear search highlights
nnoremap <leader>ts :let @/ = ""<CR>

" Make this a keymapping
" autocmd BufWritePre *.sh %s/\s\+$//e
