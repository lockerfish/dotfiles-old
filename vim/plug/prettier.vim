  let g:prettier#autoformat = 0
  let g:prettier#config#tab_width=2
  let g:prettier#config#trailing_comma='es5'
  autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
