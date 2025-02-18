" Basic Settings
set number                     " Show line numbers
set relativenumber             " Show relative line numbers
set tabstop=4                  " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4               " Number of spaces to use for each step of (auto)indent
set expandtab                  " Use spaces instead of tabs
set autoindent                 " Copy indent from current line when starting a new line
set smartindent                " Enable smart indentation
set backspace=indent,eol,start " Make backspace behave in a more intuitive way
set nowrap                     " Don't wrap lines
set noautoread
autocmd FocusGained,BufEnter * checktime
:bufdo checktime
set autoread
autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Reloaded." | echohl None

color gruvbox
" Autocompletion and Syntax Highlighting
set completeopt=menuone,longest,preview " Autocomplete options
filetype plugin on             " Enable filetype-specific plugins
filetype indent on             " Enable indentation for specific filetypes
syntax on                      " Enable syntax highlighting



" Set default font to Consolas, size 12
set guifont=Consolas:h10











" Move current tab to the absolute right
nnoremap <C-S-Right> :tabmove $<CR>




" Ctrl + w to close the current window (split)
nnoremap <C-x> :q<CR>


" Toggle netrw file explorer with Ctrl + n
" Toggle netrw file explorer with Ctrl + n in GVim
nnoremap <C-n> :Explore!<CR>









autocmd FileType c,cpp nnoremap <F5> :w<CR>:!g++ % -o %:r && %:r<CR>
autocmd FileType c nnoremap <F5> :w<CR>:!gcc % -o %:r && %:r<CR>



inoremap <Tab> <Esc>la


inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

nnoremap <C-n> :Explore<CR>
nnoremap <C-n> :Explore<CR>



" Enable netrw file explorer
let g:netrw_liststyle = 3         " Use tree-style listing
let g:netrw_browse_split = 4      " Open files in a new tab instead of split
let g:netrw_winsize = 25          " Set file explorer window width (adjust as necessary)
let g:netrw_banner = 0            " Hide the netrw banner at the top
let g:netrw_altv = 1              " Open netrw in vertical splits by default

" Enable the preview of files when you press `Enter` on them
let g:netrw_preview = 1

" Enable auto-chdir, which changes the working directory to the directory of the file being opened
autocmd BufEnter * silent! lcd %:p:h

" Key mappings for netrw
nnoremap <leader>e :Ex<CR>        " Open file explorer with leader key (e.g., `\e`)
nnoremap <leader>f :Explore<CR>   " Open file explorer with leader key (e.g., `\f`)

" Key mappings for netrw navigation
nnoremap <leader>h :Ex<CR>        " Open netrw with `\h` in horizontal split
nnoremap <leader>v :Vex<CR>       " Open netrw in vertical split with `\v`



" Enable omnifunction for C/C++
autocmd FileType c,cpp setlocal omnifunc=syntaxcomplete#Complete

" Trigger omnifunction completion with Ctrl-x Ctrl-o
inoremap <C-x><C-o> <C-R>=OmniComplete()<CR>




" Auto-save when focus is lost or every 2 seconds of inactivity
autocmd FocusLost,CursorHold * silent! wall



" Move the current line down with Alt+j
nnoremap <A-j> :m .+1<CR>==

" Move the current line up with Alt+k
nnoremap <A-k> :m .-2<CR>==

" Move selected lines down with Alt+j in Visual mode
vnoremap <A-j> :m '>+1<CR>gv=gv

" Move selected lines up with Alt+k in Visual mode
vnoremap <A-k> :m '<-2<CR>gv=gv

" Enable UltiSnips
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsListSnippets = "<C-Tab>"


inoremap <C-BS> <C-W>








" Ctrl + Right Arrow to open a vertical split (split right)
nnoremap <C-Right> :vsplit<CR>

" Ctrl + Left Arrow to close the current window
nnoremap <C-Left> :wincmd h<CR>

" Ctrl + Down Arrow to open a horizontal split (split down)
nnoremap <C-Down> :split<CR>

" Ctrl + Up Arrow to close the current window
nnoremap <C-Up> :wincmd k<CR>



" Enable automatic reloading of files when they change externally
set autoread

" Check for changes in files when Vim regains focus or you switch buffers
autocmd FocusGained,BufEnter * checktime

" Notify when a file has been reloaded due to external changes
autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Reloaded." | echohl None

" Optional: Automatically reload all buffers (if multiple files are open)
" Uncomment the following line to periodically check all buffers for changes
" autocmd CursorHold * silent! checktime




call plug#begin('~/.vim/plugged') " Plugin directory

" Autocompletion plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " coc.nvim for autocompletion

call plug#end()

call plug#begin('~/.vim/plugged')

" Autocompletion and LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'

" File navigation
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', {'do': './install --bin'}
Plug 'junegunn/fzf.vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" Debugging
Plug 'puremourning/vimspector'

" Code navigation
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'

" Formatting and linting
Plug 'vim-autoformat/vim-autoformat'
Plug 'dense-analysis/ale'

" Productivity tools
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Status line
Plug 'vim-airline/vim-airline'

call plug#end()

" Enable Treesitter
Plug 'nvim-treesitter/nvim-treesitter'


" Coc.nvim settings
autocmd BufWritePre *.cpp,*.c,*.h :CocCommand editor.action.formatDocument


Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'morhetz/gruvbox'

inoremap <Tab> <Right>









iab boicpp <C-o>:read ~\boicpp.txt<CR>
iab boic <C-o>:read ~\boiler.txt<CR>

Plug 'arecarn/vim-fold-cycle'
nmap <Space>z <Plug>(fold-cycle)
vmap <Space>z <Plug>(fold-cycle)
nmap <Space>Z <Plug>(fold-cycle-close-all)
 

" Show a live log in the command area when a file is saved
autocmd BufWritePost * echon "File saved: " . expand("%:p")
" Create a split for logs
function! OpenLogWindow()
    botright 10split LogWindow
    setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
    let g:log_buffer = bufnr('%')
endfunction

  
