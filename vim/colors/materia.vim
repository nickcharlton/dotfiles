" Interrobang - Vim color scheme for 16-color terminals
" A modified version of noctu
" ------------------------------------------------------------
" Author(s):
"   - Noah Frederick (http://noahfrederick.com/)
"   - Luke Mitchell
" ------------------------------------------------------------

" Scheme setup
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="interrobang"

" Vim UI
hi Cursor              ctermfg=7     ctermbg=1
hi CursorLine          ctermbg=0     cterm=NONE
hi MatchParen          ctermfg=0     ctermbg=8
hi Pmenu               ctermfg=3     ctermbg=0
hi PmenuThumb          ctermbg=3
hi PmenuSBar           ctermbg=8
hi PmenuSel            ctermfg=0     ctermbg=3
hi ColorColumn         ctermbg=0
hi SpellBad            ctermfg=1     ctermbg=NONE  cterm=underline
hi SpellCap            ctermfg=10    ctermbg=NONE  cterm=underline
hi SpellRare           ctermfg=11    ctermbg=NONE  cterm=underline
hi SpellLocal          ctermfg=13    ctermbg=NONE  cterm=underline
hi NonText             ctermfg=8
hi LineNr              ctermfg=8     ctermbg=NONE
hi CursorLineNr        ctermfg=11    ctermbg=0
hi Visual              ctermfg=0     ctermbg=12
hi IncSearch           ctermfg=0     ctermbg=13    cterm=NONE
hi Search              ctermfg=0     ctermbg=3
hi StatusLine          ctermfg=7     ctermbg=0     cterm=bold
hi StatusLineNC        ctermfg=8     ctermbg=0     cterm=italic
hi VertSplit           ctermfg=0     ctermbg=0     cterm=NONE
hi TabLine             ctermfg=8     ctermbg=0     cterm=NONE
hi TabLineSel          ctermfg=7     ctermbg=0     cterm=italic
hi Folded              ctermfg=3     ctermbg=0
hi Directory           ctermfg=12
hi Title               ctermfg=3     cterm=bold
hi ErrorMsg            ctermfg=15    ctermbg=1
hi DiffAdd             ctermfg=0     ctermbg=2
hi DiffChange          ctermfg=0     ctermbg=3
hi DiffDelete          ctermfg=0     ctermbg=1
hi DiffText            ctermfg=0     ctermbg=11    cterm=bold
hi User1               ctermfg=1     ctermbg=0
hi User2               ctermfg=15    ctermbg=8
hi User3               ctermfg=15    ctermbg=3
hi User4               ctermfg=15    ctermbg=0
hi User5               ctermfg=15    ctermbg=13
hi User6               ctermfg=15    ctermbg=14
hi User7               ctermfg=15    ctermbg=12
hi User8               ctermfg=15    ctermbg=11
hi User9               ctermfg=15    ctermbg=8
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link WildMenu      Visual
hi! link FoldColumn    SignColumn
hi! link WarningMsg    ErrorMsg
hi! link MoreMsg       Title
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link TabLineFill   StatusLineNC
hi! link SpecialKey    NonText

" Generic syntax
hi Delimiter       ctermfg=7
hi Comment         ctermfg=8   cterm=italic
hi Underlined      ctermfg=4   cterm=underline
hi Type            ctermfg=4
hi String          ctermfg=12
hi Keyword         ctermfg=2   cterm=bold
hi Todo            ctermfg=15  ctermbg=NONE cterm=bold,underline
hi Function        ctermfg=9   cterm=bold
hi Identifier      ctermfg=7   cterm=NONE
hi Statement       ctermfg=2   cterm=bold
hi Constant        ctermfg=13
hi Number          ctermfg=12
hi Boolean         ctermfg=4
hi Special         ctermfg=13
hi Ignore          ctermfg=0   cterm=italic
hi! link Operator  Delimiter
hi! link PreProc   Delimiter
hi! link Error     ErrorMsg

