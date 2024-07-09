vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
vim.o.tabstop = 5
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.softtabstop = 4
vim.o.mouse = 'a'
vim.o.colorcolumn = '80,100'

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.cmd([[iabbrev #i #include]])
vim.cmd([[iabbrev #d #define]])

vim.opt.encoding = 'UTF-8'

vim.api.nvim_set_keymap('n', '<leader>o', 'o<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>O', 'O<Esc>', { noremap = true })

-- Move up and keep cursor centered
vim.api.nvim_set_keymap('n', '<Up>', 'kzz', { noremap = true, silent = true })
-- Move down and keep cursor centered
vim.api.nvim_set_keymap('n', '<Down>', 'jzz', { noremap = true, silent = true })
