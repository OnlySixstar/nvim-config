local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        --null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.clang_format.with({
          extra_args = {"-style=google"},
    }),
    },
})
