" Krzysztof Chalupka's vimrc.
" DONT PRETEND TO BE VI:
set nocompatible

" REMAP ESCAPE TO jj:
inoremap jk <Esc>`^

" SEARCHES:
set ignorecase smartcase
set incsearch

" SYNTAX HIGHLIGHTING:
syntax enable
syntax on
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
set tags+=/usr/include/tags

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

" SHOW WHERE CURSOR COLUM IS:
set cursorcolumn
highlight CursorColumn ctermbg=234

" DISPLAY LINE AND COL NUMBERS:
set ruler
set nonumber

" SHOW 80 CHAR LIMIT:
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#111111
  autocmd BufEnter * match OverLength /\%80v.*/
augroup END

" highlight OverLength ctermbg=234 ctermfg=234 guibg=234 "guibg=gray
" match OverLength /\%81v.\+/
" au FileType py set textwidth=80

colorscheme PaperColor

" PYTHON-SPECIFIC:
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = 2

map <Leader>p :call InsertLine()<CR>
function! InsertLine()
  let trace = expand("import pdb; pdb.set_trace()")
  execute "normal o".trace
endfunction

" STATUSLINE:
set laststatus=2
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
