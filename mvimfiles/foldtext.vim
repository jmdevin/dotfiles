function! GetFoldText() abort
    let indent = indent(v:foldstart)
    let text = repeat(' ', indent)

    let num_lines = (v:foldend - v:foldstart) + 1
    let text.= '+ ' . num_lines . ' lines folded here'

    return text
endfunction
