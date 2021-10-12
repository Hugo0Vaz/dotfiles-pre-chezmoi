-- map helper
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- copy and paste remaps
map('i', '<C-v>',     '<ESC>"+pa')
map('v', '<C-c>',     '"+y')

-- NERDTree remaps
map('n', '<leader>n', ':NERDTreeFocus<CR>')
map('n', '<C-n>',     ':NERDTreeToggle<CR>')
map('n', '<C-f>',     ':NERDTreeFind<CR>')

-- clear previous searches, highlights and matches
map('n', '<C-l>',     ':nohl<CR><C-L>')

-- LSP remaps
map('n', 'gD',        '<cmd>lua vim.lsp.buf.declaration()<CR>')
map('n', 'gd',        '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', 'K',         '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', 'gi',        '<cmd>lua vim.lsp.buf.implementation()<CR>')
map('n', '<C-k>',     '<cmd>lua vim.lsp.buf.signature_help()<CR>')
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
map('n', '<space>D',  '<cmd>lua vim.lsp.buf.type_definition()<CR>')
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', 'gr',        '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<space>e',  '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
map('n', '[d',        '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', ']d',        '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<space>q',  '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
map('n', '<space>f',  '<cmd>lua vim.lsp.buf.formatting()<CR>')
