" Helps force  plugins to load correctly when it is turned back on below
" filetype off

" Vim-Plug - A moderm Vim plugin manager.
" The plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" defaults everyone can agree on
" Plug 'tpope/vim-sensible'
" Simple file browser - It just enhances netrw built-in plugin.
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

" View and search LSP symbols — tags, in Vim/NeoVim.
Plug 'liuchengxu/vista.vim'
" provides an easy way to browse the tags of the current file and get an
" overview of its structure
" Plug 'preservim/tagbar'
" Automates tag generation
" Plug 'xolox/vim-easytags'
" Required by easytags
" Plug 'xolox/vim-misc'
" structured code formats via content assist.
Plug 'mattn/emmet-vim'

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

call plug#end()

let g:indentLine_enabled = 1

let g:vista_executive_for = {
  \ 'dart': 'coc',
  \ }

" Gruvbox-material
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_palette = 'mix'
" let g:gruvbox_material_palette = 'original'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_current_word = 'bold'
let g:gruvbox_material_sign_column_background = 'default'
let g:gruvbox_material_ui_contrast = 'high'
let g:gruvbox_material_statusline_style = 'mix'
let g:gruvbox_material_better_performance = 1

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox_material'
let g:airline#extensions#nrrwrgn#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'

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

" set background=dark
set background=light
colorscheme gruvbox-material
" colorscheme github_light_default

" Highlight line under cursor. It helps with navigation.
" set cursorlineopt=number
set cursorlineopt=line,number

" Set minimum window size to 79x5.
set winwidth=80
set winheight=2
set winminheight=2
" Hide buffers instead of asking if to save them.
set hidden
" Use dash as word separator.
set iskeyword+=-
set incsearch
set hlsearch
set signcolumn=yes

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
set cmdheight=2
" Have mode in the status bar.
set noshowmode

" Better display for messages
set shortmess+=c
set updatetime=300
" au CursorHold * sil call CocActionAsync('highlight')
" au CursorHoldI * sil call CocActionAsync('showSignatureHelp')
set complete+=kspell " enable complete work using dictionary

" Indentation and whitespaces
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

" Raibow autocommand
" let g:rainbow#max_level = 16
let g:rainbow#max_level = 24
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'],]
au VimEnter * RainbowParentheses
au Syntax * RainbowParentheses

" Select your Leader key
let mapleader = "\<Space>"

" Toggles Vista — View and search LSP symbosl (tags).
nmap <F8> :Vista!!<CR>

" Assign 'quit of terminal mode' function to the esc key.
tnoremap <Esc> <C-\><C-n>
" Enable/disable indentation level displaying.
noremap <leader>it :IndentLinesToggle<cr>
" Edit, in a new split, vim's config file.
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
" Update and sources the config file so that changes take effect immediately.
nnoremap <leader>vs :update <Bar> source $MYVIMRC<cr> :AirlineRefresh<cr>

" Location Window
nnoremap <leader>lf :lfirst<cr>
nnoremap <leader>ll :llast<cr>
nnoremap <leader>ln :lnext<cr>
nnoremap <leader>lp :lprevious<cr>
nnoremap <leader>lc :lclose<cr>
nnoremap <leader>lo :lopen<cr>
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

map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)

nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>

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

nnoremap <Leader>gs :Git<CR> " git status
" Show commits for every source line
nnoremap <Leader>gb :Gblame<CR>  " git blame

" Wraps Flutter widget under cursor; ww = wrap widget.
nnoremap <leader>ww %%Bi(
child: %a
)%i

" Coc related mappings

:nnoremap <leader>e :CocCommand explorer<CR>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

map <silent> <C-k> <Plug>(coc-diagnostic-prev)
map <silent> <C-j> <Plug>(coc-diagnostic-next)


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

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
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
