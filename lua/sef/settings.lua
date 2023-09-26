local options = {
  -- linenumbers
	number = true,
	relativenumber = true,

  -- indentation
	autoindent = true,
	smartindent = true,
	tabstop = 2,
	shiftwidth = 2,
	expandtab = true,

  -- other
	termguicolors = true,
	cursorline = true,
	colorcolumn = "120",
	scrolloff = 15
}

for option, value in pairs(options) do
	vim.opt[option] = value
end
