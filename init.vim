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

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Programming languange tools
"
" Collection of language packs for (Neo)vim
Plug 'sheerun/vim-polyglot'
" Deoplete - Completion frameword for NeoVim.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Linting engine
Plug 'dense-analysis/ale'
Plug 'dart-lang/dart-vim-plugin'
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

" (Prose) writing related plugins.
" Fancy abbreviation replacements
Plug 'tpope/vim-abolish'
" Highlights only active paragraph
Plug 'junegunn/limelight.vim'
" Full screen writing mode
Plug 'junegunn/goyo.vim'

call plug#end()

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

" Disabling Ale's auto completion prevents clashes with CoC.
let g:ale_disable_lsp = 1
let g:ale_sign_column_always = 1
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
set lazyredraw

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

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

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

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" Jump to definition
nmap <leader>jd <Plug>(coc-definition)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
