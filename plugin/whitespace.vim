function! <SID>StripTrailingWhitespaces()
	let _s=@/
	let l = line(".")
	let c = col(".")
	
	%s/\s\+$//e
	
	let @/=_s
	call cursor(l, c)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
