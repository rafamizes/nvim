" Vim-Plug - A moderm Vim plugin manager.
" The plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-vinegar'
" Vim sugar for the UNIX shell commands that need it the most
Plug 'tpope/vim-eunuch'
" Fancy abbreviation replacements
Plug 'tpope/vim-abolish'
" (neo)vim terminal in a floating/popup window.
Plug 'voldikss/vim-floaterm'

" Enhances f, F, t, T commands.
Plug 'rhysd/clever-f.vim'

" Motions on speed!
Plug 'easymotion/vim-easymotion'

" Enhances cursor line.
Plug 'miyakogi/conoline.vim'

" Enables tab naming.
Plug 'gcmt/taboo.vim'

Plug 'junegunn/rainbow_parentheses.vim'

" Displays thin vertical lines at each indentation level.
Plug 'yggdroot/indentline'

" Telescope: Easy Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

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

" Plug 'jiangmiao/auto-pairs'

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Autocompletion on steroids
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Programming languange tools
"
" Collection of language packs for (Neo)vim
Plug 'sheerun/vim-polyglot'
" Linting
Plug 'vim-syntastic/syntastic'

" Debug adapter
Plug 'mfussenegger/nvim-dap'

" View and search LSP symbols — tags, in Vim/NeoVim.
Plug 'liuchengxu/vista.vim'
Plug 'mattn/emmet-vim'

" Android
Plug 'hsanson/vim-android'

" C++
" Format c/c++ files
Plug 'rhysd/vim-clang-format'
" Enhanced C and C++ syntax highlighting.
Plug 'bfrg/vim-cpp-modern'

" Markdown tooling
"
" Markdown preview on browser (If you have nodejs and yarn).
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'godlygeek/tabular'
" Plug 'tpope/vim-markdown'
" Enables folding by section headings in markdown documents.
Plug 'masukomi/vim-markdown-folding'
" Themes and appearance
Plug 'sainnhe/gruvbox-material'
Plug 'projekt0n/github-nvim-theme'
Plug 'ryanoasis/vim-devicons'
" Pretty status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Highlights only active paragraph
Plug 'junegunn/limelight.vim'
" Full screen writing mode
Plug 'junegunn/goyo.vim'

" Multiple cursors
Plug 'mg979/vim-visual-multi'

" Snippets
" Do not forget to install pynvim. Intall it by running: 'python3 -m pip install -user --upgrade pynvim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'

call plug#end()

let g:indentLine_enabled = 1

let g:vista_executive_for = {
  \ 'dart': 'coc',
  \ }

" Gruvbox-material
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_enable_bold = 0
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_palette = 'material'
" let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_background = 'medium'
" let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_sign_column_background = 'default'
" let g:gruvbox_material_ui_contrast = 'high'
let g:gruvbox_material_better_performance = 1

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox_material'
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#nrrwrgn#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#show_coc_status = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'

"" vim-android Plugin
" let g:gradle_path = '/opt/homebrew/bin/gradle'
let g:android_sdk_path = '/Users/rafamizes/Library/Android/sdk'
let g:gradle_daemon=1
let g:gradle_show_signs=0
let g:gradle_loclist_show=0
let g:gradle_sync_on_load=1
let g:netrw_browsex_viewer='google-chrome'
let g:gradle_glyph_error=''
let g:gradle_glyph_warning=''
let g:gradle_glyph_gradle=''
let g:gradle_glyph_android=''
let g:gradle_glyph_building=''

augroup GradleGroup
  autocmd!
  au BufWrite build.gradle call gradle#sync()
augroup END

let g:clang_format#code_style = 'google'

" enable netrw recursive copy of directories.
let g:netrw_localcopydircmd = 'cp -r'

" set text properties to cxx-highlight plugin
let g:lsp_cxx_hl_use_text_props = 1

" Prevents (n)vim from flaging braces as errors.
let c_no_curly_error = 1
" c++ syntax highlighting
let g:cpp_concepts_highlight = 1
" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 0
" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1
" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" c++ linting
let g:syntastic_cpp_checkers = ['cpplint', 'cppcheck']
let g:syntastic_c_checkers = ['cpplint', 'cppcheck']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_cpp_cppcheck_exec = 'cppcheck'
let g:syntastic_cpp_cppcheck_args = ["--enable=all", "--inline-suppr"]
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

" Enable 24-bit true colors if your terminal supports it.
set termguicolors

" Enable mouse for scrolling and window resizing.
if has('mouse')
  set mouse=a
endif

set background=dark
" set background=light
colorscheme gruvbox-material

" Hide buffers instead of asking if to save them.
set hidden
" Use dash as word separator.
set iskeyword+=-
set incsearch
set hlsearch
set signcolumn=yes
set listchars=tab:>-,trail:-
set dictionary+=/usr/share/dict/words
set thesaurus+=/home/rafael/thesaurus/words.txt
set complete+=kspell " enable complete work using dictionary

" Do not fold by default. But if, do it up to 4 levels.
set foldmethod=syntax
set foldnestmax=4
set foldcolumn=2
set nofoldenable

" Disable output, vcs, archive, rails, temp and backup files.
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

" Always focus on splited window.
set splitbelow
set splitright
" Set window title by default.
set title

set nobackup
set nowritebackup
set noswapfile
set ignorecase
set smartcase
set incsearch
set hlsearch
set cmdheight=1
" Have mode in the status bar.
" set noshowmode

