-- Navigation

local keymaps = {
  n = {
    -- Navigation
    ["<C-l>"] = "<C-w>l",
    ["<C-h>"] = "<C-w>h",
    ["<leader><tab>"] = "<Cmd>NvimTreeToggle<CR><Cmd>only<CR>",
    ["<leader>sf"] = "<Cmd>only<CR>",

    -- Telescope
    ["<leader>ff"] = require("telescope.builtin").find_files,
    ["<leader>fg"] = require("telescope.builtin").live_grep,
    ["<leader>fb"] = require("telescope.builtin").buffers,
    ["<leader>fh"] = require("telescope.builtin").help_tags,

    -- LSP
    ["gd"] = vim.lsp.buf.definition,
    ["K"] = vim.lsp.buf.hover,
  },

  i = {
    -- Navigation
    ["<C-l>"] = "<Right>",
    ["<C-h>"] = "<Left>",
  }
}

for mode, mappings in pairs(keymaps) do
  for mapping, command in pairs(mappings) do
    vim.keymap.set(mode, mapping, command)
  end
end

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local capabilities = client.server_capabilities
    local opts = { buffer = args.buf }

    if capabilities.hoverProvider then
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    end
    if capabilities.signatureHelpProvider then
      vim.keymap.set({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, opts)
    end
    if capabilities.declarationProvider then
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    end
    if capabilities.definitionProvider then
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    end
    if capabilities.typeDefinitionProvider then
      vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, opts)
    end
    if capabilities.implementationProvider then
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    end
    if capabilities.referencesProvider then
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    end
    if capabilities.renameProvider then
      vim.keymap.set("n", "cr", vim.lsp.buf.rename, opts)
    end
    if capabilities.codeActionProvider then
      vim.keymap.set("n", "cx", vim.lsp.buf.code_action, opts)
    end
    
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, opts)
  end
})
