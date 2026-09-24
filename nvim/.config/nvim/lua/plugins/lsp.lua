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

                -- custom file formats using yaml
                yamlls = {
                    filetypes = {
                        "yaml",
                        "yml",
                        "sshg", -- custom 2iREN shader format
                    },
                },

                -- c/c++
                clangd = {
                    init_options = {
                        fallbackFlags = { "-std=c++23" },
                    },
                },
            },
        },
    },
}
