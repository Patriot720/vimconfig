set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
"run the command immediately when starting vim
autocmd VimEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)

" activate/deactivate full screen with function key <F11>  
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
set termguicolors     " enable true colors support
let ayucolor="mirage"   " for dark version of theme
:colorscheme deep-space
" :colorscheme onedark
" syntax enable
" set background=dark
" :colorscheme material-theme
let NERDTreeShowHidden=1
let g:ctrlp_map = '<c-p>'
nnoremap <Leader>wa :VimwikiAll2HTML<CR>
nnoremap <leader>o :CtrlPMRU<CR>
nnoremap <c-c> <Nop>
let g:vimwiki_list = [{
  \ 'path': 'F:\YandexDisk\vimwiki',
  \ 'template_path': 'F:\YandexDisk\vimwiki\templates',
  \ 'template_default': 'index',
  \ 'template_ext': '.html'}]
let g:gitgutter_enabled = 1
set number
let g:auto_save = 1  " enable AutoSave on Vim startup
set renderoptions=type:directx
set encoding=utf-8
set guifont=Fira\ Code:h10.3
let g:NERDTreeWinPos = "left"
:au VimEnter * NERDTree | wincmd p
autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
"autocmd BufEnter * silent! lcd %:p:h
set splitbelow
:au BufRead,BufNewFile *.tpl set filetype=smarty 
:au FocusLost * :wa
map <leader>k :silent exec "!git add ."<cr>:!git commit -m "
map <leader>kk :silent exec "!git push origin master"<cr>
map <leader>cm :!start cmd<cr>
map <leader>cd :cd %:p:h<cr>
map <leader>t :TestNearest<cr>
let g:hardtime_default_on = 1
let g:NERDTreeMapHelp = '<F1>'
let g:hardtime_ignore_buffer_patterns = []
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0
