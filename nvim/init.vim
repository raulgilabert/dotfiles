 set shiftwidth=4
 
call plug#begin("~/.config/nvim/plugged")
Plug 'phanviet/vim-monokai-pro'
"Plug 'ncm2/ncm2'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'vimlab/split-term.vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 
	    \ 'do': 'yarn install'}

Plug 'xuhdev/vim-latex-live-preview'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'stevearc/vim-arduino'
Plug 'mhinz/vim-startify'
Plug 'Mofiqul/dracula.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify' 
Plug 'joshdick/onedark.vim'
"Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
"Plug 'akinsho/bufferline.nvim'
Plug 'KabbAmine/zeavim.vim'
Plug 'morhetz/gruvbox'
Plug 'petertriho/nvim-scrollbar'

call plug#end()


"Easymotion

syntax on
set termguicolors
colorscheme gruvbox


set colorcolumn=80
set tw=79


set relativenumber
set number
set cursorline
set mouse=a

autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'firefox'

let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
	if (match(a:key,'[jk]'))
	    wincmd v
	else
	    wincmd s
	endif
	exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR>

nnoremap <silent> <space> :VTerm <CR>

vmap <F3> :s/^/\/\/ /<CR>

" Extra commands

command! Q q " Quit while still pressing Shift
command! Qa qa " Quit all while still pressing Shift
command! W w " Write while still pressing Shift
command! Wq wq " Write-quit while still pressing Shift
command! Wqa wqa " Write-quit all while still pressing Shift
 
" Airline

let g:airline_left_sep=''
let g:airline_right_sep=''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = 'gruvbox'

let g:coc_global_extensions = [
  \ 'coc-sh',
  \ 'coc-markdownlint',
  \ 'coc-clangd',
  \ 'coc-html',
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-pyright',
  \ 'coc-json',
  \ 'coc-eslint',
  \ 'coc-prettier',
 \ 'coc-rust-analyzer',
  \ ]

