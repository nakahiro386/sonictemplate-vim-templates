" sonictemplate-vim-templates
" Version: 0.0.1
" Author: nakahiro386 <nakahiro386@gmail.com>
" License: NYSL http://www.kmonos.net/nysl/index.en.html

if exists('g:loaded_sonictemplate_vim_templates')
  finish
endif
let g:loaded_sonictemplate_vim_templates = 1

let s:save_cpo = &cpo
set cpo&vim

let s:templates_dir = expand('<sfile>:p:h:h') . '/template'

if exists('g:sonictemplate_vim_template_dir')
  if type(g:sonictemplate_vim_template_dir) == type("")
    let g:sonictemplate_vim_template_dir = [g:sonictemplate_vim_template_dir, s:templates_dir]
  elseif type(g:sonictemplate_vim_template_dir) == type([])
    call add(g:sonictemplate_vim_template_dir, s:templates_dir)
  endif
else
  let g:sonictemplate_vim_template_dir = s:templates_dir
endif

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
