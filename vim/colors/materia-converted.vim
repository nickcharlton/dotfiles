" Scheme setup
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

" ! black
" *.color0: #263238 gui00
" *.color8: #707880 gui03
" 
" ! red
" *.color1: #EC5F67 gui08
" *.color9: #EC5F67 gui08
" 
" ! green
" *.color2: #8BD649 gui0B
" *.color10: #8BD649 gui0B
" 
" ! yellow
" *.color3: #FFCC00 gui0A
" *.color11: #FFCC00 gui0A
" 
" ! blue
" *.color4: #89DDFF gui0D
" *.color12: #89DDFF gui0D
" 
" ! magenta
" *.color5: #82AAFF gui0E
" *.color13: #82AAFF gui0E
" 
" ! cyan
" *.color6: #80CBC4 gui0C
" *.color14: #80CBC4 gui0C
" 
" ! white
" *.color7: #CDD3DE gui05
" *.color15: #FFFFFF gui07

" Vim editor colors
hi Normal          ctermfg=5 ctermbg=0
hi Debug           ctermfg=1
hi Directory       ctermfg=4
hi Error           ctermfg=0 ctermbg=1
hi ErrorMsg        ctermfg=1 ctermbg=0
hi Exception       ctermfg=1
hi FoldColumn      ctermfg=6
hi Folded          ctermfg=8
hi IncSearch       ctermfg=0 ctermbg=11
hi Macro           ctermfg=1
hi MatchParen      ctermfg=8
hi ModeMsg         ctermfg=2
hi MoreMsg         ctermfg=2
hi Question        ctermfg=4
hi Search          ctermfg=0 ctermbg=3
hi Substitute      ctermfg=0 ctermbg=3
hi TooLong         ctermfg=1
hi Underlined      ctermfg=1
hi Visual          ctermfg=0
hi VisualNOS       ctermfg=1
hi WarningMsg      ctermfg=1
hi WildMenu        ctermfg=1
hi Title           ctermfg=4
hi Conceal         ctermfg=4 ctermbg=0
hi Cursor          ctermfg=0 ctermbg=7
hi NonText         ctermfg=8
hi LineNr          ctermfg=8 ctermbg=0
hi SignColumn      ctermfg=3 ctermbg=0
hi StatusLine      ctermfg=8 ctermbg=0
hi StatusLineNC    ctermfg=8 ctermbg=0
hi VertSplit       ctermfg=0 ctermbg=0
hi CursorLine      ctermbg=8
hi CursorLineNr    ctermfg=8 ctermbg=0
hi QuickFixLine    ctermfg=0
hi PMenu           ctermfg=7 ctermbg=0
hi PMenuSel        ctermfg=0 ctermbg=7
hi TabLine         ctermfg=8 ctermbg=0
hi TabLineFill     ctermfg=8 ctermbg=0
hi TabLineSel      ctermfg=2 ctermbg=0
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link WildMenu      Visual
hi! link FoldColumn    SignColumn
hi! link WarningMsg    ErrorMsg
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link TabLineFill   StatusLineNC
hi! link SpecialKey    NonText

" Standard syntax highlighting
hi Boolean       ctermfg=3
hi Character     ctermfg=1
hi Comment       ctermfg=8
hi Conditional   ctermfg=5
hi Constant      ctermfg=3
hi Define        ctermfg=5
hi Delimiter     ctermfg=8
hi Float         ctermfg=3
hi Function      ctermfg=4
hi Identifier    ctermfg=1
hi Include       ctermfg=4
hi Keyword       ctermfg=5
hi Label         ctermfg=3
hi Number        ctermfg=3
hi Operator      ctermfg=7
hi PreProc       ctermfg=3
hi Repeat        ctermfg=3
hi Special       ctermfg=6
hi SpecialChar   ctermfg=8
hi Statement     ctermfg=1
hi StorageClass  ctermfg=3
hi String        ctermfg=2
hi Structure     ctermfg=5
hi Tag           ctermfg=3
hi Todo          ctermfg=3
hi Type          ctermfg=3
hi Typedef       ctermfg=3

" C highlighting
hi cOperator ctermfg=6
hi cPreCondit ctermfg=5

" C# highlighting
hi csClass                 ctermfg=3
hi csAttribute             ctermfg=3
hi csModifier              ctermfg=5
hi csType                  ctermfg=1
hi csUnspecifiedStatement  ctermfg=4
hi csContextualStatement   ctermfg=5
hi csNewDecleration        ctermfg=1

" CSS highlighting
hi cssBraces      ctermfg=7
hi cssClassName   ctermfg=5
hi cssColor       ctermfg=6

" Diff highlighting
hi DiffAdd      ctermfg=2 ctermbg=0
hi DiffChange   ctermfg=8 ctermbg=0
hi DiffDelete   ctermfg=1 ctermbg=0
hi DiffText     ctermfg=4 ctermbg=0
hi DiffAdded    ctermfg=2 ctermbg=0
hi DiffFile     ctermfg=1 ctermbg=0
hi DiffNewFile  ctermfg=2 ctermbg=0
hi DiffLine     ctermfg=4 ctermbg=0
hi DiffRemoved  ctermfg=1 ctermbg=0

