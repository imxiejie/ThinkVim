let g:dashboard_default_header = 'lambada'

let g:dashboard_custom_section = {
   \ 'last_session'        :{
      \ 'description': ['  Reload last session                   SPC s l'],
      \ 'command': 'SessionLoad'},
   \ 'find_history'        :{
      \ 'description': ['  Recently opened files                 SPC f h'],
      \ 'command': 'DashboardFindHistory'},
   \ 'find_file'           :{
      \ 'description': ['  Find File                             SPC f f'],
      \ 'command': 'DashboardFindFile'},
   \ 'change_colorscheme'  :{
      \ 'description': ['  Change Colorscheme                    SPC t c'],
      \ 'command': 'DashboardChangeColorscheme'},
   \ 'find_word'           :{
      \ 'description': ['  Find word                             SPC f w'],
      \ 'command': 'DashboardFindWord'},
   \ 'book_marks'          :{
      \ 'description': ['  Jump to bookmark                      SPC f b'],
      \ 'command': 'DashboardJumpMarks'},
   \ 'open_personal'       :{
      \ 'description': ['  Open Personal Config File             SPC o c'],
      \ 'command': 'Clap personalconf'},
   \}
