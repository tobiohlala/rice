if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'lervag/vimtex'
call plug#end()


colorscheme peachpuff


filetype plugin indent on
syntax on


" BACKSPACE as expected
set backspace=indent,eol,start

" TABS for indentation, SPACES for alignment
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

" WHITESPACE visible
highlight SpecialKey ctermfg=240
highlight NonText ctermfg=240
set listchars=eol:↙︎,tab:‧‧,trail:‧
set list

" TEMPORARY files off
set nobackup
set noswapfile
set noundofile

set nocompatible
set number relativenumber
set nowrap
set scrolloff=10
set laststatus=0
set shortmess=atI
set mouse=a


nmap		<S-k>		5k
nmap		<S-j>		5j
nmap		<C-n>		:NERDTreeToggle<CR>
nmap		<Leader>f	:Files<CR>
map		<C-f>		:BLines<CR>
map		<C-b>		:Buffers<CR>


let mapleader = ","
let maplocalleader = ","

let g:goyo_width=100
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:vimtex_view_method = 'mupdf'
let g:vimtex_view_general_viewer = 'mupdf'
let g:vimtex_compiler_method = 'latexmk'


augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z  set noshowmode
  set noshowcmd
  set nonumber norelativenumber
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Zset showmode
  set showcmd
  set number relativenumber
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


highlight EndOfBuffer ctermfg=0 ctermbg=0
highlight LineNr ctermfg=241 ctermbg=0
