filetype plugin indent on
syntax on
set background=dark

if $TERM_PROGRAM =~ "iTerm"
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	" Blinking vertical bar in insert mode
	let &t_SR = "\<Esc>]50;CursorShape=2\x7"
	" Blinking underscore in replace mode
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	" Blinking block in normal mode
endif

call plug#begin('~/.vim/plugged')
        Plug 'junegunn/vim-plug'
        " Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
        Plug 'w0rp/ale'
        Plug 'junegunn/vim-easy-align'
        Plug 'yggdroot/indentline'
        Plug 'jiangmiao/auto-pairs'
        Plug 'tpope/vim-surround'
        Plug 'vimwiki/vimwiki'
        Plug 'dart-lang/dart-vim-plugin'
        Plug 'natebosch/dart_language_server'
        Plug 'dikiaap/minimalist'
        " Plug 'purcell/sqlint'
            " Only Supports PostgreSQL syntax right now
        " Plug 'jackc/sqlfmt'
            " Not sure, maybe it's good?
        " Plug 'mhinz/vim-startify'
            " Fancy start screen
        " Plug 'mbbill/undotree'
            " Undo history visualizer
        " Plug 'bling/vim-bufferline'
        " Plug 'tpope/vim-commentary'
        " Plug 'wincent/command-t'
        " Plug 'tpope/vim-fugitive'
        " Plug 'tpope/vim-unimpaired'
        " Plug 'airblade/vim-gitgutter'
        " Plug 'tpope/vim-dadbod'
        " Plug 'python-mode/python-mode'
        " Plug 'ctrlpvim/ctrlp.vim'
        " Plug 'junegunn/fzf'
        " Plug 'scrooloose/nerdcommenter'
        " Plug 'christoomey/vim-tmux-navigator'
        " Plug 'tpope/vim-unimpaired'
        " Plug 'mbbill/undotree'
        " Plug 'ryanoasis/vim-devicons'
        " Plug 'edkolev/tmuxline.vim'
        " Plug 'tpope/vim-vinegar'
call plug#end()

" Plugins
    " Autopairs
    let g:AutoPairsFlyMode=0
    " let g:AutoPairsShortcutBackInsert=Something (default '<M-b>')
    " There are also shortcuts for toggle autopairs, fast wrap, jump to next
    " closed pair, and backinsert

    " Ale
    let g:ale_dart_dartanalyzer_executable = $FLUTTER_HOME . '/bin/cache/dart-sdk/bin/dartanalyzer'
    let g:ale_lint_on_insert_leave=1
    let g:ale_set_balloons=1
    let g:ale_linters = {
     	\ 'dart': ['dartanalyzer', 'language_server']
    \}
    let g:ale_lint_delay=100
    let g:ale_lint_on_text_changed='normal'
    let g:ale_lint_on_enter=1
    let g:ale_lint_on_save=1
    let g:ale_lint_on_filetype_changed=1
    let g:ale_lint_on_insert_leave=1

    " Indent-Line
    let g:indentLine_char='|'

" Vim Options
    " System integration settings
        set clipboard=unnamed
        set mouse=a
    " Text Editor Settings
        set incsearch
        set hlsearch
        set ignorecase
        set smartcase
        set wrapscan
        set gdefault
        set tabstop=4
        set expandtab
        set softtabstop=-1
        set shiftwidth=0
        set shiftround
        set backspace=indent,eol,start
        set autoindent
        set smartindent
        set smarttab
        set nofoldenable
        set foldmethod=indent
        set wrap
        set linebreak
        set breakindent
        set showbreak=>>\ 
        set selection=old

        set showmode
        set showcmd
        set number
        set relativenumber
        set ruler
        set visualbell
        set wildmenu
        set scrolloff=3
        set sidescroll=1
        set sidescrolloff=3
        " set equalalways
        " set eadirection=both
        set autoread
        set t_vb=
        set cmdheight=2
        set cmdwinheight=12
        set laststatus=2
        " set splitbelow
        " set splitright
    " Appearance
        " set fillchars=stl:^,stlnc:-,fold:''

