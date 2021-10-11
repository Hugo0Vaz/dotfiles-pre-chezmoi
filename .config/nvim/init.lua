--  _       _ _     _             
-- (_)_ __ (_) |_  | |_   _  __ _ 
-- | | '_ \| | __| | | | | |/ _` |
-- | | | | | | |_ _| | |_| | (_| |
-- |_|_| |_|_|\__(_)_|\__,_|\__,_|
--
--      My Neovim init.lua configuration file
--      Meu arquivo init.lua de configuração do Neovim
--
-- author: Hugo Martins Vaz Silva
-- e-mail: hugomartinsvaz@gmail.com
-- github: Hugo0Vaz

-- global configs
require "options"

-- packer config
require "plugins"

-- gruvbox config
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- lualine config
local config = require "lualine_options"
require('lualine').setup(config)

-- pyright LSP config
require'lspconfig'.pyright.setup{}

-- bashls LSP config
require'lspconfig'.bashls.setup{}
