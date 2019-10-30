scriptencoding utf-8

" from sgon00's dart.vim

    syn match dartFunction "\zs\(\k\w*\)*\s*\ze("
    hi! link dartFunction Function

    syn match myCamelCase '\v(<_*\u\i*>)+'
    hi! link myCamelCase Type
    hi! link myCamelCase Structure

" if !exists("b:current_syntax")
"     finish
" endif

" syntax sync fromstart

" syntax case match

" syntax keyword dartKeyword abstract as assert async await break case catch
"     \ class const continue covariant default deferred do dynamic else enum
"     \ export extends external factory false final finally for Function get
"     \ hide if implements import in interface is library mixin new null on
"     \ operator part rethrow return set show static super switch sync this
"     \ throw true try typedef var void while with yield
" highlight link dartKeyword Keyword

" syntax keyword dartType int double num bool
" highlight link dartType Type

" syntax match dartComment "\v//.*"
" highlight link dartComment Comment

" syntax match dartOperator "\v\*"
" syntax match dartOperator "\v/"
" syntax match dartOperator "\v\+"
" syntax match dartOperator "\v-"
" syntax match dartOperator "\v\?"
" syntax match dartOperator "\v\*\="
" syntax match dartOperator "\v/\="
" syntax match dartOperator "\v\+\="
" syntax match dartOperator "\v-\="
" syntax match dartOperator "\v\="
" highlight link dartOperator Operator

" syntax region dartString start=/\v"/ skip=/\v\\./ end=/\v"/
" syntax region dartString start=/\v'/ skip=/\v\\./ end=/\v'/

" syntax match dartClass "\v\H\zs\u+\h*"
" syntax match dartClass "\v\H\zs\u+\h*\ze\H+"
" syntax match dartClass "\v\H\zs\u+\h*\ze\H+"
" syntax match dartClass "\v\(\zs\u\h*\ze\H"
" highlight link dartClass Structure

" syntax match dartMethod "\v\H\zs\h+\ze\("
" highlight link dartMethod Function

" syntax match dartParamter "\v[^A-Za-z_]+\zs\a+\ze:+\s+"
" highlight link dartParamter Statement

" TODO: parentheses, braces, and brackets

