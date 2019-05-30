let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_sign_error = '😡'
let g:ale_sign_warning = '😃'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_go_golangci_lint_executable = '/Users/pendragon/workstation/bin/golangci-lint'

let g:ale_lintetrs = {
      \ 'go': ['golangci-linter'],
      \'javascript': ['eslint', 'stylelint'],
      \'jsx': ['eslint', 'stylelint'],
      \'less': ['prettier'],
      \ }

"highlight clear ALEErrorSign
"highlight clear ALEWarningSign
