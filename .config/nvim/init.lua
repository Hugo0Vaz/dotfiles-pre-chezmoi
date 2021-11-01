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

-- packer config
require "plugins"

-- global configs
require "options"

-- maps and remaps
require "remaps"

-- pyright LSP config
require "config-ls/pyright-config-ls"

-- bashls LSP config:wq
require "config-ls/bashls-config-ls"

-- hls LSP config
require "config-ls/hls-config-ls"

-- nvim-cmp config
require "config/cmp-config"

-- lualine config
require "config/lualine-config"

-- nvim-autopairs config
require "config/autopairs-config"
