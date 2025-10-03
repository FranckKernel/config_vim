function! RunFile()
    let l:ext = expand('%:e')

    " Configure makeprg and errorformat
    if &filetype ==# 'python' || l:ext ==# 'py'
        setlocal makeprg=python3\ %
        " Python traceback format
        setlocal errorformat=%E\ \ File\ \"%f\"\\,\ line\ %l\\,%m,%C\ \ \ \ %.%#,%Z%[%^\ ]%#%m
    elseif l:ext ==# 'c'
        setlocal makeprg=gcc\ %\ -o\ /tmp/tmp_exec\ \&\&\ /tmp/tmp_exec
        setlocal errorformat=%f:%l:%c:\ %m
    elseif l:ext ==# 'cpp'
        setlocal makeprg=g++\ %\ -o\ /tmp/tmp_exec\ \&\&\ /tmp/tmp_exec
        setlocal errorformat=%f:%l:%c:\ %m
    elseif &filetype ==# 'sh' || l:ext ==# 'sh'
        setlocal makeprg=bash\ %
        setlocal errorformat=%f:%l:\ %m
    else
        echo "No runner for " . l:ext
        return
    endif

    " Clear old quickfix entries
    call setqflist([])

    " Run the program silently (avoid hit-enter prompt)
    silent! make | redraw!

    " If errors exist, open the file and jump to first error
    if len(getqflist()) > 0
        cfirst              " jump to first error (loads correct file + line)
        if empty(filter(getwininfo(), 'v:val.quickfix'))
            copen
        endif
    else
        cclose
        echo "Program ran successfully."
    endif
endfunction

nnoremap <F4> :call RunFile()<CR>

" Next/previous error (stack navigation)
nnoremap <leader>di :cnext<CR>
nnoremap <leader>dk :cprev<CR>

" Open/close quickfix window
nnoremap <leader>dc :copen<CR>
nnoremap <leader>dt :cclose<CR>


