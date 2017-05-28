" Krzysztof Chalupka's vimrc.

" DONT PRETEND TO BE VI:
set nocompatible

" SEARCHES:
set ignorecase smartcase
set incsearch

" SYNTAX HIGHLIGHTING:
syntax enable
set background=dark
filetype indent plugin on

" RECURSIVE SEARCH AND COMPLETION:
" :ls -- list buffers.
" :b -- jump to buffer.
" :find <pattern> -- find file recursively.
set path+=**
set wildmenu

" CTAGS:
" - ^] jump to tag under cursor.
" - g^] list all for ambiguous tags.
" - ^t jump back up the tag stack. 
command! MakeTags !ctags -R .

" AUTOCOMPLETE:
" - ^x^n just current file.
" - ^x^f filenames.
" - ^n / ^p just the 'complete' option.
" - ^x^] tags only.

" FILE BROWSING:
" - :edit a folder to open the browser.
filetype plugin on
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3

" SNIPPETS:
nnoremap ,tex :-1read $HOME/.vim/.skeleton.tex<CR>

" TABS ARE SPACES:
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent

" SHOW WHERE CURSOR COLUM IS: 234
set cursorcolumn
highlight CursorColumn ctermbg=234

" DISPLAY LINE AND COL NUMBERS:
set ruler
set number

" FULL PATH IN STATUS LINE:
set statusline+=%F

" SHOW 80 CHAR LIMIT:
highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

color solarized8_dark
