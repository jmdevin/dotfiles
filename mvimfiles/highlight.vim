" source $VIMRUNTIME/syntax/hitest.vim

" My preferred colors
    " Gold/yellow (for classes)         221
        " maybe                         215
    " Yellow (for alerts)               220
    " Red (not errors)                  204
    " Red (errors)                      1
        " maybe                         9
    " Orange                            173 or 003 or 166
        " what about 202
    " Blue                              74
        " or                            12
    " Green                             107
    " Purple                            139
    " Green/grays                       23, 30, 37, 44

" Colors of solarized-dark
    hi HiCyan               ctermfg=014
    hi HiGreyBlue           ctermfg=006
    hi HiLightBlue          ctermfg=012
    hi HIDarkBlue           ctermfg=004
    hi HiOrange             ctermfg=003
    hi HiLightRed           ctermfg=009
    hi HiDarkRed            ctermfg=001
    hi HiLightGreen         ctermfg=010
    hi HiDarkGreen          ctermfg=002
    hi HiYellow             ctermfg=220
    hi HiWhite              ctermfg=007
    hi HiOffWhite           ctermfg=015
    hi HiPurple             ctermfg=013
    hi HiGrey               ctermfg=066

" Colors of cosmic latte
    " Blue                  67
    " Orange                137
    " Red                   168
    " Green                 107
    " Turquoise             37
    " Purple                139

    " Constant              ctermfg=67
    " Special, Tag, SpecialChar, Delimiter, SpecialComment ctermfg=137
    " Identifier            ctermfg=168
    " Statement             ctermfg=107
    " PreProc, Include, Define, Macro, PreCondit ctermfg=37
    " Type, StorageClass, Structure, Typedef ctermfg=139
    " Underlined            cterm=underline
    " Error                 ctermbg=168
    " String, Character, Number, Boolean, Float ctermfg=67
    " Function              ctermfg=168
    " Conditional, Repeat, Label, Operator, Keyword, Exception ctermfg=107
" Colors of minimalist
    " Blue                  74
    " Light blue            117
    " Red                   167
    " Green                 150
    " Orange                173
    " Purple                140

    " Constant, Character, Float Purple
    " String                Green
    " Number, Boolean       Orange
    " Identifier            White
    " Function              Blue
    " Statement, Exception  Red
    " Conditional, Repeat, Keyword Purple
    " Label                 Green
    " Operator              Light blue
    " PreProc, Include, Define, Macro, PreCondit Purple
    " Type, Typedef         Purple
    " StorageClass, Structure Orange
    " Special, SpecialChar, Delimiter, Debug Light blue
    " Tag                   Purple

" Custom highlight groups
    hi clear RedAlert
    hi RedAlert                 ctermfg=011 ctermbg=001
    hi clear LightRedHighlight
    hi LightRedHighlight        ctermfg=255 ctermbg=9
    hi clear YellowHighlight
    hi YellowHighlight          ctermfg=016 ctermbg=220

    hi clear TabInfo
    hi TabInfo                  ctermfg=44  ctermbg=238
    hi clear ActiveTabNumber
    hi ActiveTabNumber          ctermfg=202 ctermbg=237
    hi clear InactiveTabNumber
    hi InactiveTabNumber        ctermfg=202 ctermbg=236

    hi clear UnsavedFile
    hi link UnsavedFile WarningMsg

    hi clear NormalMode
    hi link NormalMode StatusLine
    hi clear InsertMode
    hi InsertMode               ctermfg=220
    hi clear VisualMode
    hi link VisualMode YellowHighlight

