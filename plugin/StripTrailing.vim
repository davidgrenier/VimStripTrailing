"From http://unix.stackexchange.com/questions/75430/vi-vim-how-to-automatically-strip-trailing-spaces-on-save

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre *.php,*.html,*.js :call <SID>StripTrailingWhitespaces()

