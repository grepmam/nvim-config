local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    -- snippets support
    null_ls.builtins.completion.luasnip
  },
})
