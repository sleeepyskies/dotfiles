return {
  -- install custom colorschemes
  -- we can list and configure as many colorschemes as we want here
  { "ellisonleao/gruvbox.nvim" },

  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      transparent = true,
    },
  },

  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      theme = "dragon",
    },
  },

  {
    "Mofiqul/dracula.nvim",
    opts = {
      italic_comment = true,
    },
  },

  -- select which colorscheme to use
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
