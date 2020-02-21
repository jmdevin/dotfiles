scriptencoding utf-8

" Notes and todo's
    " TODO: add state of g/b:doubling to statusline

    " TODO: Add paste and spell indicators. Maybe keymap or whatever greek
    " thing too.

    " TODO: make a model statusline
        " Left Side:
        " mode filename modded? [filetype]
        " Right Side:
        " encoding(if_not_utf8)? paste? spell? column L:total_lines [ale/coc?]
        " widthxheight |winnr.bufnr|

    " TODO: change statusline to not have many highlights. Mostly just the
    " normal colors and then inverted.

    " TODO: combine ale and coc highlights. Make easy way to switch them on
    " and off?

    " TODO: change highlight for current error in qflist and llist

    " TODO: change highlights for search and search's current match

    " TODO: display length of visually selected area in statusline

" Utility Data
    " Highlight Colors
        hi User1    ctermfg=11          ctermbg=234
            " Insert
        hi User2    ctermfg=16          ctermbg=12
            " Visual
        hi link User3 YellowHighlight
            " Replace mode
        hi User4    ctermfg=208         ctermbg=234
            " Actions
        hi User5    ctermfg=16          ctermbg=13
            " Prompts
        hi User6    ctermfg=13          ctermbg=234
            " Command
        hi link User7 RedAlert
            " Modified Files/Unknown

    let s:modes = {
        \ 'n':        ['-- normal --%* ', '%#ModeNormal#'],
        \ 'niI':      [' ins-ctrl-o %* ', '%#ModeCtrlO#'],
        \ 'niR':      [' rep-ctrl-o %* ', '%#ModeCtrlO#'],
        \ 'niV':      ['v-rep-ctrl-o%* ', '%#ModeCtrlO#'],
        \ 'v':        ['-- visual --%* ', '%#ModeVisual#'],
        \ 'V':        ['- vis-line -%* ', '%#ModeVisual#'],
        \ '':       ['- vis-block -%*', '%#ModeVisual#'],
        \ 's':        ['-- select --%* ', '%#ModeVisual#'],
        \ 'S':        ['- sel-line -%* ', '%#ModeVisual#'],
        \ '':       ['- sel-block -%*', '%#ModeVisual#'],
        \ 'i':        ['-- insert --%* ', '%#ModeInsert#'],
        \ 'ic':       ['ins-gn-compl%* ', '%#ModeCompletion#'],
        \ 'ix':       ['ins-ct-compl%* ', '%#ModeCompletion#'],
        \ 'R':        ['-- replace --%*', '%#ModeReplace#'],
        \ 'Rc':       ['rep-gn-compl%* ', '%#ModeCompletion#'],
        \ 'Rv':       ['- v-replace -%*', '%#ModeReplace#'],
        \ 'Rx':       ['rep-ct-compl%* ', '%#ModeCompletion#'],
        \ 'c':        ['-- command --%*', '%#ModeCommand#'],
        \ 'cv':       ['-- ex-vim --%* ', '%#ModeEx#'],
        \ 'ce':       ['- ex-normal -%*', '%#ModeEx#'],
        \ 'r':        ['prompt-enter%* ', '%#ModePrompt#'],
        \ 'rm':       ['prompt--more%* ', '%#ModePrompt#'],
        \ 'r?':       ['prompt-cnfrm%* ', '%#ModePrompt#'],
        \ '!':        [' shell-mode %* ', '%#ModeShell#'],
        \ 't':        ['- terminal -%* ', '%#ModeTerminal#'],
        \ 'no':       [' op-pending %* ', '%#Error#'],
        \ 'nov':      [' op-pending %* ', '%#Error#'],
        \ 'noV':      [' op-pending %* ', '%#Error#'],
        \ 'no':     [' op-pending %* ', '%#Error#'],
        \ 'inactive': ['- inactive -%* ', '%*'],
        \ }
        " Unicode hex: \x{16} or 0x16 is ^V
            " Hit <C-V> then x16
        " Unicode hex: \x{13} or 0x13 is ^S
            " Hit <C-V> then x13

