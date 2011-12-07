let s:beautifier = expand('<sfile>:p:h').'/../../bin/js-beautify'

function! JSBeautify() range
	exe ':'.a:firstline.','.a:lastline.'!'.s:beautifier
endfunction

command! -range=% -nargs=0 JSBeautify <line1>,<line2>:call JSBeautify()
