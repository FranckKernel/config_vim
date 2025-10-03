" Enable ALE linting
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 0
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" Example: enable Python + C linters
let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'c': ['gcc'],
\   'cpp': ['g++'],
\}
