require('utils')

map('', '<space>', '<nop>')

-------------
-- Base
-------------

-- Change file encoding

nmap('<leader>e', ':set fileencoding=windows-1252<CR>')

-- Copy, Paste and Cut line

vmap('<C-c>', '"+ygvy')
nmap('<C-p>', '"+gP')

vmap('<C-x>', '"+ygvd')

-- Window Split

nmap('<leader>h', '<c-w>s')
nmap('<leader>v', '<c-w>v')
nmap('<leader>q', '<c-w>q')

-- Window Move

nmap('<leader><Up>', '<c-w><Up>')
nmap('<leader><Down>', '<c-w><Down>')
nmap('<leader><Right>', '<c-w><Right>')
nmap('<leader><Left>', '<c-w><Left>')

-- Window Resize 

nmap('<C-Up>', ':resize -2<CR>')
nmap('<C-Down>', ':resize +2<CR>')
nmap('<C-Left>', ':vertical resize -2<CR>')
nmap('<C-Right>', ':vertical resize +2<CR>')

-- Move line

vmap('<c-Up>', ':m \'<-2<cr>gv=gv')
vmap('<c-Down>', ':m \'>+1<cr>gv=gv')

-- Ident block 

vmap('<c-t>', '>')
nmap('<c-t>', '<esc>v>')

-- Replace text

vmap('<C-r>', '"hy:%s/<C-r>h//gc<left><left><left>')


-------------
-- Plugins
-------------

------ Telescope ------

nmap('<leader>f', ':Telescope find_files<CR>')

-- [ Grep ]

nmap('<leader>fg', ':lua require("telescope.builtin").current_buffer_fuzzy_find()<cr>')

-- [ LSP mapping ] 

-- Definitions

nmap('<leader>de', ':lua require("telescope.builtin").lsp_definitions()<cr>')

-- References

nmap('<leader>re', ':lua require("telescope.builtin").lsp_references()<cr>')

-- Symbols in document

nmap('<leader>si', ':lua require("telescope.builtin").lsp_document_symbols()<cr>')

-- Variables in document

nmap('<leader>va', ':lua require("telescope.builtin").lsp_document_symbols( { symbols = "variable" } )<cr>')

-- Symbols in workspace

nmap('<leader>sw', ':lua require("telescope.builtin").lsp_workspace_symbols()<cr>')

-- Functions in workspace

nmap('<leader>fw', ':lua require("telescope.builtin").lsp_workspace_symbols( { symbols = "function" } )<cr>')


------ Diagnostics ------

nmap('<leader>d', ':TroubleToggle<CR>')


------ Barbar Tabs ------

-- Move to previous/next 

nmap('<A-,>', ':BufferPrevious<CR>')
nmap('<A-.>', ':BufferNext<CR>')

-- Close Buffer 

nmap('<A-q>', ':BufferClose<CR>')


------ File Explorer ------

nmap('<leader>o', ':NvimTreeToggle<CR>')