" Utility Functions
    function! GetModeColor() abort
        return get(s:modes, mode(1), ['', '%*'])[1]
    endfunction

    function! GetModeLabel() abort
        return get(s:modes, mode(1), ['FIX ME', ''])[0]
    endfunction

    function! GetParentDirName()
        " This gives ..//file.ext when editing /file.ext
        let l:fileDir=expand('%:p:h:t')
        return l:fileDir
    endfunction

    function! GetPathWithTilde()
        let l:almost = substitute(getcwd(0), '^' . $HOME . '$\|^' . $HOME .
                    \ '/', '~/', '')
        return substitute(l:almost, '.*[^/]$', l:almost . '/', '')
    endfunction

    function! GetDirectory()
        let l:home = substitute($HOME, '.*/', '', '')
        return "%{substitute(expand('%:p:h:t'), '" . l:home . "$', '~', '')}/"
    endfunction

    function! GetTotalLines()
        return '%003.6L'
    endfunction

    function! GetWindowDimensions()
        return '%.3{winwidth(0)}x%.2{winheight(0)}'
    endfunction

    function! GetFileTypeWtihSpaceBefore()
        return '%( %.10y%)'
    endfunction

    function! GetWindowAndBufferNumbers()
        return '|%.3n·%.2{winnr()}|'
    endfunction

    function! GetWindowNumber()
        return 'W:%.2{winnr()}'
    endfunction

    function! GetFileName()
        let l:filename = expand('%:t')
        if len(l:filename) == 0
            return '[no name]'
        else
            return l:filename
        endif
    endfunction

    function! GetALELinterCount() abort
        let l:count = ale#statusline#Count(bufnr(''))

        " let l:all_errors = l:count.error + l:count.style_error
        " let l:all_non_errors = l:count.total - l:all_errors

        " return printf('E:%d·W:%d', l:all_errors, l:all_non_errors)
        return l:count
    endfunction

    function! GetALEFileErrorCount() abort
        let l:count = ale#statusline#Count(bufnr(''))

        let l:all_errors = l:count.error + l:count.style_error

        return l:all_errors
    endfunction

    function! GetALEFileNonErrorCount() abort
        let l:count = ale#statusline#Count(bufnr(''))

        let l:all_errors = l:count.error + l:count.style_error
        let l:all_non_errors = l:count.total - l:all_errors

        return l:all_non_errors
    endfunction

    function! GetGitBranch() abort
        " check if expand('%') has len and if so lcd
        try
            silent lcd %:h
        catch /.*/
            return ''
        endtry

        let l:branch = system('git symbolic-ref --short HEAD 2>/dev/null')
        let l:branch = substitute(l:branch, '[^A-Za-z0-9/]', '', '')
        silent lcd -

        return l:branch
    endfunction

" Set number functions
    function! SetNumberColumnActive()
        if &buftype =~# 'help\|terminal\|quickfix\|prompt\|nofile'
            setlocal nonumber
            setlocal norelativenumber
        else
            setlocal number
            setlocal relativenumber
            hi CursorLineNr ctermfg=037 ctermbg=238
        endif
    endfunction

    function! SetNumberColumnInactive()
        if &buftype =~# 'help\|terminal\|quickfix\|prompt\|nofile'
            setlocal nonumber
            setlocal norelativenumber
        else
            hi CursorLineNr ctermfg=023 ctermbg=235
            setlocal norelativenumber
        endif
    endfunction

