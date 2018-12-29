call plug#begin('~/.vim/plugged')

        Plug 'junegunn/goyo.vim'
        Plug 'junegunn/fzf.vim'

call plug#end()


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
set colorcolumn=80

syntax on
filetype plugin indent on

let g:goyo_width=80

colorscheme typewriter-night
highlight LineNr ctermfg=136 ctermbg=235

nnoremap	<C-l>		:w<CR>:bn<CR>
nnoremap	<C-h>		:w<CR>:bp<CR>
nmap		<S-k>		5k
nmap		<S-j>           5j
nmap            <S-f>           :Goyo<CR>

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set nonumber norelativenumber
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set number relativenumber
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

