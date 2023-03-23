local lsp_installer = require('nvim-lsp-installer')
local lsp_config = require('lspconfig')

lsp_installer.setup({})

-- Configurar Perl LSP

local perltidy_profile = os.getenv("HOME") .. '/.config/nvim/others/.perltidyrc'
local perlcritic_profile = os.getenv("HOME") .. '/.config/nvim/others/.perlcriticrc'

lsp_config["perlnavigator"].setup{
    cmd = {'node', '/var/www/educativa/.local/share/nvim/lsp_servers/perlnavigator/node_modules/perlnavigator-server/out/server.js', '--stdio'},
    settings = {
      perlnavigator = {
          perlPath = 'perl',
          enableWarnings = true,
          perlcriticEnabled = true,
          perltidyProfile = perltidy_profile,
          perlcriticProfile = perlcritic_profile
      }
    }
}
