call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'dag/vim-fish'
Plug 'editorconfig/editorconfig-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'skywind3000/asyncrun.vim'
call plug#end()

let g:airline_theme='badwolf'
let g:airline_powerline_fonts=0

set nofoldenable
set nu
set tabstop=4 shiftwidth=4 expandtab
set pastetoggle=<F3>
autocmd BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab foldmethod=indent nofoldenable
autocmd BufNewFile,BufReadPost *.json setl shiftwidth=2 expandtab foldmethod=indent nofoldenable
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab foldmethod=indent nofoldenable
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction
set list listchars=trail:.,extends:>

autocmd FileWritePre * call TrimWhiteSpace()
autocmd FileAppendPre * call TrimWhiteSpace()
autocmd FilterWritePre * call TrimWhiteSpace()
autocmd BufWritePre * call TrimWhiteSpace()

nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tn :tabnew<CR>
