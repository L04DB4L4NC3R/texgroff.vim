let mapleader="\\"

" TODO: If zathura open, refresh
function! CompileAndPreview()
		execute "! groff -ms % -T pdf > /tmp/groff.pdf && zathura /tmp/groff.pdf &"
endfunction

noremap <leader>q :call CompileAndPreview()<CR><CR>
