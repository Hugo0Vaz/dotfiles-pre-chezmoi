-- Packer Config

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- bootstraps packer without needing an install
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    
    -- plugin manager
    use 'wbthomason/packer.nvim'

    -- theme
    use 'gruvbox-community/gruvbox'
    
    -- icons for vim
    use 'ryanoasis/vim-devicons'

    -- status line
    use {'hoob3rt/lualine.nvim',
         requires = {'kyazdani42/nvim-web-devicons', opt = true}}

    -- lsp config
    use 'neovim/nvim-lspconfig'

    -- startpage for vim
    use 'mhinz/vim-startify' 

    -- nvim treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- autocomplete
    use 'hrsh7th/nvim-cmp'

    -- autocomplete additional source
    use 'hrsh7th/cmp-nvim-lsp'
    
    -- nerdtree
    use 'preservim/nerdtree'

    -- automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
        require('packer').sync()
    end
end)
