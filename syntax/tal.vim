" Vim syntax file
" Language: uxntal
" Maintainer: Nicolas MacArthur
" Latest Revision: 10th November 2021

if !exists("main_syntax")
    if exists("b:current_syntax")
        finish
    endif
    let main_syntax = 'uxntal'
endif

" Keywords
syn keyword talLanguageKeywords BRK LIT INC POP DUP NIP SWP OVR ROT EQU NEQ GTH LTH JMP JCN JSR STH LDZ STZ LDR STR LDA STA DEI DEO ADD SUB MUL DIV AND ORA EOR SFT

syn match talMacro '/^%[\w\-]+/gmi'
syn match talLabel '/^@[\w\-]+/gmi'

hi def link talLanguageKeywords     Keyword
hi def link talMacro                Macro
hi def link talLabel                Macro
