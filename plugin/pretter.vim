" Autoformat files
let g:prettier#autoformat = 1
" Autoformat files that don't have the pragma (i.e. @format or @prettier).
" Combined with the above, this effectively means autoformat all files.
let g:prettier#autoformat_require_pragma = 0

" Force the :Prettier command to run async (it's sync by default)
let g:prettier#exec_cmd_async = 1

" Default behavior is for parsing errors to open the quick fix menu.
" This option disables that.
let g:prettier#quickfix_enabled = 0

" Prettier defaults to switching focus to the quick menu when there's
" an error. This suppresses that.
let g:prettier#quickfix_auto_focus = 0

let g:prettier#config#bracket_spacing = 'true' " print spaces between brackets
let g:prettier#config#trailing_comma = 'all' " none|es5|all

" Auto format text after leaving insert mode
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync

