let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector


nnoremap <Leader>dl :call vimspector#Launch()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>
nnoremap <Leader>dt :call vimspector#Reset()<CR>


nnoremap <Leader>bb :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>bc :call vimspector#ClearBreakpoints()<CR>


nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver


