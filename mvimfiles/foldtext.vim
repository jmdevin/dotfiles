function! GetFoldText() abort
    let l:text = ''
    let l:indent = indent(v:foldstart)

    " if l:indent > 0
    "     let l:text.= '>'
    "     for n in range(l:indent - 1)
    "         let l:text.= ' '
    "     endfor
    " endif

    for n in range(l:indent)
        let l:text.= ' '
    endfor

    let l:num_lines = (v:foldend - v:foldstart) + 1
    let l:text.= '[' . l:num_lines . ' lines folded here] '

    " if len(l:text) <= 60
    "     let l:len_to_add = 60 - len(l:text)
    "     let l:start_text = v:foldstart
    "     let l:text.= ''
    " endif

    return l:text
endfunction
