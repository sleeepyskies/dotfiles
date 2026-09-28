return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
        table.insert(opts.sections.lualine_x, "filetype")
        opts.options.section_separators = { left = "", right = "" }
    end,
}
