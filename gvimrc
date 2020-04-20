" dark background in gui mode, without the need to assign a colorscheme
highlight Normal guifg=white guibg=black

let s:myopts_set=0
function! ToggleGuiOpts()
  if s:myopts_set
    set guioptions+=T
    set guioptions+=m
    set guioptions+=r
    let s:myopts_set=0
  else
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    let s:myopts_set=1
  endif
endfunction

autocmd VimEnter * call ToggleGuiOpts()
command GuiOpts :call ToggleGuiOpts()
