require('lualine').setup {
    options = {
        theme = 'tokyonight'
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = { { 'filename', path = 2 } },
        lualine_x = { 'encoding', {
            'fileformat',
            symbols = {
                unix = 'Linux ', -- e712
                dos = 'Windows ',  -- e70f
                mac = 'OSX ',  -- e711
            }
        }, 'filetype' },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },    
}
