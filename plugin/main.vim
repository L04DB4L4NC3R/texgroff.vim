let mapleader="\\"

" TODO: If zathura open, refresh
function! Preview()
		execute "! groff -ms % -T pdf > /tmp/groff.pdf"
	  execute "! zathura /tmp/groff.pdf &"
endfunction

function! Compile()
		execute "! groff -ms % -T pdf > /tmp/groff.pdf"
endfunction


noremap <leader>p :call Preview()<CR><CR><CR>
noremap <leader>q :call Compile()<CR><CR>
