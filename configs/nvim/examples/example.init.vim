set number relativenumber
set mouse=a
"set encoding=UTF-8  " NeoVim use utf-8 as default encoding.
set noswapfile
set clipboard+=unnamedplus
" set tabstop=4 softtabstop=4 shiftwidth=4 smarttab autoindent
" set scrolloff=7
" set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " https://github.com/neoclide/coc.nvim/wiki/Language-servers
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
"Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-commentary'
"Plug 'liuchengxu/vista.vim'
Plug 'folke/which-key.nvim'
Plug 'kovetskiy/sxhkd-vim'
Plug 'ap/vim-css-color'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'Vimjas/vim-python-pep8-indent'


Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " If you have nodejs and yarn
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

call plug#end()

"colorscheme dogrun
"colorscheme hybrid
colorscheme jellybeans

" --- NERDTree --- 
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
"nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
"let g:NERDTreeDirArrowExpandable="+"
"let g:NERDTreeDirArrowCollapsible="~"

" set cmdheight=2


"" --- Just Some Notes ---
"" :PlugClean :PlugInstall :UpdateRemotePlugins

"" :CocInstall coc-python
"" :CocInstall coc-clangd
"" :CocInstall coc-snippets
"" :CocCommand snippets.edit... FOR EACH FILE TYPE

" " air-line
" let g:airline_powerline_fonts = 1

" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif

" " " airline symbols
" " let g:airline_left_sep = ''
" " let g:airline_left_alt_sep = ''
" " let g:airline_right_sep = ''
" " let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonlg= ''
" let g:airline_symbols.linenr = ''

"inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
