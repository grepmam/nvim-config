-- Verificar si Packer está instalado

local functions = vim.fn
local install_path = functions.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if functions.empty(functions.glob(install_path)) > 0 then
    packer_bootstrap = functions.system({
        'git', 'clone', '--depth', 1, 'https://github.com/wbthomason/packer.nvim.git', install_path
    })
end


-- Instalar nuestros plugins abajo

return require('packer').startup(function(use)
    
    ------------------
    -- Plugin Manager
    ------------------

    use 'wbthomason/packer.nvim'

    ------------------
    -- Icons
    ------------------

    use 'kyazdani42/nvim-web-devicons'

    ------------------
    -- Tokyo Theme
    ------------------
    
    use 'folke/tokyonight.nvim'

    ------------------
    -- Status Bar
    ------------------
    
    use 'nvim-lualine/lualine.nvim'

    ------------------
    -- Telescope
    ------------------
    
    use { 
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    ------------------
    -- Dashboard
    ------------------

    use 'goolord/alpha-nvim'

    ------------------
    -- Gitsigns
    ------------------
    
    use 'lewis6991/gitsigns.nvim'

    -------------------
    -- Indent blankline
    -------------------

    use 'lukas-reineke/indent-blankline.nvim'

    -------------------
    -- Barbar Tabs
    -------------------

    use 'romgrk/barbar.nvim'

end)
