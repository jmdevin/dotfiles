" tabpagebuflist() tabpagenr() tabpagewinnr()
" echo &columns
" %1T, %2T, etc are each tab pages label
" %X is for closing label

function! GetTabLine(n)
    let l:buflist = tabpagebuflist(a:n)
    let l:winnr = tabpagewinnr(a:n)
    let l:name = expand('#' . l:buflist[l:winnr - 1] . ':t')
    return len(l:name) > 0 ? l:name : '[no name]'
endfunction

function! SetTabLine()
    " let l:s = "%#TabInfo# %-.40{len(GetGitBranch())>0?'Git: ' ." .
    "             \ " GetGitBranch():'[no Git]'} %*"
    " let l:s = "%#TabInfo# Path: %-5.80{substitute(expand('%:p:h'), '^" .
                " \ $HOME . "', '~', '') . '/ -'}"
    let l:s = '%#TabInfo# pwd: %-5.80{GetPathWithTilde()} '

    for l:i in range(tabpagenr('$'))
        let l:s.= '%#TabLine# ||'
        let l:s.= '%'. (l:i + 1) . 'T '

        if l:i + 1 == tabpagenr()
            let l:s.= '%#ActiveTabNumber#'
        else
            let l:s.= '%#InactiveTabNumber#'
        endif

        let l:s.= '[' . (l:i + 1) . ']'

        if l:i + 1 == tabpagenr()
            let l:s.= '%#TabLineSel#'
        else
            let l:s.= '%#TabLine#'
        endif

        let l:s.= ' %{GetTabLine(' . (l:i + 1) . ')} '
        let l:s.= '(%{len(tabpagebuflist(' . (l:i + 1) . '))})'
        if l:i + 1 == tabpagenr()
            let l:s.= '%<'
        endif
    endfor

    let l:s.= '%#TabLine# ||%#TabLineFill#%T%='
    " let l:s.= '%#TabInfo# DIR: %-5.80{GetPathWithTilde()} '
    let l:s.= "%#TabInfo# dirpath: %-5.80{substitute(expand('%:p:h:t'), '^" .
                \ $HOME . "', '~', '') . '/ '}"

    return l:s
endfunction

