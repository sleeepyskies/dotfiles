-- nvim-lspconfig
-- This config only defines which language servers Neovim should connect to.
-- It does NOT install them (Mason handles that) and does NOT handle formatting/linters.

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- webdev
        ts_ls = {},
        eslint = {},

        pyright = {
          root_dir = require("lspconfig.util").root_pattern("pyproject.toml", "requirements.txt", ".venv"),
        },
      },
    },
  },
}
