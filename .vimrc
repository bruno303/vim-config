" .vimrc configuration

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'mhinz/vim-startify'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'udalov/kotlin-vim'
Plug 'voldikss/vim-floaterm'
Plug 'kien/ctrlp.vim'

call plug#end()


"set ts=4 sw=4
"set path+=**
"set wildmenu

" ativar sintaxe colorida
syntax on

" ativar indentação automática
set autoindent

" ativa indentação inteligente, o Vim tentará adivinhar
" qual é a melhor indentação para o código quando você
" efetuar quebra de linha. Funciona bem para linguagem C
set smartindent

" por padrão o vim armazena os últimos 50 comandos que você
" digitou em seu histórico. Eu sou exagerado, prefiro armazenar
" os últimos 5000
set history=100

" ativar numeração de linha
set number

" destaca a linha em que o cursor está posicionado
" ótimo para quem não enxerga muito bem
set cursorline

" ativa o clique do mouse para navegação pelos documentos
set mouse=a

" ativa o compartilhamento de área de transferência entre o Vim
" e a interface gráfica
set clipboard=unnamedplus

" converte o tab em espaços em branco
" ao teclar tab o Vim irá substutuir por 2 espaços
set tabstop=4 softtabstop=4 expandtab shiftwidth=4

" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o 
" código iniciará colapsado
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

colorscheme OceanicNext

let g:indentLine_enabled = 1
map <c-k>i :IndentLinesToggle<cr>

map <C-n> :NERDTreeToggle<cr>
map <F5> :NERDTreeRefreshRoot<cr>
let NERDTreeShowHidden=1
set encoding=utf8
set guifont=JetBrains\ Mono:h12

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline_statusline_ontop=0
let g:airline_theme='base16_twilight'
let g:airline_left_sep=''
let g:airline_right_sep=''

let g:airline#extensions#tabline#formatter = 'default'
" navegação entre os buffers
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp\|bd #<cr>

let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1
nnoremap <C-p> :CtrlP <cr>
nnoremap <C-t> :CtrlPTag<cr>

filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert

"let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}
let g:ale_completion_enabled = 0
" let g:ale_fixers = {
"      'python': ['yapf'],
"  }
" nmap <F10> :ALEFix<CR>
" let g:ale_fix_on_save = 1

source ~/.vim/coc.nvimrc


" Floaterm configuration
"let g:floaterm_keymap_new    = '<F7>'
"let g:floaterm_keymap_prev   = '<F8>'
"let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_height = 0.3

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-html', 'coc-java', 'coc-sh', 'coc-css', 'coc-yaml']


command! JavaCompile :CocCommand java.workspace.compile
command! JavaClean :CocCommand java.clean.compile
