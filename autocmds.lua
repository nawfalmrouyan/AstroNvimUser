vim.api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  { pattern = { "*.txt", "*.md", "*.tex" }, command = "setlocal spell" }
)
vim.api.nvim_create_autocmd(
  { "InsertEnter" },
  {
    pattern = { "*" },
    command = "if &relativenumber | let g:backtorelative = 1 | setlocal number norelativenumber nocursorline | endif",
  }
)
vim.api.nvim_create_autocmd(
  { "InsertLeave" },
  { pattern = { "*" }, command = 'if exists("g:backtorelative") | setlocal relativenumber cursorline | endif' }
)
vim.api.nvim_create_autocmd(
  { "CursorHold" },
  { pattern = { "<buffer>" }, command = "lua vim.diagnostic.open_float({focusable = false})" }
)
