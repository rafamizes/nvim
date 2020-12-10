"""""""""""""""""""""""""""""""""""
" Rafael Amizes vimrc config file.
"""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""
" Plugin Section.
"""""""""""""""""""""""""""""""""""
" Vim-Plug - A moderm Vim plugin manager
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/clever-f.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar' " Simple file browser - It just enhances the built-in netrw plugin
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gcmt/taboo.vim' " Enables tab naming.
Plug 'miyakogi/conoline.vim' " Enhances the cursorline.
Plug 'yggdroot/indentline' "Display indentation levels.
" Custom Operators Plugins
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " Repeat plugin actions.
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-system-copy'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
" Generic programming support
" Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'majutsushi/tagbar'

" Collection of language packs for (Neo)vim
Plug 'sheerun/vim-polyglot' 

" Deoplete - Completion frameword for NeoVim.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Linting engine plugin
Plug 'dense-analysis/ale'

" c/c++ format plugin
Plug 'rhysd/vim-clang-format'
" Required  by clang-format
Plug 'kana/vim-operator-user'

" Semantic c++ highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'
" Extra highlighting for modern (17/20) C++.
Plug 'bfrg/vim-cpp-modern'

" Themes and appearance
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/gruvbox-material'

call plug#end()

"""""""""""""""""""""""""""""""""""
" Initialization Section.
"""""""""""""""""""""""""""""""""""

" Enable Elite mode; no ARRRROWWS!!!!
let g:elite_mode=1

let g:conoline_auto_enable = 1

" enables tab name saving when session is saved.
set sessionoptions+=tabpages,globals

let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_enable_bold = 0
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_transparent_background = 0
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_palette = 'mix'

" Vim-Airline Configuration
" enable paste detection
let g:airline_detect_paste=1
" let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline_theme='gruvbox_material'
let g:airline#extensions#nrrwrgn#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t' " Show full file name instead of abbreviations
let g:airline_powerline_fonts = 1                " Use powerline fonts for airline

" Devicons Configuration
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

let g:indentLine_enabled = 1

if (has("termguicolors"))
  set termguicolors
endif
set background=light
colorscheme gruvbox-material

" enables tagbar for Dart.
let g:tagbar_type_dart = { 'ctagsbin': '~/.pub-cache/bin/dart_ctags' }

" clang format settings
let g:clang_format#code_style = 'google'

" ale settings
" C/C++ Hint: if ccls cannot find system headers, run: g++ -E -x c++ - -v < /dev/null and
" put the list of include paths into .ccls files
let g:ale_disable_lsp = 1 " disable all LSP features in Ale, so Ale and Coc work well together.
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_cpp_cc_executable = '<auto>'
let g:ale_cpp_cc_options = '-std=c++17 -Wall -Wextra -pedantic -Wconversion -Wsign-conversion'
" linters run settings
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
" disable it if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 1

" Ale's Omni-completion; press <C-x><C-o> for triggering completion manually.
set omnifunc=ale#completion#OmniFunc

let g:lsp_cxx_hl_use_text_props = 1

" Enable highlighting of named requirements (C++20 library concepts)
let g:cpp_named_requirements_highlight = 1
let c_no_curly_error = 1
" Enable highlighting of C++ attributes
let g:cpp_attributes_highlight = 1
" Disable function highlighting (affects both C and C++ files)
let g:cpp_no_function_highlight = 0
" c++ syntax highlighting
" let g:cpp_class_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1
" let g:cpp_class_decl_highlight = 1
"""""""""""""""""""""""""""""""""""
" Configuration Section.
"""""""""""""""""""""""""""""""""""
:syntax enable
set listchars=eol:$,tab:^I,trail:~,extends:>,precedes:<
set hidden " some plugins requires set hidden.
set encoding=utf-8
set dictionary=/usr/share/dict/words
set nobackup
set nowritebackup
set noswapfile
set smartcase
set autoread " Automatically rereads changed files without asking me anything.
set incsearch
set nohlsearch
set wildmenu
set cmdheight=2
" Better display for messages
set signcolumn=yes
set shortmess+=c
set updatetime=250
" Provides tab-completion for all file-related tasks
set path+=**
set complete+=kspell " enable complete work using dictionary

" Indentation
filetype plugin indent on " Enable indentation rules that are file-type specific
set autoindent " New lines inherit the indentation of previous lines.
set smartindent  " Smart indent
set copyindent " Copy indentation from existing lines
" Convert tabs to spaces
set expandtab
set shiftwidth=2 " When shifting, indent using two spaces
" set smarttab    " Insert “tabstop” number of spaces when the “tab” key is pressed
set softtabstop=2 " Sets the number of columns for a TAB.
set tabstop=2 " Sets the width of a TAB to 2; still it is a actual \t. Vim will just interpret it having a width of 2.
set textwidth=80 " Column characters limit per line
packadd! justify

" Adds mouse support.
if has('mouse')
  set mouse=a
endif

autocmd FileType json syntax match Comment +\/\/.\+$+

" Enable spell-checking for Markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" Enable spell-checking for git commits
autocmd FileType gitcommit setlocal spell

" Autocommand group for automatically set relative numbering.
set number
set relativenumber
:augroup numbertoggle
:  au!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END
" Fixes netrw's reluctance in showing line numbers.
:autocmd CursorHold * if (&filetype == 'netrw' && &number == 0) | set number | set relativenumber | endif

" Allows to run a macro (hit @{register}) on selected region lines
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

"""""""""""""""""""""""""""""""""""
" Key Mappings Section.
"""""""""""""""""""""""""""""""""""
map <Space> <Leader>

tnoremap <Esc> <C-\><C-n>
" Buffer related mappings

" Move to the next buffer
nmap <leader>bn :bnext<CR>
" Move to the previous buffer
nmap <leader>bp :bprevious<CR>
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>
" Deletes the current buffer.
nmap <leader>bd :bdelete<CR>
" Deletes the current buffer in terminal
nmap <leader>td :bdelete!<CR>

" Ale mappings
" Navigate between errors quickly.
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" keep ';' and ',' as forward and backward f, F, t T searching.
map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)
" Fzf mappings
"
" Searches for files under current directory
nnoremap <leader>Ff :Files<CR>
 "Open buffers
nnoremap <leader>Fb :Buffers<CR>
"Lines in loaded buffers
nnoremap <leader>Fl :Lines<CR>
 "rg (ripgrep) search result
nnoremap <leader>Fg :Rg<CR>
"Commands
nnoremap <leader>Fc :Commands<CR>
"Git commits (requires fugitive.vim)
nnoremap <leader>Fco :Commits<CR>

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
  nnoremap <Up>    :resize +2<CR>
  nnoremap <Down>  :resize -2<CR>
  nnoremap <Left>  :vertical resize +2<CR>
  nnoremap <Right> :vertical resize -2<CR>
endif
" Remap arrow keys to tab switching
nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>

" Easy motion mappings
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Git related mappings
" Jump between hunks.
nmap <leader>gn <Plug>(GitGutterNextHunk)
nmap <leader>gp <Plug>(GitGutterPrevHunk)
" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>(GitGutterStageHunk)  " git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)   " git undo (chunk)
" Hunk-preview -- Preview window for the hunk where the cursor is on
nmap <Leader>gP <Plug>(GitGutterPreviewHunk)

nnoremap <Leader>gs :Gstatus<CR> " git status
" Show commits for every source line
nnoremap <Leader>gb :Gblame<CR>  " git blame

" Macros for wrapping Flutter's Widgets.
" Wraps widget under cursor; ww = wrap widget.
:nnoremap <leader>ww %%Bi(child: %a)%i

" Tagbar plugin
nmap <F8> :TagbarToggle<CR>

" Coc related mappings.

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

nmap <leader>rn <Plug>(coc-rename)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `cp` and `cn` to navigate diagnostics
nmap <leader>[c <Plug>(coc-diagnostic-prev)
nmap <leader>]c <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <leader>jd <Plug>(coc-definition)
nmap <leader>jt <Plug>(coc-type-definition)
nmap <leader>ji <Plug>(coc-implementation)
nmap <leader>jr <Plug>(coc-references)

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

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
 inoremap <silent><expr> <TAB>
       \ pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<TAB>" :
       \ coc#refresh()
 inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

 function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

 " Use <c-space> to trigger completion.
 inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
