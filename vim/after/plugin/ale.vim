augroup set_ale_mappings
    autocmd!
    autocmd! Filetype * call SetALEMappings(expand('<amatch>'))
augroup END

