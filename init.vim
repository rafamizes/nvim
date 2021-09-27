" Helps force  plugins to load correctly when it is turned back on below
" filetype off

" Vim-Plug - A moderm Vim plugin manager.
" The plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Simple file browser - It just enhances netrw built-in plugin.
Plug 'tpope/vim-vinegar'

" Vim sugar for the UNIX shell commands that need it the most
Plug 'tpope/vim-eunuch'

" Enhances f, F, t, T commands.
Plug 'rhysd/clever-f.vim'

" Motions on speed!
Plug 'easymotion/vim-easymotion'

" Automatically clear search highlights after you move your cursor.
Plug 'haya14busa/is.vim'

" Enhances cursor line.
Plug 'miyakogi/conoline.vim'

" Enables tab naming.
Plug 'gcmt/taboo.vim'

" Displays thin vertical lines at each indentation level.
Plug 'yggdroot/indentline'

" Telescope: Easy Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Pretty status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Custom Operators Plugins
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-system-copy'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
" Required by 'rhysd/vim-clang-format'
Plug 'kana/vim-operator-user'

Plug 'jiangmiao/auto-pairs'
Plug 'andymass/vim-matchup'

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Simple yet powerful autocompletion  
Plug 'ajh17/VimCompletesMe'

" Programming languange tools
"
" Collection of language packs for (Neo)vim
" Plug 'sheerun/vim-polyglot'

" Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
" LSP: language server protocol — it enables autocompletion through language
" analysis servers.
Plug 'prabirshrestha/vim-lsp'
" sensible LSP settings
Plug 'mattn/vim-lsp-settings'
" integrates LSP with ALE
Plug 'rhysd/vim-lsp-ale'

" Asynchronous Linting Engine
Plug 'dense-analysis/ale'

" Format c/c++ files
Plug 'rhysd/vim-clang-format'
" Semantic c++ highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'

" Markdown tooling
"
" Markdown preview on browser (If you have nodejs and yarn).
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown'
" Enables folding by section headings in markdown documents.
Plug 'masukomi/vim-markdown-folding'

" Themes and appearance
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/gruvbox-material'

" Fancy abbreviation replacements
Plug 'tpope/vim-abolish'
" Highlights only active paragraph
Plug 'junegunn/limelight.vim'
" Full screen writing mode
Plug 'junegunn/goyo.vim'

call plug#end()

let g:lsp_settings = {
    \ 'analysis-server-dart-snapshot': {
    \     'cmd': [
    \         '/usr/lib/dart/bin/dart',
    \         '/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot',
    \         '--lsp'
    \     ],
    \ },
\ }
" It is disabled because the ALE plugin has been set to perform diagnostics.
let g:lsp_diagnostics_enabled = 0 
let g:lsp_document_highlight_enabled = 1

" Let the LSP handle folding for me.
let g:lsp_fold_enabled = 0
set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()

" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview
" set completeopt=menu,menuone,noinsert,noselect

" let g:lsc_auto_map = v:true
let g:indentLine_enabled = 1

" Gruvbox-material
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_enable_bold = 0
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_palette = 'mix'
" let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_current_word = 'bold'
let g:gruvbox_material_sign_column_background = 'default'
" let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_ui_contrast = 'high'
" let g:gruvbox_material_ui_contrast = 'low'
let g:gruvbox_material_statusline_style = 'mix'
let g:gruvbox_material_better_performance = 1

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox_material'
let g:airline#extensions#nrrwrgn#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#wordcount#enabled = 1

let g:lsp_cxx_hl_use_text_props = 1
let c_no_curly_error = 1
" clang format settings
let g:clang_format#code_style = 'google'
let g:ale_cpp_cc_options = '-std=c++17 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -Wuseless-cast -Wshadow -Wno-deprecated -Wvla -Wextra-semi -Wnull-dereference -Wswitch-enum -Wduplicated-cond -Wduplicated-branches -Wsuggest-override -pipe'

" Disabling Ale's auto completion prevents clashes with Autocompletion plugins.
let g:ale_disable_lsp = 1
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1

" ALE signs
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

" For plugins to load correctly
filetype plugin indent on
" Turn on syntax highlighting
syntax on

if has('mouse')
  set mouse=a
endif

" Enable 24-bit true colors if your terminal supports it.
if has('termguicolors')
  set termguicolors
endif

set background=light
colorscheme gruvbox-material