" Git highlighting
hi gitcommitOverflow       ctermfg=1
hi gitcommitSummary        ctermfg=2
hi gitcommitComment        ctermfg=8
hi gitcommitUntracked      ctermfg=8
hi gitcommitDiscarded      ctermfg=8
hi gitcommitSelected       ctermfg=8
hi gitcommitHeader         ctermfg=5
hi gitcommitSelectedType   ctermfg=4
hi gitcommitUnmergedType   ctermfg=4
hi gitcommitDiscardedType  ctermfg=4
hi gitcommitBranch         ctermfg=3 cterm=bold
hi gitcommitUntrackedFile  ctermfg=3
hi gitcommitUnmergedFile   ctermfg=1 cterm=bold
hi gitcommitDiscardedFile  ctermfg=1 cterm=bold
hi gitcommitSelectedFile   ctermfg=2 cterm=bold

" GitGutter highlighting
hi GitGutterAdd           ctermfg=2, ctermfg=0
hi GitGutterChange        ctermfg=4, ctermfg=0
hi GitGutterDelete        ctermfg=1, ctermfg=0
hi GitGutterChangeDelete  ctermfg=5, ctermfg=0

" HTML highlighting
hi htmlBold    ctermfg=3
hi htmlItalic  ctermfg=5
hi htmlEndTag  ctermfg=7
hi htmlTag     ctermfg=7

" JavaScript highlighting
hi javaScript        ctermfg=7
hi javaScriptBraces  ctermfg=7
hi javaScriptNumber  ctermfg=3
" pangloss/vim-javascript highlighting
hi jsOperator          ctermfg=4
hi jsStatement         ctermfg=5
hi jsReturn            ctermfg=5
hi jsThis              ctermfg=1
hi jsClassDefinition   ctermfg=3
hi jsFunction          ctermfg=5
hi jsFuncName          ctermfg=4
hi jsFuncCall          ctermfg=4
hi jsClassFuncName     ctermfg=4
hi jsClassMethodType   ctermfg=5
hi jsRegexpString      ctermfg=6
hi jsGlobalObjects     ctermfg=3
hi jsGlobalNodeObjects ctermfg=3
hi jsExceptions        ctermfg=3
hi jsBuiltins          ctermfg=3

" Mail highlighting
hi mailQuoted1  ctermfg=3
hi mailQuoted2  ctermfg=2
hi mailQuoted3  ctermfg=5
hi mailQuoted4  ctermfg=6
hi mailQuoted5  ctermfg=4
hi mailQuoted6  ctermfg=3
hi mailURL      ctermfg=4
hi mailEmail    ctermfg=4

" Markdown highlighting
hi markdownCode               ctermfg=2
hi markdownError              ctermfg=7
hi markdownCodeBlock          ctermfg=2
hi markdownHeadingDelimiter   ctermfg=4

" PHP highlighting
hi phpMemberSelector   ctermfg=7
hi phpComparison       ctermfg=7
hi phpParent           ctermfg=7
hi phpMethodsVar       ctermfg=6

" Python highlighting
hi pythonOperator   ctermfg=5
hi pythonRepeat     ctermfg=5
hi pythonInclude    ctermfg=5
hi pythonStatement  ctermfg=5

" Ruby highlighting
hi rubyAttribute                ctermfg=4
hi rubyConstant                 ctermfg=3
hi rubyInterpolationDelimiter   ctermfg=8
hi rubyRegexp                   ctermfg=6
hi rubySymbol                   ctermfg=2
hi rubyStringDelimiter          ctermfg=2

" SASS highlighting
hi sassidChar      ctermfg=1
hi sassClassChar   ctermfg=3
hi sassInclude     ctermfg=5
hi sassMixing      ctermfg=5
hi sassMixinName   ctermfg=4

" Signify highlighting
hi SignifySignAdd      ctermfg=2 ctermbg=0
hi SignifySignChange   ctermfg=4 ctermbg=0
hi SignifySignDelete   ctermfg=1 ctermbg=0

" Spelling highlighting
hi SpellBad      cterm=undercurl
hi SpellLocal    cterm=undercurl
hi SpellCap      cterm=undercurl
hi SpellRare     cterm=undercurl

" Startify highlighting
hi StartifyBracket   ctermfg=8
hi StartifyFile      ctermfg=7
hi StartifyFooter    ctermfg=8
hi StartifyHeader    ctermfg=2
hi StartifyNumber    ctermfg=3
hi StartifyPath      ctermfg=8
hi StartifySection   ctermfg=5
hi StartifySelect    ctermfg=6
hi StartifySlash     ctermfg=8
hi StartifySpecial   ctermfg=8

" Java highlighting
hi javaOperator      ctermfg=4
