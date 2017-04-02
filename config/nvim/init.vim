call plug#begin('~/.config/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab

set path+=**
set wildmenu

set clipboard=unnamedplus,unnamed
set mouse=a
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set autoindent
set smartindent
set backspace=2
set number
set relativenumber
set smarttab
set t_Co=256
set background=dark
colorscheme solarized
set cursorline

imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

let mapleader=" "
let maplocalleader=" "

nnoremap j gj
nnoremap k gk
nnoremap <Leader>w :w<CR>zz
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>n :nohl<CR>
nnoremap <Leader>a @
nnoremap <Leader>f mzgg=G'z
nnoremap <Leader>s :setlocal spell! spelllang=de_de<CR>
nnoremap <Leader>r :so $MYVIMRC<CR>
nnoremap <Leader>x :%!xxd<CR>
nnoremap <Leader>X :%!xxd -r<CR>
nmap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
nnoremap ß $
nnoremap dß d$
nnoremap yß y$
nnoremap cß c$

inoremap jk <esc>
inoremap kj <esc>
inoremap JK <esc>:w<CR>zz
inoremap KJ <esc>:w<CR>zz

inoremap <F2> {<CR>}<esc>O

vnoremap ß $

map <F9> :tabn<CR>
map <F8> :tabp<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let g:tex_flavor = 'latex'
let g:vimtex_enabled = 1
let g:vimtex_mappings_enabled = 1
let g:vimtex_fold_enabled = 0
let g:vimtex_complete_enabled = 1
let g:vimtex_complete_recursive_bib = 1
let g:tex_fast="mMr"
let g:tex_conceal=""

"let g:acp_enableAtStartup = 0
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"
"let g:neocomplete#sources#dictionary#dictionaries = {
"			\ 'default' : '',
"			\ 'vimshell' : $HOME.'/.vimshell_hist',
"			\ 'scheme' : $HOME.'/.gosh_completions'
"			\ }
"
"if !exists('g:neocomplete#keyword_patterns')
"	let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"	return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"endfunction
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"if !exists('g:neocomplete#sources#omni#input_patterns')
"	let g:neocomplete#sources#omni#input_patterns = {}
"endif
""let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
""let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"if !exists('g:neocomplete#sources#omni#input_patterns')
"	let g:neocomplete#sources#omni#input_patterns = {}
"endif
"let g:neocomplete#sources#omni#input_patterns.tex =
"			\ '\v\\%('
"			\ . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"			\ . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
"			\ . '|hyperref\s*\[[^]]*'
"			\ . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"			\ . '|%(include%(only)?|input)\s*\{[^}]*'
"			\ . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"			\ . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
"			\ . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
"			\ . ')'
"
"imap <TAB>     <Plug>(neosnippet_expand_or_jump)
"smap <TAB>     <Plug>(neosnippet_expand_or_jump)
"xmap <TAB>     <Plug>(neosnippet_expand_target)
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
"if has('conceal')
"	set conceallevel=2 concealcursor=niv
"endif

let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

:abbr done Donepezil
:abbr riva Rivastigmin
:abbr ACh \ac{ACh}
:abbr AChE \ac{AChE}
:abbr AChEI \ac{AChEI}
:abbr ALP \ac{ALP}
:abbr ANOVA \ac{ANOVA}

:abbr B2M \ac{B2M}
:abbr BChE \ac{BChE}
:abbr BDNF \ac{BDNF}
:abbr BrdU \ac{BrdU}

:abbr cDNA \ac{cDNA}
:abbr Col1 \ac{Col1A1}
:abbr Col1A1 \ac{Col1A1}
:abbr Ct \ac{Ct}

:abbr DEXA \ac{DEXA}
:abbr DMEM \ac{DMEM}
:abbr DMSO \ac{DMSO}
:abbr DNA \ac{DNA}

:abbr EC \ac{EC}
:abbr EDTA \ac{EDTA}
:abbr ELISA \ac{ELISA}

:abbr FBS \ac{FBS}

:abbr gDNA \ac{gDNA}

:abbr HPLC \ac{HPLC}

:abbr KS \ac{KS-Test}

:abbr MSC \ac{MSC}
:abbr MPS \ac{MPS}
:abbr mRNA \ac{mRNA}

:abbr OC \ac{OC}

:abbr PBS \ac{PBS}
:abbr PCR \ac{PCR}
:abbr POD \ac{POD}

:abbr QQ \ac{QQ-Plot}

:abbr RFU \acs{RFU}
:abbr RNA \ac{RNA}
:abbr RNase \ac{RNase}
:abbr RT \ac{RT}

:abbr TrkB \ac{TrkB}