" HTML
hi htmlTagName              ctermfg=8
hi htmlTag                  ctermfg=7
hi htmlArg                  ctermfg=10
hi htmlH1                   cterm=bold
hi htmlBold                 cterm=bold
hi htmlItalic               cterm=underline
hi htmlUnderline            cterm=underline
hi htmlBoldItalic           cterm=bold,underline
hi htmlBoldUnderline        cterm=bold,underline
hi htmlUnderlineItalic      cterm=underline
hi htmlBoldUnderlineItalic  cterm=bold,underline
hi! link htmlLink           Underlined
hi! link htmlEndTag         htmlTag

" XML/JSX
hi! link xmlTagName htmlTagName
hi! link xmlEndTagName  htmlTagName
hi! link xmlTag     htmlTagName
hi! link xmlEndTag     htmlTagName
hi! link xmlString  htmlString
hi! link xmlAttrib  htmlArg
hi! link xmlEqual   xmlTag
hi! jsxComponentName ctermfg=11
hi! jsxExpressionBlock ctermfg=8

" JavaScript
hi! link javaScript        Normal
hi! link javaScriptBraces  Delimiter
hi  jsImport ctermfg=2
hi! link jsExport jsImport
hi! jsClassDefinition ctermfg=11
hi! jsTemplateBraces ctermfg=11
hi! jsObjectKey ctermfg=7
hi! jsFuncCall ctermfg=5
hi! jsBlock ctermfg=5

" CSS/SCSS
hi cssClassName       ctermfg=11
hi cssClassNameDot    ctermfg=11 cterm=bold
hi cssUnitDecorators  ctermfg=13
hi cssBraces          ctermfg=7
hi cssIncludeKeyword  ctermfg=8
hi! link cssTagName cssClassName
hi! link scssSelectorName cssClassName
hi! link scssSelectorChar cssClassNameDot
hi! link scssProperty cssTextProp
hi scssDefinition ctermfg=7
hi scssVariable ctermfg=2

" Markdown
hi! link markdownHeadingRule        NonText
hi! link markdownHeadingDelimiter   markdownHeadingRule
hi! link markdownLinkDelimiter      Delimiter
hi! link markdownURLDelimiter       Delimiter
hi! link markdownCodeDelimiter      NonText
hi! link markdownLinkTextDelimiter  markdownLinkDelimiter
hi! link markdownUrl                markdownLinkText
hi! link markdownAutomaticLink      markdownLinkText
hi! link markdownCodeBlock          String
hi markdownCode                     cterm=bold
hi markdownBold                     cterm=bold
hi markdownItalic                   cterm=italic

" Ruby
hi! link rubyDefine                 Statement
hi! link rubyLocalVariableOrMethod  Identifier
hi! link rubyConstant               Constant
hi! link rubyInstanceVariable       Number
hi! link rubyStringDelimiter        rubyString

" Git
hi gitCommitBranch               ctermfg=3
hi gitCommitSelectedType         ctermfg=10
hi gitCommitSelectedFile         ctermfg=2
hi gitCommitUnmergedType         ctermfg=9
hi gitCommitUnmergedFile         ctermfg=1
hi! link gitCommitFile           Directory
hi! link gitCommitUntrackedFile  gitCommitUnmergedFile
hi! link gitCommitDiscardedType  gitCommitUnmergedType
hi! link gitCommitDiscardedFile  gitCommitUnmergedFile

" Vim
hi! link vimSetSep    Delimiter
hi! link vimContinue  Delimiter
hi! link vimHiAttrib  Constant

" Vimwiki
hi! link VimwikiHeaderChar  markdownHeadingDelimiter
hi! link VimwikiList        markdownListMarker
hi! link VimwikiCode        markdownCode
hi! link VimwikiCodeChar    markdownCodeDelimiter

" Help
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

" Shell
hi shDerefSimple             ctermfg=11
hi! link shDerefVar          shDerefSimple

" Plugins
" Sneak
hi Sneak                     ctermbg=3 ctermfg=0 cterm=italic

" Gina
hi! diffLine ctermfg=8
hi! diffFile ctermfg=3
hi! diffAdded ctermfg=2
hi! diffRemoved ctermfg=1

" WTF syntax is this!?
map <F10> :echo "hi => " . synIDattr(synID(line("."),col("."),1),"name") . " \| trans => "
  \ . synIDattr(synID(line("."),col("."),0),"name") . " \| lo => "
  \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
