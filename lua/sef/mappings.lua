-- Navigation

vim.keymap.set('i', '<C-l>', '<Right>')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<leader><tab>', '<Cmd>NvimTreeToggle<CR><Cmd>only<CR>')
vim.keymap.set('n', '<leader>sf', '<Cmd>only<CR>')
