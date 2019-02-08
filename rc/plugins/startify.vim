" For startify
let g:startify_custom_header = [
\ '',
\ '   ______ _                                         _                             _        ',
\ '  / _____) |                                    _  | |                           | |       ',
\ ' ( (____ | |__   ___  _ _ _    ____  _____    _| |_| |__  _____     ____ ___   __| |_____  ',
\ '  \____ \|  _ \ / _ \| | | |  |    \| ___ |  (_   _)  _ \| ___ |   / ___) _ \ / _  | ___ | ',
\ '  _____) ) | | | |_| | | | |  | | | | ____|    | |_| | | | ____|  ( (__| |_| ( (_| | ____| ',
\ ' (______/|_| |_|\___/ \___/   |_|_|_|_____)     \__)_| |_|_____)   \____)___/ \____|_____) ',
\ '',
\]
let g:startify_custom_footer = [
            \ '+-------------------------------------------+',
            \ '|            Talk is cheap                  |',
            \ '|            Show me the code               |',
            \ '|                                           |',
            \ '|            Copyright Pendragon            |',
            \ '+-------------------------------------------+',
            \]

let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"

if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
  let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
else
  let entry_format .= '. entry_path'
endif
