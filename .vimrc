set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Whitespace
set list
set listchars=nbsp:¬,tab:»·,trail:˷
hi SpecialKey guifg=OrangeRed

syntax on

nnoremap <F8> :tabp<CR>
nnoremap <F9> :tabn<CR>

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

nnoremap <F4> <C-W>-
nnoremap <F5> <C-W>+

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

execute pathogen#infect()
filetype plugin indent on

autocmd VimEnter * NERDTree
let g:NERDTreeShowHidden=1
let g:airline_powerline_fonts=1
nmap <silent> <F3> :NERDTreeToggle<CR>
