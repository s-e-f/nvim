local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- Close current buffer
map('n', '<Leader>x', ':bd<CR>')

-- Completion snippet navigation
map({ 'i', 's' }, '<C-k>', function()
  local ls = require('luasnip')
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end)

map({ 'i', 's' }, '<C-j>', function()
  local ls = require('luasnip')
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end)

-- Source the current buffer (for nvim configuration)
map('n', '<Leader><Leader>r', ':so %<CR>')

-- Open the current directory
map('n', '-', ':Oil<CR>', { desc = 'Open parent directory' })

local telescope = require('telescope.builtin')
map('n', '<Leader>ff', telescope.find_files)
map('n', '<Leader>fg', telescope.live_grep)
map('n', '<Leader>fb', telescope.buffers)
map('n', '<Leader>fh', telescope.help_tags)
