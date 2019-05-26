"设置使用ag与grep
call denite#custom#var('grep', 'command', ['ag'])
"当前目录搜索使用ag
call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
"其他grep设置
call denite#custom#var('grep', 'default_opts',['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#option('default', {
        \ 'prompt': '❯❯❯',
        \ 'statusline': v:false,
        \ 'highlight_matched_char': 'Underlined',
        \ 'cursor_shape': v:true,
        \ 'cursor_wrap': v:true,
        \ 'split': 'floating',
        \ 'winwidth': (&columns/4)*3 ,
        \ 'wincol': &columns/8,
        \ })

"ESC结束
call denite#custom#map('insert', '<esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('normal', '<esc>', '<denite:quit>', 'noremap')
"c-n,c-p上下移動
call denite#custom#map('insert', '<c-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<c-p>', '<denite:move_to_previous_line>', 'noremap')
"c-j,c-k分屏
call denite#custom#map('insert', '<c-j>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<c-k>', '<denite:do_action:vsplit>', 'noremap')

" 指定显示字符
call denite#custom#option('default', 'prompt', 'λ')
" denite的起始位置
call denite#custom#option('default', 'direction',)
