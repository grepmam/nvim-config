local cmd = vim.cmd
local api = vim.api

-- Themes

cmd('colorscheme tokyonight-night')

-- For Assembly files

api.nvim_exec([[
    augroup filetypedetect
        autocmd BufNewFile,BufRead *.asm set ft=nasm
    augroup END
]], false)
