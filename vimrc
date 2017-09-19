execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Appearance
colorscheme solarized
set background=dark
set guifont=Monaco:h14

" Split preferences
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" CtrlP configuration
let g:ctrlp_map = '<c-d>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" AutoSave configuration
let g:auto_save = 1

" Ack.vim configuration
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Git commit configuration: https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message
autocmd Filetype gitcommit setlocal spell textwidth=72





" Auto reloading .vimrc
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd
