--       _       _           _                _   _                   _             
--  __ _| | ___ | |__   __ _| |    ___  _ __ | |_(_) ___  _ __  ___  | |_   _  __ _ 
-- / _` | |/ _ \| '_ \ / _` | |   / _ \| '_ \| __| |/ _ \| '_ \/ __| | | | | |/ _` |
--| (_| | | (_) | |_) | (_| | |  | (_) | |_) | |_| | (_) | | | \__ \_| | |_| | (_| |
-- \__, |_|\___/|_.__/ \__,_|_|___\___/| .__/ \__|_|\___/|_| |_|___(_)_|\__,_|\__,_|
-- |___/                     |_____|   |_|                                          
--
--
--      Global options for my nvim config
--      Opções globais para a minha config do nvim
--
--  author: Hugo Martins Vaz Silva
--  e-mail: hugomartinsvaz@gmail.com
--  github: Hugo0Vaz

https://stackoverflow.com/questions/9549729/vim-insert-the-same-characters-across-multiple-lines
-- global options
o.completeopt = "menuone,noselect"
o.inccommand = 'nosplit'
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 3
o.showcmd = true
o.wildmenu = true
o.mouse = 'a'
o.showmatch = true
o.expandtab = true
o.ruler = true
o.incsearch = true
o.hlsearch = true
o.showmode = false
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.shiftround = true
o.timeout = false
o.timeoutlen = 10
o.undofile = true; bo.undofile = true -- persistent undo is a neat feature
o.title = true
o.hidden = true
o.path = o.path + '.,**'
