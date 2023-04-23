-- Este complemento agrega guías de sangría a todas las líneas (incluidas las líneas vacías).

require('indent_blankline').setup({

    show_end_of_line = true,
    char_highlight_list = { 'IndentBlanklineIndent' },
    space_char_blankline = ' '

})
