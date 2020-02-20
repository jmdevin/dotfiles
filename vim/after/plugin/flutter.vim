augroup set_flutter_mappings
    autocmd!
    autocmd Filetype * call SetFlutterMappings(expand('<amatch>'))
augroup END
