-- Highlight the current cursor row
vim.opt.cursorline = true

-- Show line numbers
vim.opt.number = true

-- Show line numbers relative from the cursor row
vim.opt.relativenumber = true

-- Make Neovim snappier with a lower update time
vim.opt.updatetime = 100

-- Set the default encoding to utf-8
vim.opt.fileencoding = "utf-8"

-- Keep the cursor this many rows from the edge vertically
vim.opt.scrolloff = 10

-- Keep the sign column on at all times to prevent buffer resizing
vim.opt.signcolumn = "yes"

-- Perform searches case insensitively
vim.opt.ignorecase = true

-- Perform searches case sensitively if the search term contains capital characters
vim.opt.smartcase = true

-- Tab sizes
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cindent = true

-- Fix indentation alignment for specific characters
vim.opt.cinkeys = "0{,0},0),0],:,!^F,o,O,e"

-- Show trailing spaces and all tabs
vim.opt.list = true
vim.opt.listchars = "trail:+,tab:>-"

-- Disable line wrapping
vim.opt.wrap = false

-- Enable all color support
vim.opt.termguicolors = true

-- Configure completions
vim.opt.completeopt = "menu,menuone,noselect"
