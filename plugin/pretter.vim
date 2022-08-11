let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 1
let g:prettier#config#bracket_spacing = 'true' " print spaces between brackets
let g:prettier#config#trailing_comma = 'all' " none|es5|all
let g:prettier#quickfix_enabled = 0

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.sol PrettierAsync
"autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync

