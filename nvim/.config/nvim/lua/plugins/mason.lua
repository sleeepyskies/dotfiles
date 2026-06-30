-- Automatically install tools (LSP servers, linters, formatters)

return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- webdev
        "typescript-language-server",
        "eslint-lsp",

        "pyright",
      },
    },
  },
}
