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

-- lualine config
require "lualine-config"

-- pyright LSP config
require "pyright-config-ls"

-- bashls LSP config
require "bashls-config-ls"

-- nvim-cmp config
require "cmp-config"

-- maps and remaps
require "remaps"
