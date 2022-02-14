set shiftwidth=4

call plug#begin()
Plug 'phanviet/vim-monokai-pro'
Plug 'ncm2/ncm2'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vimlab/split-term.vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 
	    \ 'do': 'yarn install'}

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'preservim/nerdcommenter'
Plug 'stevearc/vim-arduino'

call plug#end()

syntax on
set termguicolors
colorscheme monokai_pro

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


set colorcolumn=80
set relativenumber
set number
set cursorline

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
