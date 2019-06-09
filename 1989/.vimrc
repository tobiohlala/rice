if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'junegunn/goyo.vim'
        Plug 'scrooloose/nerdtree'
call plug#end()

syntax on
filetype plugin indent on

set shortmess=at
set nocompatible
set number relativenumber
set nowrap
set backspace=indent,eol,start
set smartindent
set softtabstop=4
set shiftwidth=4
set expandtab
set laststatus=1
set mouse=a
"set colorcolumn=80
set scrolloff=10
set nobackup
set noswapfile
set noundofile

colorscheme pablo
highlight LineNr ctermfg=2 ctermbg=7
highlight EndOfBuffer ctermfg=7 ctermbg=7

let g:goyo_width=100
let g:NERDTreeNodeDelimiter = "\u00a0"

nnoremap	<C-l>		:w<CR>:bn<CR>
nnoremap	<C-h>		:w<CR>:bp<CR>
nmap		<S-k>		5k
nmap		<S-j>           5j
nmap            <C-n>           :NERDTreeToggle<CR>
nmap            <C-f>           :BLines<CR>
nmap            <S-f>           :Files<CR>

let g:goyo_width=100
let g:NERDTreeNodeDelimiter = "\u00a0"

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

