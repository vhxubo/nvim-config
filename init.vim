set nu
set rnu
set scrolloff=3
set title
set cursorline
set hidden
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set completeopt=menu,menuone,noselect
  
syntax enable
set termguicolors
set background=dark
" colorscheme dracula
colorscheme gruvbox

hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none

let mapleader = " "

if has("nvim")
	lua require "init"
endif

" quick window navigate
nnoremap <silent><C-h> <C-w>h
nnoremap <silent><C-j> <C-w>j
nnoremap <silent><C-k> <C-w>k
nnoremap <silent><C-l> <C-w>l

" quick buffer navigate
nnoremap <silent><S-l> :bnext<CR>
nnoremap <silent><S-h> :bprevious<CR>

" quick select indent in visual
vnoremap <silent>< <gv
vnoremap <silent>> >gv

" fix j k one line
" https://www.reddit.com/r/vim/comments/2k4cbr/comment/clhv03p/?utm_source=share&utm_medium=web2x&context=3
nnoremap <expr> j v:count == 0 ? "gj" : "j"
nnoremap <expr> k v:count == 0 ? "gk" : "k"

" remap sandwich with surround
runtime macros/sandwich/keymap/surround.vim
