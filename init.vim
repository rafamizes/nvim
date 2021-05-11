" Plugins {{{
"
" Helps force plugins to load correctly when it is turned back on below
" filetype off

" Vim-Plug - A moderm Vim plugin manager
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Simple file browser - It just enhances the built-in netrw plugin
Plug 'tpope/vim-vinegar'

" Enhanced f, F, t, T commands.
Plug 'rhysd/clever-f.vim'

" Motions on speed!
Plug 'easymotion/vim-easymotion'

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

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" floating terminal
Plug 'voldikss/vim-floaterm'

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
" Required  by clang-format
Plug 'kana/vim-operator-user'

" Generic programming support
" Plug 'Townk/vim-autoclose'
Plug 'majutsushi/tagbar'

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Collection of language packs for (Neo)vim
Plug 'sheerun/vim-polyglot' 

" Deoplete - Completion frameword for NeoVim.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Markdown preview on browser (If you have nodejs and yarn).
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Linting engine
Plug 'dense-analysis/ale'

" c/c++ related plugins
" Format c/c++ files
Plug 'rhysd/vim-clang-format'
" Required  by clang-format
Plug 'kana/vim-operator-user'

" Semantic c++ highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'

" Themes and appearance
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/gruvbox-material'

call plug#end()
" }}}

" Initialization. ----- {{{

" Enable Elite mode; no ARRRROWWS!!!!
  let g:elite_mode=1

  let g:indentLine_enabled = 1

  " Gruvbox-material
  " enables highlighting error/warning/info/hint lines
  let g:gruvbox_material_diagnostic_line_highlight = 1
  let g:gruvbox_material_diagnostic_text_highlight = 1
  let g:gruvbox_material_enable_bold = 0
  let g:gruvbox_material_enable_italic = 1
  " let g:gruvbox_material_palette = 'material'
  let g:gruvbox_material_palette = 'mix'
  let g:gruvbox_material_background = 'hard'
  let g:gruvbox_material_current_word = 'bold'
  let g:gruvbox_material_statusline_style = 'mix'
  let g:gruvbox_material_better_performance = 1

  " Airline settings {{{
  let g:airline_powerline_fonts = 1
  let g:airline_theme='gruvbox_material'
  let g:airline#extensions#nrrwrgn#enabled = 1
  let g:airline#extensions#ale#enabled = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_splits = 1
  " }}}

  let g:tagbar_type_dart = { 'ctagsbin': '~/.pub-cache/bin/dart_ctags' }

  " c++ related stuff {{{
  let g:lsp_cxx_hl_use_text_props = 1
  let c_no_curly_error = 1
  " clang format settings
  let g:clang_format#code_style = 'google'
  let g:ale_cpp_cc_options = '-std=c++17 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -Wuseless-cast -Wshadow -Wno-deprecated -Wvla -Wextra-semi -Wnull-dereference -Wswitch-enum -Wduplicated-cond -Wduplicated-branches -Wsuggest-override -pipe'
  " }}}

  " ALE related settings {{{
  " C/C++ Hint: if ccls cannot find system headers, run: g++ -E -x c++ - -v < /dev/null and
  " put the list of include paths into .ccls files
  " desable ale lsp auto completion.
  let g:ale_disable_lsp = 1
  let g:ale_c_parse_makefile = 1
  let g:ale_sign_column_always = 1
  " ALE signs
  let g:ale_sign_error = '✘'
  let g:ale_sign_warning = '⚠'
  " Fix files automatically on save
  " let g:ale_fix_on_save = 1

  " quickfix instead of loclist.
  let g:ale_set_loclist = 0
  let g:ale_set_quickfix = 0
  " }}}

  " For plugins to load correctly
  filetype plugin indent on
  " Turn on syntax highlighting
  syntax on

  if has('termguicolors')
    set termguicolors
  endif
  
  if has('mouse')
    set mouse=a
  endif

  set background=light
  colorscheme gruvbox-material

  set listchars=eol:$,tab:^I,trail:~,extends:>,precedes:<
  " Some plugins requires set hidden.
  set hidden
  set encoding=utf-8
  set dictionary=/usr/share/dict/words
  set backspace=indent,eol,start
  set nobackup
  set nowritebackup
  set noswapfile
  set smartcase
  set incsearch
  set nohlsearch
  set wildmenu
  set cmdheight=2
  set laststatus=2
  " Have mode in the status bar.
  set noshowmode
  set showcmd
  set signcolumn=yes
  " Better display for messages
  set shortmess+=c
  set updatetime=250
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
  set noshiftround

  " Automatically set foldmethod for better vim scripts visualization. {{{
  augroup vimscriptfolding
    autocmd!
    autocmd FileType vim set foldmethod=marker | set foldcolumn=2
  augroup END
  " }}}

  " Automatically set spell checkgin for markdown and gitcommit files. ----- {{{
  augroup spellchecking
    autocmd!
    " Enable spell-checking for Markdown files
    autocmd BufRead,BufNewFile *.md setlocal spell
    " Enable spell-checking for git commits
    autocmd FileType gitcommit setlocal spell
  augroup END
  " }}}

  " Automatically set relative numbering. ----- {{{
  augroup numbertoggle
    set number
    set relativenumber
    au!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
    " Fixes netrw's reluctance in showing line numbers.
    autocmd CursorHold * if (&filetype == 'netrw' && &number == 0) | set number | set relativenumber | endif
  augroup END
  " }}}

  " Coc plugin related autocommands ----- {{{
  augroup cocautocmd
    au!
    " Highlight symbol under cursor on CursorHold
    autocmd CursorHold * silent call CocActionAsync('highlight')
  augroup END
  " }}}

  " Allows to run a macro (hit @{register}) on selected region lines ----- {{{
  xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
  function! ExecuteMacroOverVisualRange()
    echo "@".getcmdline()
    execute ":'<,'>normal @".nr2char(getchar())
  endfunction
  " }}}
