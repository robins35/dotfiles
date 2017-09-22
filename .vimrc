set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set ff=unix

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
nnoremap <F6> <C-W><
nnoremap <F7> <C-W>>

" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>

" grep for word under cursor
nnoremap <Leader>f :grep <cword> -r app lib config features spec vendor<CR><CR><CR>

" hi CursorLine ctermbg=green ctermfg=white cterm=bold guibg=green guifg=white gui=bold
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set cursorline " cursorcolumn

" Set column to dark red at 80 chars
if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=88
endif

" Source .vimrc when changes are made to it
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" VimFugitive: git bindings
cabbrev gs Gstatus
cabbrev gd Gdiff

execute pathogen#infect()
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='powerlineish'
let g:airline_theme='dark'

let g:NERDTreeShowHidden=1
let g:airline_powerline_fonts=1
nmap <silent> <F3> :NERDTreeToggle<CR>

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

let g:rails_projections = {
  \ "app/assets/javascripts/*.coffee": {
  \    "command": "coffee"
  \ },
  \ "app/decorators/*_decorator.rb": {
  \    "command": "decorator"
  \ },
  \ "app/interactions/*.rb": {
  \    "command": "activeinteraction"
  \ },
  \ "app/observers/*_observer.rb": {
  \    "command": "observer"
  \ },
  \ "app/presenter/*_presenter.rb": {
  \    "command": "presenter"
  \ },
  \ "spec/features/*_spec.rb": {
  \    "command": "feature"
  \ },
  \ "features/pages/*_page.rb": {
  \    "command": "page"
  \ },
  \ "features/step_definitions/*_steps.rb": {
  \    "command": "step"
  \ },
  \ "spec/support/*.rb": {
  \    "command": "support"
  \ },
  \ "spec/factories/*_factory.rb": {
  \    "command": "factory",
  \    "template": "FactoryGirl.define do\n  \nend"
  \ },
  \ "app/workers/*_worker.rb": {
  \    "command": "worker"
  \ },
  \ "client/app/bundles/Signup/actions/*Action*.jsx": {
  \    "command": "raction"
  \ },
  \ "client/app/*/*/components/*.jsx": {
  \    "command": "rcomponent"
  \ },
  \ "client/app/*/*/constants/*Constants.jsx": {
  \    "command": "rconstant"
  \ },
  \ "client/app/*/*/containers/*Container.jsx": {
  \    "command": "rcontainer"
  \ },
  \ "client/app/*/*/reducers/*Reducer.jsx": {
  \    "command": "rreducer"
  \ },
  \ "client/app/*/*/startup/*.jsx": {
  \    "command": "rstartup"
  \ },
  \ "client/app/*/*/store/*Store.jsx": {
  \    "command": "rstore"
  \ }}