" Colorscheme and Appearance
    " curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash
    " hi SpecialKey
    " hi clear
    " hi LineNr               ctermfg=037 ctermbg=235 cterm=bold
    " hi CursorLineNr         ctermfg=037 ctermbg=232 cterm=bold
    " hi EndOfBuffer          ctermfg=037 ctermbg=235 cterm=bold
    " hi FoldColumn           ctermfg=11  ctermbg=17  cterm=bold
    " hi VertSplit            ctermfg=037 ctermbg=0   cterm=bold
    " hi StatusLine           ctermfg=238 ctermbg=014 cterm=bold
    " hi StatusLineNc         ctermfg=236 ctermbg=037 cterm=bold
    " hi StatusLineTerm       ctermfg=238 ctermbg=014 cterm=bold
    " hi StatusLineTermNc     ctermfg=236 ctermbg=037 cterm=bold
    " hi ModeMsg              ctermfg=3   ctermbg=1   cterm=bold
    " hi Terminal
    " hi TerminalNc
    " hi Normal               ctermfg=159 ctermbg=235 cterm=bold
    " hi Folded               ctermfg=3   ctermbg=235 cterm=bold
    " hi NonText              ctermfg=14  ctermbg=235 cterm=bold
    " hi Error                ctermfg=11  ctermbg=1   cterm=bold
    " hi Title                ctermfg=3   ctermbg=235 cterm=bold
    " hi TabLine              ctermfg=232 ctermbg=242 cterm=bold
    " hi TabLineSel           ctermfg=    ctermbg=    cterm=bold
    " hi TabLineFill          ctermfg=232 ctermbg=234 cterm=bold
    " hi Comment              ctermfg=121 ctermbg=235 cterm=bold
    " hi Statement            ctermfg=003 ctermbg=235 cterm=bold
    " hi Type                 ctermfg=013 ctermbg=235 cterm=bold
    " hi ErrorMsg             cterm=bold
    " hi Todo                 cterm=bold
    " hi Directory            cterm=bold
    " hi IncSearch            cterm=bold
    " hi Search               cterm=bold
    " hi MoreMsg              cterm=bold
    " hi Title                cterm=bold
    " hi Visual               cterm=bold
    " hi VisualNOS                cterm=bold
    " hi WarningMsg               cterm=bold
    " hi WildMenu cterm=bold
    " hi DiffAdd cterm=bold
    " hi DiffChange cterm=bold
    " hi DiffDelete cterm=bold
    " hi DiffText cterm=bold
    " hi SignColumn cterm=bold
    " hi QuickFixLine cterm=bold
    " hi StatusLineTerm cterm=bold
    " hi StatusLineTermNC cterm=bold
    " hi MatchParen cterm=bold
    " hi ToolbarLine cterm=bold
    " hi ToolbarButton cterm=bold
    " hi Question cterm=bold
    " hi Conceal cterm=bold
    " hi SpellBad cterm=bold
    " hi SpellCap cterm=bold
    " hi SpellRare cterm=bold
    " hi SpellLocal cterm=bold
    " hi Pmenu cterm=bold
    " hi PmenuSel cterm=bold
    " hi PmenuSbar cterm=bold
    " hi PmenuThumb cterm=bold
    " hi Constant cterm=bold
    " hi Special cterm=bold
    " hi Identifier cterm=bold
    " hi PreProc cterm=bold
    " hi Type cterm=bold
    " hi Underlined cterm=bold
    " hi Ignore cterm=bold
    " hi String cterm=bold
    " hi Character cterm=bold
    " hi Number cterm=bold
    " hi Boolean cterm=bold
    " hi Float cterm=bold
    " hi Function cterm=bold
    " hi Conditional cterm=bold
    " hi Repeat cterm=bold
    " hi Label cterm=bold
    " hi Operator cterm=bold
    " hi Keyword cterm=bold
    " hi Exception cterm=bold
    " hi Include cterm=bold
    " hi Define cterm=bold
    " hi Macro cterm=bold
    " hi PreCondit cterm=bold
    " hi StorageClass cterm=bold
    " hi Structure cterm=bold
    " hi Typedef cterm=bold
    " hi Tag cterm=bold
    " hi SpecialChar cterm=bold
    " hi Delimiter cterm=bold
    " hi SpecialComment cterm=bold
    " hi Debug cterm=bold

" Remappings
    " :nmap <Leader>ss <Plug>VimwikiSplitLink
    " :nmap <Leader>vv <Plug>VimwikiVSplitLink
    :nnoremap n nzz
    :nnoremap N Nzz
    :nnoremap * *zz
    :nnoremap # #zz
    :nnoremap g* g*zz
    :nnoremap g# g#zz

augroup format_stuff
    autocmd!
    autocmd FileType,BufEnter,BufRead,BufNewFile * set formatoptions-=t
    autocmd FileType,BufEnter,BufRead,BufNewFile * set formatoptions-=c
    autocmd FileType,BufEnter,BufRead,BufNewFile * set formatoptions-=r
    autocmd FileType,BufEnter,BufRead,BufNewFile * set formatoptions-=o
    autocmd FileType,BufEnter,BufRead,BufNewFile * set formatoptions+=q
    " Default when I set this was croql
    " set formatoptions+=q
    " set formatoptions-=2vb
    " set formatoptions+=qwanl
    " Neither?=j
augroup END
