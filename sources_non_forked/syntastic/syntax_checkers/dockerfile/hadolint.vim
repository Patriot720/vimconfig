"============================================================================
"File:        hadolint.vim
"Description: Dockerfile linter written in Haskell
"             (http://hadolint.lukasmartinelli.ch/).
"Maintainer:  Jesper B. Rosenkilde <jbr at humppa dot dk>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================

if exists('g:loaded_syntastic_dockerfile_hadolint_checker')
    finish
endif
let g:loaded_syntastic_dockerfile_hadolint_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_dockerfile_hadolint_GetLocList() dict
    let makeprg = self.makeprgBuild({})

    let errorformat = '%W%f:%l %m'

    return SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat,
        \ 'subtype': 'Style',
        \ 'returns': [0, 1] })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'dockerfile',
    \ 'name': 'hadolint'})

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
