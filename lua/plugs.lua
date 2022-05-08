return require('packer').startup(function()
    -- Package manager--
    use 'wbthomason/packer.nvim'
    -- ColorScheme--
    use 'NTBBloodbath/doom-one.nvim'
    -- Nvim Tree--
    use {
    	'kyazdani42/nvim-tree.lua',
    	requires = 'kyazdani42/nvim-web-devicons', 
    	tag = 'nightly'
    }
end)