" }}}

" Key Mappings. ----- {{{
  map <Space> <Leader>

  " Assign 'quit of terminal mode' function to the esc key.
  tnoremap <Esc> <C-\><C-n>
  " Enable/disable indentation level displaying.
  noremap <leader>it :IndentLinesToggle<cr>
  " Edit, in a new split, vim's config file.
  nnoremap <leader>ve :vsplit $MYVIMRC<cr>
  " Sources config file so that changes take effect immediately.
  nnoremap <leader>vs :source $MYVIMRC<cr> :AirlineRefresh<cr>

  " Buffer related mappings. --- {{{
    " Update current buffer.
    nnoremap <leader>bu :update<cr>
    " Update and source current buffer.
    nnoremap <leader>bs :update <Bar> source %<cr>
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
  " }}}

  " Inner parentheses mapping - can be thought as parameters movement.
  onoremap <leader>p i(

  " Find files using Telescope command-line sugar --- {{{
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>
  " }}}
  " ALE mapping Navigate between errors quickly. ----- {{{
    map <silent> <C-k> <Plug>(ale_previous_wrap)
    map <silent> <C-j> <Plug>(ale_next_wrap)
  " }}}

  " Keep ';' and ',' as forward and backward f, F, t T searching. ----- {{{
    map ; <Plug>(clever-f-repeat-forward)
    map , <Plug>(clever-f-repeat-back)
  " }}}
  
  " Disable arrow movement, resize splits instead. ----- {{{
    if get(g:, 'elite_mode')
      nnoremap <Up>    :resize +2<CR>
      nnoremap <Down>  :resize -2<CR>
      nnoremap <Left>  :vertical resize +2<CR>
      nnoremap <Right> :vertical resize -2<CR>
    endif
  " }}}
  
  " Remap arrow keys to tab switching. ----- {{{
    nnoremap <S-Left> :tabprevious<CR>
    nnoremap <S-Right> :tabnext<CR>
  " }}}

  " Easymotion mappings. ----- {{{
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
  " }}}

  " Git related mappings. {{{
    " Jump between hunks.
    nmap <leader>gn <Plug>(GitGutterNextHunk)
    nmap <leader>gp <Plug>(GitGutterPrevHunk)
    " Hunk-add and hunk-revert for chunk staging
    nmap <Leader>ga <Plug>(GitGutterStageHunk)  " git add (chunk)
    nmap <Leader>gu <Plug>(GitGutterUndoHunk)   " git undo (chunk)
    " Hunk-preview -- Preview window for the hunk where the cursor is on
    nmap <Leader>gP <Plug>(GitGutterPreviewHunk)

    nnoremap <Leader>gs :Git<CR> " git status
    " Show commits for every source line
    nnoremap <Leader>gb :Gblame<CR>  " git blame
  " }}}

  " Macros for wrapping Flutter's Widgets.
  " Wraps widget under cursor; ww = wrap widget.
  nnoremap <leader>ww %%Bi(child: %a)%i

  " Tagbar plugin
  nmap <F8> :TagbarToggle<CR>

  " Coc related mappings. {{{
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
  " }}}
" }}}
