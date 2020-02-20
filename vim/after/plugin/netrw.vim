scriptencoding utf-8

command! HelpNetrw call EchoHelpNetrw()

function! EchoHelpNetrw() abort
    let maps = "
        \ Key         | Function                                              \n
        \ ----------------------                                              \n
        \ <CR>          Enter directory or read file                          \n
        \ <Del>         Remove file/directory                                 \n
        \ <C-H>         Edit file hiding list                                 \n
        \ <C-L>         Refresh directory listing                             \n
        \ -             Go up one directory                                   \n
        \ a             Cycle hiding/showing                                  \n
        \ c             Make browsing directory current directory             \n
        \ [count]C      Make count window editing window (default current)    \n
        \ d             Make a directory                                      \n
        \ D             Remove file(s)/director(y/ies)                        \n
        \ gb            Go to previous bookmarked directory                   \n
        \ gh            Hide/unhide dotfiles                                  \n
        \ gn            Make directory under cursor top of tree               \n
        \ i             Cycle thing/long/wide/tree listings                   \n
        \ I             Toggle displaying banner                              \n
        \ mb            Bookmark current directory                            \n
        \ mc            Copy marked files to marked-file target directory     \n
        \ md            Apply diff to marked files (up to 3)                  \n
        \ me            Place marked files on arg list and edit them          \n
        \ mf            Mark a file                                           \n
        \ mF            Unmark files                                          \n
        \ mg            Apply vimgrep to marked files                         \n
        \ mh            Toggle marked file suffixes' presence on hiding list  \n
        \ mm            Move marked files to marked-file target directory     \n
        \ mr            Mark files using a shell-style regex                  \n
        \ mt            Current browsing directory becomes markfile target    \n
        \ mu            Unmark all marked files                               \n
        \ mv            Apply arbitrary vim command to marked files           \n
        \ mx            Apply arbitrary shell command to marked files         \n
        \ mX            Apply arbitrary shell command to marked files en bloc \n
        \ mz            Compress/decompress marked files                      \n
        \ o             Enter file/directory under cursor in new split        \n
        \ p             Preview file                                          \n
        \ P             Browse in the previously used window                  \n
        \ qb            List bookmarked directories and history               \n
        \ qf            Display information on file                           \n
        \ qF            Mark files using a quickfix list                      \n
        \ qL            Mark files using a location list                      \n
        \ r             Reverse sorting order                                 \n
        \ R             Rename designated file(s)/director(y/ies)             \n
        \ s             Select sorting style: by name, time, or file size     \n
        \ t             Enter file/directory under cursor in new tab          \n
        \ u             Change to recently-visited directory                  \n
        \ U             Change to subsequently-visited directory              \n
        \ v             Enter file/directory under cursor in vsplit           \n
        \ X             Execute filename under cursor via system()            \n
        \ %             Open a new file in current browsing directory         \n
        \"

    echo maps
endfunction
