"
"let g:vimtex_compiler_progname = 'nvr'
"
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"	Plugin 'VundleVim/Vundle.vim'
"	Plugin 'lervag/vimtex'	
"	Plugin 'chriskempson/base16-vim'
""	Plugin 'vim-scripts/TeX-9'
"	Plugin 'wincent/terminus'
"	Plugin 'mhinz/vim-startify'
"    Plugin 'jceb/vim-orgmode'
"call vundle#end()
"
"nnoremap <leader>d "_d
"noremap <c-f> yypVr-
"nnoremap <c-F3> :!pcmanfm . & <enter><enter>
"" k<s-v>yp<s-v>r-

set background=dark

" jump to last open file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" what's open
set title
" display line numbers
set number
" replace tabs with spaces
set expandtab
" tell vim how many colums vim uses when you hit tab
set tabstop=4
" insert <amount> of spaces for tabs
set shiftwidth=4
" enable syntax highlighting
syntax on
" enable soft wrapping of textblocks
set wrap linebreak
" go back like a noprmal person
set backspace=indent,eol,start
" shut up
set noerrorbells
" system clip
set clipboard=unnamedplus
" enable filetype plugin support
filetype plugin on
" true colour support
" set tgc
" please resize my splits when i resize my window
autocmd VimResized * wincmd =
" share vim and system clipboard
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif

"""""""""""""""""""
" CUSTOM KEYBINDS "
"""""""""""""""""""
" Toggle Nerd Tree
map <C-n> :NERDTreeToggle<CR>
nnoremap    <F1>    :!make && make run<ENTER>
" Compile current file to pdf using pandoc
" requires texlive-core
nnoremap    <F2>    :!pandoc --pdf-engine=pdflatex %:p -o %:p:r.pdf & <ENTER>
" nnoremap    <F2>    :!pandoc --pdf-engine=xelatex --number-sections -V geometry:"top=2.5cm, bottom=1.5cm, left=3cm, right=3cm" %:p -o %:p:r.pdf & <ENTER>
nnoremap <F3> :!pcmanfm . & <enter><enter>
nnoremap <F4> :e ~/.config/nvim/init.vim<enter>
nnoremap    <F11>   :ToggleWhitespace<ENTER>
nnoremap    <F12>   :RainbowToggle<ENTER>
" Source init.vim
nnoremap    <C-s>   :source ~/.config/nvim/init.vim<enter>

" Movement/handy binds
nnoremap <leader>d "_d
noremap <c-f> yypVr-  

" fix splits and split movements, the retard way
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
nnoremap <M-Down> <C-W><S-J>
nnoremap <M-Up> <C-W><S-K>
nnoremap <M-Right> <C-W><S-L>
nnoremap <M-Left> <C-W><S-H>
"nnoremap <C-j> :resize +1<CR>
"nnoremap <C-k> :resize -1<CR>
"nnoremap <C-h> :vertical resize -1<CR>
"nnoremap <C-l> :vertical resize +1<CR>

set splitbelow
set splitright

"to avoid the mistake of uppercasing these
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qa! qa!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa

" to quickly clear highlight press ^/
nnoremap <C-/> :nohlsearch<CR>

" hop out of the terminal with ESC instead of this horrible key combo
tnoremap <Esc> <C-\><C-n>

" create tabs faster
nnoremap tn :tabnew<CR>
nnoremap tq :tabclose<CR>

" easier tab movement
nnoremap th gT
nnoremap tl gt

set nopaste

let g:vimtex_compiler_progname = 'nvr'

call plug#begin('~/.local/share/nvim/plugged')
	Plug 'lervag/vimtex'	
	Plug 'chriskempson/base16-vim'
"	Plug 'mhinz/vim-startify'
    Plug 'jceb/vim-orgmode'
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}	
    Plug 'itchyny/lightline.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'w0rp/ale'
    Plug 'chrisbra/Colorizer'
    Plug 'tpope/vim-fugitive'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'joshdick/onedark.vim'
call plug#end()

" LaTeX

"let g:tex_flavor='latex'
"let g:vimtex_view_method='zathura'
"let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'
"let g:vimtex_compiler_latexmk = { 'options' : [ '-pdf', '-pdflatex="xelatex --shell-escape %O %S"', '-verbose', '-file-line-error', '-synctex=1', '-interaction=nonstopmode',  ] }
"map <leader>mb :VimtexCompile<cr>
"map <leader>mee :VimtexErrors<cr>
"autocmd FileType tex setlocal ts=2 sw=2 sts=0 expandtab spell
"let g:vimtex_complete_enabled = 1
"let g:vimtex_complete_close_braces = 1
"let g:vimtex_complete_ignore_case = 1
"let g:vimtex_complete_smart_case = 1
"let g:vimtex_compiler_progname='nvr'
"set spell spelllang=en_us
"set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
"inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
"autocmd FileType tex setlocal ts=2 sw=2 sts=0 expandtab spell

" Color!!

set termguicolors
colo onedark

" Lightline

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \  'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" Misc theme stuff

set fillchars+=vert:│
hi VertSplit ctermbg=NONE guibg=NONE

" Syntax highlighting

let g:asmsyntax = 'nasm'

let g:slime_target = "neovim"

nnoremap <F6> :belowright 10split \| terminal<CR>a
nnoremap <C-F6> :belowright 10split \| terminal python3<CR>a