" Set highlight groups
    hi clear Normal
    hi Normal                   ctermfg=007 ctermbg=235

    " Keep Search and IncSearch different colors so you can tell where the
    " current match is while searching (see c_ctrl-g c_ctrl-t)
    hi clear Search
    hi link Search YellowHighlight
    " hi Search                   ctermfg=235 ctermbg=007
    hi clear IncSearch
    hi link IncSearch RedAlert

    hi clear Visual
    hi Visual                                           cterm=bold,reverse
    hi clear VisualNOS
    hi link VisualNOS Visual

    hi clear LineNr
    hi LineNr                   ctermfg=023
    hi clear CursorLineNr
    hi CursorLineNr             ctermfg=037 ctermbg=238
    hi clear SignColumn
    hi link SignColumn HiLightBlue
    hi clear FoldColumn
    hi link FoldColumn SignColumn

    " hi Statusline               ctermfg=253 ctermbg=024
    hi clear StatusLine
    hi StatusLine               ctermfg=12  ctermbg=238
    hi clear StatusLineNC
    hi StatusLineNC             ctermfg=066 ctermbg=237
    hi clear StatusLineTerm
    hi StatusLineTerm           ctermfg=040 ctermbg=233
    hi clear StatusLineTermNC
    hi StatusLineTermNC         ctermfg=002 ctermbg=234

    hi clear ModeNormal
    hi link ModeNormal StatusLine
    hi clear ModeInsert
    hi link ModeInsert ModeNormal
    hi clear ModeVisual
    hi link ModeVisual ModeNormal
    hi clear ModeReplace
    hi link ModeReplace ModeNormal
    hi clear ModeCtrlO
    hi ModeCtrlO                ctermfg=234 ctermbg=208
    hi clear ModeCompletion
    hi link ModeCompletion ModeCtrlO
    hi clear ModeCommand
    hi ModeCommand              ctermfg=234 ctermbg=140

    hi clear VertSplit
    " hi link VertSplit StatusLineNC
    hi VertSplit                ctermfg=237

    hi clear TabLine
    hi TabLine                  ctermfg=66  ctermbg=236
    hi clear TabLineSel
    hi link TabLineSel StatusLine
    hi clear TabLineFill
    hi link TabLineFill TabLine

    hi clear CursorLine
    " hi CursorLine
    hi clear CursorColumn
    " hi CursorColumn
    hi clear ColorColumn
    " hi ColorColumn

    hi clear Folded
    hi link Folded HiGreyBlue
    hi clear Todo
    hi Todo                     ctermfg=011 ctermbg=023
    hi clear Error
    hi link Error LightRedHighlight
    hi clear ErrorMsg
    hi link ErrorMsg LightRedHighlight
    hi clear WarningMsg
    hi link WarningMsg YellowHighlight

    hi clear NonText
    hi NonText                  ctermfg=215
    hi clear SpecialKey
    hi link SpecialKey NonText
    hi clear EndOfBuffer
    hi link EndOfBuffer NonText

    hi clear Comment
    hi Comment                  ctermfg=109
    hi clear Constant
    " hi Constant                 ctermfg=173
    hi Constant                 ctermfg=197
    hi clear String
    hi String                   ctermfg=37
    hi clear Character
    hi link Character String
    hi clear Number
    hi link Number Constant
    hi clear Boolean
    hi link Boolean Constant
    hi clear Float
    hi link Float Number

    hi clear Identifier
    hi Identifier               ctermfg=107
    hi clear Function
    hi Function                 ctermfg=204

    hi clear Statement
    hi Statement                ctermfg=74
    hi clear Conditional
    hi Conditional              ctermfg=74
    hi clear Repeat
    hi link Repeat Conditional
    hi clear Label
    hi link Label Conditional
    hi clear Operator
    hi link Operator Conditional
    hi clear Keyword
    hi Keyword                  ctermfg=140
    hi clear Exception
    hi Exception                ctermfg=204

    hi clear PreProc
    hi PreProc                  ctermfg=140
    hi clear Include
    hi link Include PreProc
    hi clear Define
    hi link Define PreProc
    hi clear Macro
    hi link Macro PreProc
    hi clear PreCondit
    hi link PreCondit PreProc

    hi clear Type
    hi Type                     ctermfg=140
    hi clear StorageClass
    hi link StorageClass Type
    hi clear Structure
    hi Structure                ctermfg=214
    hi clear Typedef
    hi link Typedef Type

    hi clear Special
    " hi Special                  ctermfg=37
    hi Special                  ctermfg=173
    hi clear SpecialChar
    hi link SpecialChar Special
    hi clear Tag
    hi link Tag Special
    hi clear Delimiter
    " hi Delimiter                ctermfg=107
    hi link Delimiter Special
    hi clear SpecialComment
    hi link SpecialComment Special
    hi clear Debug
    hi link Debug Special

    hi clear Underlined
    hi Underlined               cterm=underline

    " hi clear Ignore
    " hi Ignore

" ALE Groups
    " hi link ALEError LightRedHighlight
    hi clear ALEError
    hi ALEError                 ctermfg=255 ctermbg=9
    " hi link ALEErrorLine ALEError
    hi link ALEErrorSign ALEError
    hi link ALEInfo ALEWarning
    hi link ALEInfoSign ALEInfo
    " hi link ALEInfoLine ALEInfo
    hi link ALEStyleError ALEError
    hi link ALEStyleErrorSign ALEStyleError
    hi link ALEStyleWarning ALEWarning
    hi link ALEStyleWarningSign ALEStyleWarning
    hi link ALEVirtualTextError ALEError
    hi link ALEVirtualTextInfo ALEWarning
    hi link ALEVirtualTextStyleError ALEError
    hi link ALEVirtualTextStyleWarning ALEWarning
    hi link ALEVirtualTextWarning ALEWarning
    " hi link ALEWarning YellowHighlight
    hi clear ALEWarning
    hi ALEWarning               ctermfg=16  ctermbg=214
    " hi link ALEWarningLine ALEWarning
    hi link ALEWarningSign ALEWarning

