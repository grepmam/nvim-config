local lsp_installer = require('nvim-lsp-installer')
local lsp_config = require('lspconfig')

lsp_installer.setup({})

local user_home = os.getenv("HOME")

-- Configurar Perl LSP

local perltidy_profile = user_home .. '/.config/nvim/others/.perltidyrc'
local perlcritic_profile = user_home .. '/.config/nvim/others/.perlcriticrc'
local perl_server = user_home .. '/.local/share/nvim/lsp_servers/perlnavigator/node_modules/perlnavigator-server/out/server.js'

lsp_config["perlnavigator"].setup{
    cmd = {'node', perl_server, '--stdio'},
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

-- Configurar ASM LSP

lsp_config["asm_lsp"].setup{}

-- Configurar Python LSP

lsp_config["pyright"].setup{}
