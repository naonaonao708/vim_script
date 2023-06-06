set number
set title
set showmatch
set ruler
set smartindent
set tabstop=4
set shiftwidth=4
set clipboard=unnamed
set cursorline
set termguicolors
set t_Co=256
syntax enable
colorscheme atom-dark

nnoremap <C-j> 5j
nnoremap <C-k> 5k
vnoremap <C-j> 5j
vnoremap <C-k> 5k


" Background SERTTINGS
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE


" Terminal SETTINGS
nnoremap <silent> tt <cmd>terminal<CR> 
nnoremap <silent> tx <cmd>belowright new<CR><cmd>terminal<CR>
autocmd TermOpen * :startinsert
autocmd TermOpen * setlocal norelativenumber
autocmd TermOpen * setlocal nonumber


" PLUGIN SETTINGS
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lambdalisue/fern.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()


" Airline SETTINGS
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:devicons_enable = 1
let g:airline_theme = 'luna'
nmap <C-p> <Plug>AirlineSelectPrevTab 
nmap <C-n> <Plug>AirlineSelectNextTab


" Fern SETTINGS
nnoremap <C-f> :Fern %:h<CR>

" void Netrw
:let g:loaded_netrw       = 1
:let g:loaded_netrwPlugin = 1