" Get line functions
    function! GetStatusLineActive()
        " Left side
            let l:status = GetModeColor() . GetModeLabel() . '%* '
            " let l:status.= GetModeLabel() . '%* '
            let l:status.= "%#Error#%{&modified?GetFileName():''}%*"
            let l:status.= "%*%{&modified?'':GetFileName()}%*"
            let l:status.= GetFileTypeWtihSpaceBefore()
            let l:status.= ' %#TabLineFill#'
            " let l:status.= ' %#User8#%*%#VertSplit#▶'
            " let l:status.= ' %#User8#%{nr2char(11208, 1)}%{nr2char(9654, 1)}%*%#VertSplit#'
            " u25b6 is right-pointing triangle
            " u25c0 is left-pointing triangle
            " let l:status.= g:coc_status

        let l:status.= '%='

        " Right side
            " let l:status.= 'John ♡''s Meghan '
            let l:status.= "%#WarningMsg#%{&paste?'paste':''}"
            let l:status.= "%*%{&paste&&&encoding!=#'utf-8'?' ':''}"
            let l:status.= "%#WarningMsg#%{&encoding==#'utf-8'?'':&encoding}"
            let l:status.= '%<'
            let l:status.= '%* '
            let l:status.= "%#LightRedHighlight#%{virtcol('.')>80?virtcol('.'):''}%*"
            let l:status.= "%3*%{virtcol('.')<=80&&virtcol('.')>70?virtcol('.')"
                        \ . ":''}%*"
            let l:status.= "%*%{virtcol('.')<=70?virtcol('.'):''}"
            let l:status.= ' L:%02.6L '
            " let l:status.= '.' . GetTotalLines() . ' '
            " ale lints
                let l:status.= "%#LightRedHighlight#%{len(ale#linter#Get(&l:ft))>0?
                            \ (GetALEFileErrorCount()==0?'':'[E:'.
                            \ GetALEFileErrorCount().']'):''}%*"
                let l:status.= "%{len(ale#linter#Get(&l:ft))>0?
                            \ (GetALEFileErrorCount()==0?'[E:'.
                            \ GetALEFileErrorCount().']':''):''}%*"
                let l:status.= "%#YellowHighlight#%{len(ale#linter#Get(&l:ft))>0?
                            \ (GetALEFileNonErrorCount()==0?'':'[W:'.
                            \ GetALEFileNonErrorCount().']'):''}%*"
                let l:status.= "%{len(ale#linter#Get(&l:ft))>0?
                            \ (GetALEFileNonErrorCount()==0?'[W:'.
                            \ GetALEFileNonErrorCount().']':''):''}%*"
                let l:status.= "%{len(ale#linter#Get(&l:ft))>0?'':'[-nolint-]'}"
            let l:status.= ' ' . GetWindowDimensions()
            let l:status.= ' ' . GetWindowAndBufferNumbers()

        return l:status
    endfunction

    function! GetStatusLineInactive()
        " Left side
            let l:status = '- inactive -  '
            let l:status.= "%#LightRedHighlight#%{&modified?GetFileName():''}%*"
            let l:status.= "%*%{&modified?'':GetFileName()}%*"
            let l:status.= GetFileTypeWtihSpaceBefore()
            let l:status.= ' %#TabLineFill#'

        let l:status.= '%='

        " Right side
            let l:status.= '%<%* '
            let l:status.= 'L:' . GetTotalLines() . ' '
            " ale lints
                let l:status.= "%#LightRedHighlight#%{len(ale#linter#Get(&l:ft))>0?
                            \ (GetALEFileErrorCount()==0?'':'[E:'.
                            \ GetALEFileErrorCount().']'):''}%*"
                let l:status.= "%{len(ale#linter#Get(&l:ft))>0?
                            \ (GetALEFileErrorCount()==0?'[E:'.
                            \ GetALEFileErrorCount().']':''):''}%*"
                let l:status.= "%#YellowHighlight#%{len(ale#linter#Get(&l:ft))>0?
                            \ (GetALEFileNonErrorCount()==0?'':'[W:'.
                            \ GetALEFileNonErrorCount().']'):''}%*"
                let l:status.= "%{len(ale#linter#Get(&l:ft))>0?
                            \ (GetALEFileNonErrorCount()==0?'[W:'.
                            \ GetALEFileNonErrorCount().']':''):''}%*"
                let l:status.= "%{len(ale#linter#Get(&l:ft))>0?'':'[-nolint-]'}"
            let l:status.= ' ' . GetWindowDimensions()
            let l:status.= ' ' . GetWindowAndBufferNumbers()

        return l:status
    endfunction

    function! GetStatusLineActiveTerminal()
        " Left side
            let l:status = GetModeLabel()
            let l:status.= " %{expand('%:t')}"

        let l:status.= '%='

        " Right side
            let l:status.= '%<'
            let l:status.= GetWindowDimensions()
            let l:status.= ' | ' . GetWindowNumber()

        return l:status
    endfunction

    function! GetStatusLineInactiveTerminal()
        " Left side
            let l:status = '- inactive -'
            let l:status.= " %{expand('%:t')}"

        let l:status.= '%='

        " Right side
            let l:status.= '%<'
            let l:status.= GetWindowDimensions()
            let l:status.= ' | ' . GetWindowNumber()

        return l:status
    endfunction

    function! GetStatusLineActiveNetrw()
        " Left side
            let l:status = " %{expand('%:p:h')}"

        let l:status.= '%='

        " Right side
            let l:status.= '%<'
            let l:status.= GetWindowDimensions()
            let l:status.= ' | ' . GetWindowNumber()

        return l:status
    endfunction

    function! GetStatusLineQuickfix()
        " left side
            let l:status = ' %f'

        let l:status.= '%='

        " right side
            " let l:status.= 'Total:%L'
            let l:status.= GetWindowDimensions()
            let l:status.= ' |' . GetWindowNumber() . '|'

        return l:status
    endfunction

" Set line functions
    function! SetStatusLineActive()
        " buftypes: quickfix, help, terminal, prompt
        if &buftype ==# 'terminal'
            setlocal statusline=%!GetStatusLineActiveTerminal()
        elseif &filetype ==# 'netrw'
            setlocal statusline=%!GetStatusLineActiveNetrw()
        elseif &buftype ==# 'quickfix'
            setlocal statusline=%!GetStatusLineQuickfix()
        elseif &buftype ==# 'prompt'
            return
        " elseif &previewwindow
        else
            setlocal statusline=%!GetStatusLineActive()
        endif
    endfunction

    function! SetStatusLineInactive()
        if &buftype ==# 'terminal'
            setlocal statusline=%!GetStatusLineInactiveTerminal()
        elseif &filetype ==# 'netrw'
            setlocal statusline=%!GetStatusLineActiveNetrw()
        elseif &buftype ==# 'quickfix'
            setlocal statusline=%!GetStatusLineQuickfix()
        elseif &buftype ==# 'prompt'
            return
        " elseif &previewwindow
        else
            setlocal statusline=%!GetStatusLineInactive()
        endif
    endfunction

