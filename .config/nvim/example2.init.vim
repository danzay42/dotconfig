:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8
:set noswapfile
:set clipboard+=unnamedplus

call plug#begin('~/.vim/plugged')

Plug 



"Plug 'tpope/vim-surround'				" Surrounding ysw)
"Plug 'preservim/nerdtree'				" NerdTree
"Plug 'tpope/vim-commentary'			" For Commenting gcc & gc
"Plug 'vim-airline/vim-airline'			" Status bar
"Plug 'rafi/awesome-vim-colorschemes'	" Retro Scheme
"Plug 'ap/vim-css-color' " CSS Color Preview
""Plug 'neoclide/coc.nvim'				" Auto Completion
"Plug 'ryanoasis/vim-devicons'			" Developer Icons
""Plug 'tc50cal/vim-terminal'			" Vim Terminal
"Plug 'preservim/tagbar'				" Tagbar for code navigation
""Plug 'terryma/vim-multiple-cursors'	" CTRL + N for multiple cursors

call plug#end()
"
"nnoremap <C-f> :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
"
"nmap <F8> :TagbarToggle<CR>
"
":set completeopt-=preview " For No Previews
"
":colorscheme jellybeans
"
"let g:NERDTreeDirArrowExpandable="+"
"let g:NERDTreeDirArrowCollapsible="~"
"
"" --- Just Some Notes ---
"" :PlugClean :PlugInstall :UpdateRemotePlugins
""
"" :CocInstall coc-python
"" :CocInstall coc-clangd
"" :CocInstall coc-snippets
"" :CocCommand snippets.edit... FOR EACH FILE TYPE
"
"" air-line
"let g:airline_powerline_fonts = 1
"
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif

" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

"inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
