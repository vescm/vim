" windows.vim
" set some windows related options
" =====================================

" change from cmd to powershell
if has('win32')
  set shell=powershell.exe
  set shellcmdflag=-NoProfile\ -NoLogo\ -NonInteractive\ -Command
  set shellpipe=|
  set shellredir=>
endif

