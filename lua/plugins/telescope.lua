local telescope = require('telescope')

telescope.load_extension('agrolens')
telescope.load_extension("advanced_git_search")

telescope.setup({

    defaults = {
        
        -- lua regex indicating what file to ignore
        file_ignore_patterns = {
            "%.git/",
        },

        -- Default values except for --hidden
        vimgrep_arguments = {
          'rg',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--no-binary',
          '--hidden' -- Search also hidden files
        },

        prompt_prefix=" >  "

    }

})
