return {
    "stevearc/conform.nvim",
    opts = {
        formatters = {
            clang_format = {
                prepend_args = { "--style=file" },
            },
        },
        formatters_by_ft = {
            objcpp = { "clang_format" },
            cpp = { "clang_format" },
            c = { "clang_format" },
        },
    },
}
