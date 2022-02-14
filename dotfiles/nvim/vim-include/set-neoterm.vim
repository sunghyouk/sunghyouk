let g:neoterm_default_mod="belowright"
let g:neoterm_size=16
let g:neoterm_autoscroll=1
let g:neoterm_direct_open_repl=1
" Calling :Tclose or :Ttoggle kills the terminal
let g:neoterm_keep_term_open=0
" Set REPLs
if executable("radian")
  let g:neoterm_repl_r="radian"
endif

" recommended indent option
let g:neoterm_bracketed_paste = 1