" Coc Groups
    " hi clear CocErrorSign
    " hi link CocErrorSign ALEError
    " hi clear CocWarningSign
    " hi link CocWarningSign ALEWarning
    " hi clear CocInfoSign
    " hi link CocInfoSign ALEInfo
    " hi clear CocHintSign
    " hi link CocHintSign ALEInfo

    hi clear CocUnderline
    " hi CocUnderline
    " hi clear CocErrorHighlight
    " hi link CocErrorHighlight ALEError
    " hi clear CocWarningHighlight
    " hi link CocWarningHighlight ALEWarning
    " hi clear CocInfoHighlight
    " hi link CocInfoHighlight ALEInfo
    " hi clear CocHintHighlight
    " hi link CocHintHighlight ALEInfo

    " hi clear CocHighlightText
    " hi CocHighlightText
    " hi clear CocHighlightTextRead
    " hi CocHighlightTextRead
    " hi clear CocHighlightTextWrite
    " hi CocHighlightTextWrite

    " hi clear CocErrorLine
    " hi CocErrorLine
    " hi clear CocWarningLine
    " hi CocWarningLine
    " hi clear CocInfoLine
    " hi CocInfoLine
    " hi clear CocHintLine
    " hi CocHintLine

    hi clear CocFloating
    hi CocFloating                  ctermfg=44  ctermbg=238
    hi clear CocErrorFloat
    hi CocErrorFloat                ctermfg=9   ctermbg=238
    hi clear CocWarningFloat
    hi CocWarningFloat              ctermfg=220 ctermbg=238
    hi clear CocInfoFloat
    hi link CocInfoFloat CocFloating
    hi clear CocHintFloat
    hi link CocHintFloat CocFloating
    " hi clear CocUnderline

" To be implemented
    " hi clear QuickFixLine
    " hi QuickFixLine             ctermfg=220 ctermbg=236
    " hi SpecialKey
    hi clear Directory
    hi Directory                ctermfg=74
    hi clear MoreMsg
    hi link MoreMsg ModeCommand
    hi clear ModeMsg
    hi link ModeMsg ModeCommand
    hi clear Question
    hi link Question ModeCommand
    " hi Title
    hi clear WildMenu
    hi link WildMenu YellowHighlight
    hi clear DiffAdd
    hi DiffAdd                  ctermfg=255 ctermbg=2
    hi clear DiffChange
    hi DiffChange               ctermfg=16  ctermbg=3
    hi clear DiffDelete
    hi DiffDelete               ctermfg=255 ctermbg=1
    hi clear DiffText
    hi DiffText                 ctermfg=16  ctermbg=11
    hi clear SpellBad
    hi link SpellBad WarningMsg
    hi clear SpellCap
    hi SpellCap                 cterm=undercurl
    hi clear SpellRare
    hi SpellRare                cterm=undercurl
    hi clear SpellLocal
    hi SpellLocal               cterm=undercurl
    hi clear Pmenu
    hi Pmenu                    ctermfg=7   ctermbg=233
    hi clear PmenuSel
    hi PmenuSel                 ctermfg=16  ctermbg=15
    hi clear PmenuSbar
    hi link PmenuSbar Normal
    hi clear PmenuThumb
    hi PmenuThumb               cterm=reverse
    " hi Conceal
    hi clear MatchParen
    hi MatchParen               cterm=underline
    " hi ToolbarLine
    " hi ToolbarButton

" Default Syntax Highlight Groups (see :h syntax)
    " Comment

    " Constant
    " String
    " Character
    " Number
    " Boolean
    " Float

    " Identifier
    " Function

    " Statement
    " Conditional
    " Repeat
    " Label
    " Operator
    " Keyword
    " Exception

    " PreProc
    " Include
    " Define
    " Macro
    " PreCondit

    " Type
    " StorageClass
    " Structure
    " Typedef

    " Special
    " SpecialChar
    " Tag
    " Delimiter
    " SpecialComment
    " Debug

    " Underlined
    " Ignore
