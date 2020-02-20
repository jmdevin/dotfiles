augroup set_coc_mappings
    autocmd!
    autocmd Filetype * call SetCocMappings(expand('<amatch>'))
augroup END

augroup set_coc_settings_comment_string
    autocmd!
    autocmd FileType json 
        \   if expand('<afile>') =~? '.*\(\\\|/\)coc-settings\.json$'
        \ |     syntax match Comment +\/\/.\+$+
        \ |     setlocal comments=b://
        \ |     setlocal commentstring=//\ %s
        \ | endif
augroup END
