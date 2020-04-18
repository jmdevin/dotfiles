" TODO: set foldtext to display most of the text of the first folded line with
" the number of lines tacked onto the end

function! GetFoldText() abort
    let indent = indent(v:foldstart)
    let text = repeat(' ', indent)

    let num_lines = (v:foldend - v:foldstart) + 1
    let text.= '+ ' . num_lines . ' lines folded here'

    return text
endfunction
