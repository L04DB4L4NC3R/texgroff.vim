let mapleader="\\"

" TODO: If zathura open, refresh
function! Preview()
		:call Compile()<CR><CR>
		execute "! zathura /tmp/op.pdf &"
endfunction

function! Compile()
		let extension = expand('%:e')
		echo extension
		if extension == "ms"
				execute "! groff -ms % -T pdf > /tmp/op.pdf"
		elseif extension == "tex"
				execute "! pdflatex -output-directory /tmp -jobname=op -synctex=1 -interaction=nonstopmode %"
		endif
endfunction


noremap <leader>p :call Preview()<CR><CR><CR>
noremap <leader>q :call Compile()<CR><CR>