" Better display for messages
set shortmess+=c
set updatetime=300
set complete+=kspell " enable complete work using dictionary

" Indentation and whitespaces
set smartindent
set copyindent
" Convert tabs to spaces
" set expandtab
" set shiftwidth=2
" set softtabstop=2
" set tabstop=2
" set textwidth=80
" set shiftround

augroup spellchecking
  autocmd!
  " Enable spell checking for Markdown files
  autocmd BufRead,BufNewFile *.md setlocal spell
  " Enable spell checking for git commits
  autocmd FileType gitcommit setlocal spell
augroup END

augroup numbertoggling
  au!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber | set number
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
  " Fixes netrw's reluctance in showing line numbers.
  autocmd CursorHold * if (&filetype == 'netrw' && &number == 0) | set relativenumber | set number | endif
augroup END

" Comment highlighting in json files.
autocmd FileType json syntax match Comment +\/\/.\+$+

" Raibow autocommand
let g:rainbow#max_level = 24
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'],]
au VimEnter * RainbowParentheses
au Syntax * RainbowParentheses

" Select your Leader key
let mapleader = "\<Space>"

" jump to mark
nnoremap <leader>j `
" Toggles Vista — View and search LSP symbosl (tags).
nmap <F8> <Cmd>Vista!!<CR>

" Assign 'quit of terminal mode' function to the esc key.
tnoremap <Esc> <C-\><C-n>
" Enable/disable indentation level displaying.
noremap <leader>it <Cmd>IndentLinesToggle<cr>
" Edit, in a new split, vim's config file.
nnoremap <leader>ve <Cmd>vsplit $MYVIMRC<cr>
" Update and sources the config file so that changes take effect immediately.
nnoremap <leader>vs <Cmd>update <Bar> source $MYVIMRC<cr> <Cmd>AirlineRefresh<cr>

" Location Window
nnoremap <leader>lf <Cmd>lfirst<cr>
nnoremap <leader>ll <Cmd>llast<cr>
nnoremap <leader>ln <Cmd>lnext<cr>
nnoremap <leader>lp <Cmd>lprevious<cr>
nnoremap <leader>lc <Cmd>lclose<cr>
nnoremap <leader>lo <Cmd>lopen<cr>
" Update current buffer.
nnoremap <leader>bu <Cmd>update<cr>
" Update and source current buffer.
nnoremap <leader>bs <Cmd>update <Bar> source %<cr> <Cmd>AirlineRefresh<cr>
" Move to the next buffer
nnoremap <leader>bn <Cmd>bnext<CR>
" Move to the previous buffer
nnoremap <leader>bp <Cmd>bprevious<CR>
" Close buffer and move to the previous one
nnoremap <leader>bq <Cmd>bp <BAR> bd #<CR>
" Show all open buffers and their status
nnoremap <leader>bl <Cmd>ls<CR>
" Hides the current buffer.
nnoremap <leader>bh <Cmd>hide<CR>
" Deletes the current buffer.
nnoremap <leader>bd <Cmd>bdelete<CR>
" Deletes the current buffer in terminal
nnoremap <leader>td <Cmd>bdelete!<CR>

" Telescope plugin
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)

nnoremap <S-Left> <Cmd>tabprevious<CR>
nnoremap <S-Right> <Cmd>tabnext<CR>

" 'm' means 'motion'
map <Leader>m <Plug>(easymotion-bd-f)
nmap <Leader>m <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap <Leader>mm <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>mL <Plug>(easymotion-bd-jk)
nmap <Leader>mL <Plug>(easymotion-overwin-line)
" Move to word
map <Leader>mw <Plug>(easymotion-bd-w)
nmap <Leader>mw <Plug>(easymotion-overwin-w)


" Jump between hunks.
nmap <leader>gn <Plug>(GitGutterNextHunk)
nmap <leader>gp <Plug>(GitGutterPrevHunk)
" Hunk-add and hunk-revert for chunk staging
nmap <leader>ga <Plug>(GitGutterStageHunk)  " git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)   " git undo (chunk)
" Hunk-preview -- Preview window for the hunk where the cursor is on
nmap <Leader>gP <Plug>(GitGutterPreviewHunk)

nnoremap <Leader>gs <Cmd>Git<CR> " git status
" Show commits for every source line
nnoremap <Leader>gb <Cmd>Gblame<CR>  " git blame

" Wraps Flutter widget under cursor; ww = wrap widget.
nnoremap <leader>ww %%Bi(child: %a)%i

" it jumps to the bottom window — which should be the terminal window — and
" reloads flutter — hot reload.
" nnoremap <leader>fr <Cmd>FloatermFirst<CR>r<C-\><C-n><Cmd>FloatermHide<CR>
nnoremap <leader>fr <C-w>jir<C-\><C-n><C-w>k
" it jumps to the bottom window — which should be the terminal window — and
" restarts flutter execution — hot restart.
nnoremap <leader>fR <C-w>jiR<C-\><C-n><C-w>k

" Coc related mappings

:nnoremap <leader>e <Cmd>CocCommand explorer<CR>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

map <silent> <C-k> <Plug>(coc-diagnostic-prev)
map <silent> <C-j> <Plug>(coc-diagnostic-next)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K <Cmd>call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ca  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

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

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
