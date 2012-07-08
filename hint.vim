" Vim syntax file
" Language: hints
" Maintainer: jwm
" Latest Revision: 26 January 2010

" USAGE:
"   Unless you set up a particular file extension for your hints file, I
"   recommend adding the following line somewhere in your hints file:
"     /////   vim: set ft=hint:

" NOTES:
"   I'm pretty certain some of these matches could be done better, but theyr
"   seem to work alright for now.

if exists("b:current_syntax")
  finish
endif

syn keyword     hintTodo      TODO contained
syn match hintCommentL '^/////[^$]*$' contains=hintTodo
syn match hintDescription ' (.*)$'


hi def link hintCommentL    Comment
"hi def link hintDescription String     "red
"hi def link hintDescription Statement  "green
hi def link hintDescription Type
hi def link hintTodo        Todo

let b:current_syntax = "hint"

