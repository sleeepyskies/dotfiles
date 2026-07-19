-- nvim-lspconfig
-- This config only defines which language servers Neovim should connect to.
-- It does NOT install them (Mason handles that) and does NOT handle formatting/linters.

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        -- webdev
        ts_ls = {},
        eslint = {},

        pyright = {},
      },
    },
  },
}
