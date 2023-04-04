-- Use prettier to format files
vim.api.nvim_exec([[
  augroup Prettier
    autocmd!
    autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.json,*.css,*.md,*.vue PrettierAsync
  augroup end
]], true)

-- Use prettier to format Vue files
vim.g['prettier#exec_cmd_async'] = 'prettier-plugin-vue --parser vue'

vim.api.nvim_exec([[
  augroup PrettierVue
    autocmd!
    autocmd BufWritePost *.vue PrettierAsync
  augroup end
]], true)

-- Set Prettier configuration from .prettierrc file
vim.g['prettier#config#config_files'] = { vim.fn.expand('.prettierrc'), vim.fn.expand('.prettierrc.json'), vim.fn.expand('.prettierrc.yaml'), vim.fn.expand('.prettierrc.yml'), vim.fn.expand('.prettierrc.js') }
