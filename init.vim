" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdTree'
"Plug 'ctrlpvim/ctrlp.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'bling/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'

call plug#end()

" mappings
nmap b :Buffers<CR>
nmap f :Files<CR>
nmap <Leader>r :Tags<CR>

" NERDTree
let NERDTreeShowHidden=1
autocmd vimenter * NERDTree

" Airline
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'molokai'

" colorscheme
syntax on
color dracula

" config
set encoding=utf8
set guifont=Ubuntu\ Nerd\ Font\ 11

" Floating window
"let $FZF_DEFAULT_OPTS = '--layout=reverse'
"let g:fzf_layout = { 'window': 'call OpenFloatingWin()' }

"function! OpenFloatingWin()
"  let height = &lines - 3
"  let width = float2nr(&columns - (&columns * 2 / 10))
"  let col = float2nr((&columns - width) / 2)

"  let opts = {
"        \ 'relative': 'editor',
"        \ 'row': height * 0.3,
"        \ 'col': col + 30,
"        \ 'width': width * 2 / 3,
"        \ 'height': height / 2
"        \ }

"  let buf = nvim_create_buf(v:false, v:true)
"  let win = nvim_open_win(buf, v:true, opts)

"  call setwinvar(win, '&winhl', 'Normal:Pmenu')

"  setlocal
"        \ buftype=nofile
"        \ nobuflisted
"        \ bufhidden=hide
"        \ nonumber
"        \ norelativenumber
"        \ signcolumn=no
"endfunction


