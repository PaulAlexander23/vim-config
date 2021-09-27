" Author: paulalexander23 <paulalexander23@live.co.uk>
" Description: Fixing files with fprettify.

call ale#Set('python_fprettify_executable', 'fprettify')
call ale#Set('python_fprettify_use_global', get(g:, 'ale_use_global_executables', 0))
call ale#Set('python_fprettify_options', '')

function! ale#fixers#fprettify(buffer) abort
    let l:executable = ale#python#FindExecutable(
    \   a:buffer,
    \   'python_fprettify',
    \   ['fprettify'],
    \)

    if !executable(l:executable)
        return 0
    endif

    let l:options = ale#Var(a:buffer, 'python_fprettify_options')

    return {
    \   'command': ale#Escape(l:executable)
    \       . (!empty(l:options) ? ' ' . l:options : '')
    \       . ' -',
    \}
endfunction
