execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Appearance
colorscheme solarized
" colorscheme codedark
set background=dark
set guifont=Monaco:h14

" Split preferences
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" FZF configuration
nmap <C-d> :Files<ENTER>

" AutoSave configuration
let g:auto_save = 1

" Ack.vim configuration
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Git commit configuration: https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message
autocmd Filetype gitcommit setlocal spell textwidth=72





" Auto reloading .vimrc
if has ('autocmd')
 augroup vimrc
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif
