for f in split(glob('~/.config/nvim/rc/*.vim'), '\n')
    exe 'source' f
endfor
