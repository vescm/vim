" Always show the status line
set laststatus=2

" my custom statuline
" set statusline=\ %{getcwd()}
set statusline=\ %{fugitive#head()}
set statusline+=\ -
set statusline+=\ %F%m%r%h
set statusline+=%=
set statusline+=\ %y\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=[%{&fileformat}]
set statusline+=\ %p%%
set statusline+=\ %L
set statusline+=\ %l:%c

