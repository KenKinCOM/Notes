"__     ___                    
"\ \   / (_)_ __ ___  _ __ ___ 
" \ \ / /| | '_ ` _ \| '__/ __|
"  \ V / | | | | | | | | | (__ 
"   \_/  |_|_| |_| |_|_|  \___|

syntax on
set number
set wildmenu
set relativenumber
set cursorline
set showcmd 
set hlsearch
set encoding=utf-8
set showmatch
set tabstop=4
set autoindent
set scrolloff=4
set updatetime=100
set shortmess+=c
set ignorecase

let mapleader= " " 
"方向键
noremap k j
noremap i k
noremap h i
noremap j h
noremap H I
noremap I H

map ! :q!<CR>
map Q :q<CR>
map W :w<CR>
map R :source $MYVIMRC<CR>
"keep history move at leave and start 
silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
"silent !mkdir -p $HOME/.config/nvim/tmp/sessions
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.config/nvim/tmp/undo,.
endif

"Terminal
noremap te :term<CR>

" ==================== Terminal Behaviors ====================
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>



"===
"===indentLine
"===
let g:indentLine_char = '|'
let g:indentLine_color_term = 238
let g:indentLine_color_gui = '#333333'

"===
"===spellcheck
"===
map <LEADER>c :set spell!<CR>
noremap <C-x> ea<C-x>s
inoremap <C-x> <Esc>ea<C-x>s

"===
"===标签页	
"===

map to :tabe<CR>
map tu :-tabnext<CR>
map ti :+tabnext<CR>

map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
 
"===
"===wildfire
"===
" this selects the next closest text object.
map ww <plug>(wildfire-fuel)

" this selects the previous closest text object.
vmap <c-w> <plug>(wildfire-water)
nmap ws <Plug>(wildfire-quick-select)

let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "ip", "it"]

"===
"===Rnvimr	
"===

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}
" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1
" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1
" Draw border with both
let g:rnvimr_ranger_cmd = ['ranger', '--cmd=set draw_borders both']
" Replace `$EDITOR` candidate with this command to open the selected file
let g:rnvimr_edit_cmd = 'drop'
nnoremap <C-r> :RnvimrToggle<CR>


" Map Rnvimr action
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }



"===
"===LeaderF
"===
noremap ff :Leaderf filer<CR>
noremap pp :Leaderf filer --popup<CR>
let g:Lf_RootMarkers = "/Users/fuyu"

"===
"===分屏(split)
"===


map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l

"分屏切换
map sv <c-w>t<c-w>K
map sh <c-w>t<c-w>L

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>    

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>




"===
"===nerdtree
"===
nnoremap <leader>n :nerdtreefocus<cr>
nnoremap <c-n> :nerdtree<cr>
"nnoremap tt :nerdtreetoggle<cr>
nnoremap nef :nerdtreefind<cr>
    
let nerdtreemapopensplit = 'h'

" mirror the nerdtree before showing it. this makes it the same on all tabs.
nnoremap tr :nerdtreemirror<cr>:nerdtreefocus<cr>

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" coc-translator
nmap ts <Plug>(coc-translator-p)

"===
"===Undotree
"===
nnoremap un :UndotreeToggle<CR>

"===
"===figlet  ascii字符文字
"=== 
map fg :r !figlet 

"===
"===vim-spector
"===

"===
"===ultisnips
"===

" Use <C-l> for trigger snippet expand.
imap <C-j> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-o> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-k>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-i>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-l> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)


" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
"let g:UltiSnipsExpandTrigger="<C-a>"
"let g:UltiSnipsJumpForwardTrigger="<C-a>"
"let g:UltiSnipsJumpBackwardTrigger="<C-z>"
"imap <C-j> <Plug>(coc-snippets-expand-jump)
	

"===
"===fzf
"===
"
noremap <C-p> :FZF<CR>
noremap <C-a> :Ag<CR>
noremap <C-h> :History<CR>
noremap <C-l> :Lines<CR>
noremap <C-d> :Windows<CR>
noremap <C-c> :Commands<CR>
noremap <C-g> :GFiles<CR>


let g:fzf_preview_window = 'right:40%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

noremap <c-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.60 } }


"===
"===coc配置
"===


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

nnoremap tt :CocCommand explorer<CR>
nnoremap coc :CocCommand

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <LEADER>h :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <C-o> coc#refresh()
else
  inoremap <silent><expr> <C-o> coc#refresh()
endif


"===
"===html
"===
map ht :%TOhtml

"===
"===vim-plug
"===

call plug#begin('~/.vim/plugged')

"fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'mhinz/vim-startify'

Plug 'Yggdroot/indentLine'

"Plug 'mhinz/vim-startify'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

"vimspector
"Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-python'}

"markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }

" Undo Tree
Plug 'mbbill/undotree/'

"wildfire
Plug 'gcmt/wildfire.vim'

"vista
Plug 'liuchengxu/vista.vim'
"surround
Plug 'tpope/vim-surround'

"LeaderF
Plug 'Yggdroot/LeaderF'
Plug 'tamago324/LeaderF-filer'

"rnvimr
Plug 'kevinhwang91/rnvimr'

" Python
Plug 'vim-scripts/indentpython.vim'

"coc-vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Error checking
Plug 'w0rp/ale'
call plug#end()

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

let g:SnazzyTransparent = 1

colorscheme snazzy

map <LEADER>x :call CompileRunGcc()<CR>
    func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
            exec "!g++ % -o %<"
            exec "!time ./%<"
        elseif &filetype == 'cpp'
            exec "!g++ % -o %<"
            exec "!time ./%<"
        elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
        elseif &filetype == 'sh'
            :!time bash %
        elseif &filetype == 'python'
            exec "!python3 %"
        elseif &filetype == 'html'
            exec "!firefox % &"
        elseif &filetype == 'go'
    "        exec "!go build %<"
            exec "!time go run %"
        elseif &filetype == 'markdown'
  		    exec "MarkdownPreview"
        endif
    endfunc

"markdown preview theme
let g:mkdp_theme = 'light'


	let g:syntastic_python_python_exec = 'python3' 

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
