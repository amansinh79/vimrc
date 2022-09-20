let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ThePrimeagen/vim-be-good'
Plug 'jiangmiao/auto-pairs'

call plug#end()


let mapleader=" "

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <leader>gd <Plug>(coc-definition)
nnoremap <leader>gy <Plug>(coc-type-definition)
nnoremap <leader>gi <Plug>(coc-implementation)
nnoremap <leader>gr <Plug>(coc-references)
nnoremap <leader>rf gg=G<C-o>
nnoremap <leader>n o<Esc>
nnoremap <leader>N O<Esc>
nnoremap <leader>a <C-^>
nnoremap <M-down> ddp
nnoremap <M-up> ddkP

colorscheme ayu
set termguicolors     
let ayucolor="dark"  

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab    