set signcolumn=yes
" set spelllang=en_gb
set spelllang=en_us
" set lazyredraw

" enable netrw recursive copy of directories.
let g:netrw_localcopydircmd = 'cp -r'
set listchars=eol:$,tab:^I,trail:~,extends:>,precedes:<
" Some plugins requires set hidden.
set hidden
set encoding=utf-8
set dictionary+=/usr/share/dict/words
set thesaurus+=/home/rafael/thesaurus/words.txt
set backspace=indent,eol,start
set splitbelow
set splitright
set autoread
" set autowrite
set nobackup
set nowritebackup
set noswapfile
set smartcase
set incsearch
set hlsearch
set cmdheight=2
" Have mode in the status bar.
set noshowmode
" set showcmd
" Better display for messages
set shortmess+=c
set updatetime=500
" Provides tab-completion for all file-related tasks
set path+=**
set complete+=kspell " enable complete work using dictionary

" Indentation and whitespaces
set autoindent
set smartindent
set copyindent
" Convert tabs to spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set textwidth=80
set shiftround

augroup spellchecking
  autocmd!
  " Enable spell checking for Markdown files
  autocmd BufRead,BufNewFile *.md setlocal spell
  " Enable spell checking for git commits
  autocmd FileType gitcommit setlocal spell
augroup END

augroup numbertoggling
  set number
  set relativenumber
  au!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
  " Fixes netrw's reluctance in showing line numbers.
  autocmd CursorHold * if (&filetype == 'netrw' && &number == 0) | set number | set relativenumber | endif
augroup END

" Comment highlighting in json files.
autocmd FileType json syntax match Comment +\/\/.\+$+

" Key mappings
map <Space> <Leader>

" Assign 'quit of terminal mode' function to the esc key.
tnoremap <Esc> <C-\><C-n>
" Enable/disable indentation level displaying.
noremap <leader>it :IndentLinesToggle<cr>
" Edit, in a new split, vim's config file.
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
" Update and sources the config file so that changes take effect immediately.
nnoremap <leader>vs :update <Bar> source $MYVIMRC<cr> :AirlineRefresh<cr>

" Update current buffer.
nnoremap <leader>bu :update<cr>
" Update and source current buffer.
nnoremap <leader>bs :update <Bar> source %<cr> :AirlineRefresh<cr>
" Move to the next buffer
nnoremap <leader>bn :bnext<CR>
" Move to the previous buffer
nnoremap <leader>bp :bprevious<CR>
" Close buffer and move to the previous one
nnoremap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nnoremap <leader>bl :ls<CR>
" Deletes the current buffer.
nnoremap <leader>bd :bdelete<CR>
" Deletes the current buffer in terminal
nnoremap <leader>td :bdelete!<CR>

" Telescope plugin
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Ale
map <silent> <C-k> <Plug>(ale_previous_wrap)
map <silent> <C-j> <Plug>(ale_next_wrap)

map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)

nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>

map <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Jump between hunks.
nmap <leader>gn <Plug>(GitGutterNextHunk)
nmap <leader>gp <Plug>(GitGutterPrevHunk)
" Hunk-add and hunk-revert for chunk staging
nmap <leader>ga <Plug>(GitGutterStageHunk)  " git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)   " git undo (chunk)
" Hunk-preview -- Preview window for the hunk where the cursor is on
nmap <Leader>gP <Plug>(GitGutterPreviewHunk)

nnoremap <Leader>gs :Git<CR> " git status
" Show commits for every source line
nnoremap <Leader>gb :Gblame<CR>  " git blame

" Wraps Flutter widget under cursor; ww = wrap widget.
nnoremap <leader>ww %%Bi(child: %a)%i

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> <leader>ca <plug>(lsp-code-action)
    nmap <buffer> <leader>gd <plug>(lsp-definition)
    nmap <buffer> <leader>gs <plug>(lsp-document-symbol-search)
    nmap <buffer> <leader>gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> <leader>gr <plug>(lsp-references)
    nmap <buffer> <leader>gi <plug>(lsp-implementation)
    nmap <buffer> <leader>gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    " nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    " nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    " inoremap <buffer> <expr><c-f> lsp#scroll(+4)
    " inoremap <buffer> <expr><c-d> lsp#scroll(-4)

    " let g:lsp_format_sync_timeout = 1000
    " autocmd! BufWritePre *.rs,*.go,*.dart call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
