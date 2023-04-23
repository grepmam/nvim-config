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
    -- Tree-sitter
    ------------------

    use 'nvim-treesitter/nvim-treesitter'

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

    -------------------
    -- File Explorer
    -------------------

    use 'nvim-tree/nvim-tree.lua'

    ----------------
    -- Autocomplete
    ----------------

    use { 'hrsh7th/nvim-cmp',
        requires = {
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-cmdline'},
            {'L3MON4D3/LuaSnip'},
            {'saadparwaiz1/cmp_luasnip'}
        }
    }
    
    -------
    -- LSP
    -------

    use { 
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer'
    }

    ------------
    -- Snippets
    ------------
    
    use 'rafamadriz/friendly-snippets'

    ---------------
    -- Diagnostics
    ---------------

    use {
        'folke/trouble.nvim',
        requires = { { 'folke/lsp-colors.nvim' } }
    }

    ---------------
    -- Terminal
    ---------------

    use 'akinsho/toggleterm.nvim'

    ----------
    -- Illuminate
    ----------

    use 'RRethy/vim-illuminate'

    --------------
    -- VirtColumn
    --------------
    
    use 'xiyaowong/virtcolumn.nvim'

    --------------
    -- Agrolens
    --------------

    use 'desdic/agrolens.nvim'

    --------------
    --
    --------------

    use {
        'aaronhallaert/advanced-git-search.nvim',
        requires = {
            'tpope/vim-fugitive',
            "tpope/vim-rhubarb"
        },
    }

end)
