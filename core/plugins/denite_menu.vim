let s:menus = {}

let s:menus.dein = { 'description': '⚔️  Plugin management' }
let s:menus.dein.command_candidates = [
  \   ['🐬 Dein: Plugins update »', 'call dein#update()'],
  \   ['🐬 Dein: Plugins List   »', 'Denite dein'],
  \   ['🐬 Dein: Update log     »', 'echo dein#get_updates_log()'],
  \   ['🐬 Dein: Log            »', 'echo dein#get_log()'],
  \ ]

let s:menus.project = { 'description': '🛠  Project & Structure' }
let s:menus.project.command_candidates = [
  \   ['🐳 File Explorer » <Leader>e',        'Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>'],
  \   ['🐳 Outline       » <LocalLeader>t',   'TagbarToggle'],
  \   ['🐳 Git Status    » <LocalLeader>gs',  'Denite gitstatus'],
  \   ['🐳 Mundo Tree    » <Leader>m',  'MundoToggle'],
  \ ]

let s:menus.files = { 'description': '📁 File tools' }
let s:menus.files.command_candidates = [
  \   ['📂 Denite: Find in files…    » ',  'Denite grep:.'],
  \   ['📂 Denite: Find files        » ',  'Denite file/rec'],
  \   ['📂 Denite: Buffers           » ',  'Denite buffer'],
  \   ['📂 Denite: MRU               » ',  'Denite file/old'],
  \   ['📂 Denite: Line              » ',  'Denite line'],
  \ ]

let s:menus.tools = { 'description': '⚙️  Dev Tools' }
let s:menus.tools.command_candidates = [
  \   ['🐠 Git commands       »', 'Git'],
  \   ['🐠 Git log            »', 'Denite gitlog:all'],
  \   ['🐠 Goyo               »', 'Goyo'],
  \   ['🐠 Tagbar             »', 'TagbarToggle'],
  \   ['🐠 File explorer      »', 'Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>'],
  \ ]

let s:menus.todoapp = { 'description': '🗓  Todo List' }
let s:menus.todoapp.command_candidates = [
  \   ['📝 TodoAdd            »', 'TodoAdd '],
  \   ['📝 TodoList           »', 'Denite todo'],
  \   ['📝 TodoDone           »', 'Denite todo:done'],
  \ ]

"let s:menus.sessions = { 'description': 'Sessions' }
"let s:menus.sessions.command_candidates = [
  "\   ['▶ Restore session │ ;s', 'Denite session'],
  "\   ['▶ Save session…   │', 'Denite session/new'],
  "\ ]

let s:menus.thinkvim = {'description': '💎 ThinkVim Configuration files'}
let s:menus.thinkvim.file_candidates = [
  \   ['🐠 General settings: vimrc            ', $VIMPATH.'/core/vimrc'],
  \   ['🐠 Initial settings: init.vim            ', $VIMPATH.'/core/init.vim'],
  \   ['🐠 File Types: vimrc.filetype         ', $VIMPATH.'/core/filetype.vim'],
  \   ['🐠 Installed Plugins: dein.toml    ', $VIMPATH.'/core/dein/dein.toml'],
  \   ['🐠 Installed LazyLoadPlugins: deinlazy.toml    ', $VIMPATH.'/core/dein/deinlazy.toml'],
  \   ['🐠 Global Key mappings: mappings', $VIMPATH.'/core/mappings.vim'],
  \   ['🐠 Global Key Pluginmappings: Pluginmappings', $VIMPATH.'/core/plugins/allkey.vim'],
  \ ]

call denite#custom#var('menu', 'menus', s:menus)
