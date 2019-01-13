" vim sytax file
" Language: sail
" (c) Alexandre Joannou, University of Cambridge

if exists("b:current_syntax")
  finish
endif

" sail primitive types
syntax keyword sailPrimitiveTypes unit int nat unsigned range atom list vector bits bit bitfield bool string real
syntax keyword sailPrimitiveTypes Order Type Int pure
" sail strings
syntax region sailStrings start=/"/ skip=/\\./ end=/"/
" sail bitstrings
"syntax match sailBitStrings /'[01][01_]*'/
" sail number
syntax match sailNumbers '\<[0-9][0-9_]*\>'
syntax match sailNumbers '\<0b[01][01_]*\>'
syntax match sailNumbers '\<0x[0-9a-fA-F][0-9a-fA-F_]*\>'
" sail todo and comments
syntax keyword sailTodo contained TODO FIXME XXX NOTE
syntax match   sailComments "//.*$" contains=sailTodo
syntax region  sailComments start="/\*" end="\*/" contains=sailTodo
" sail keywords
syntax keyword sailKeywords val forall function foreach from to cast operator
syntax keyword sailKeywords type let in default match as enum struct union
syntax keyword sailKeywords overload register effect infix infixl infixr ref
syntax keyword sailKeywords scattered clause end throw try catch if then else
" sail specials
syntax match sailSpecials '='
syntax match sailSpecials '\.'
syntax match sailSpecials ','
syntax match sailSpecials ';'
syntax match sailSpecials ':'
syntax match sailSpecials '{'
syntax match sailSpecials '}'
syntax match sailSpecials '('
syntax match sailSpecials ')'
syntax match sailSpecials '\['
syntax match sailSpecials '\]'
syntax match sailSpecials '=>'
syntax match sailSpecials '->'
" sail operators
syntax match sailOperators '+'
syntax match sailOperators '-'
syntax match sailOperators '\*'
"syntax match sailOperators '/'
syntax match sailOperators '\^'
syntax match sailOperators '\~'
syntax match sailOperators '|'
syntax match sailOperators '&'
syntax match sailOperators '=='
syntax match sailOperators '!='
syntax match sailOperators '>'
syntax match sailOperators '<'
syntax match sailOperators '>='
syntax match sailOperators '<='
syntax match sailOperators '>>'
syntax match sailOperators '<<'
" sail others
syntax keyword sailConstructors inc dec bitzero bitone undefined pure _
syntax keyword sailDfltFunc assert sizeof exit and
syntax match sailDfltFunc '@'
syntax match sailDfltFunc '\.\.'
syntax match sailDfltFunc '::'
syntax match sailDfltFunc '\[|'
syntax match sailDfltFunc '|\]'

let b:current_syntax = "sail"

highlight link sailStrings        String
"highlight link sailBitStrings     Constant
highlight link sailNumbers        Number
highlight link sailPrimitiveTypes Type
highlight link sailConstructors   Constant
"highlight link sailOperators      Operator
highlight link sailOperators      Function
highlight link sailDfltFunc       Function
highlight link sailKeywords       Keyword
highlight link sailSpecials       Operator
highlight link sailTodo           Todo
highlight link sailComments       Comment
