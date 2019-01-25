function! Dot(path)
  return "~/.config/nvim/" . a:path
endfunction

for file in split(glob(Dot('rc/*.vim')), '\n')
    exe 'source' file
endfor

"execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/nvim/rc/vimrc'
