return {
    {
        "rockerBOO/boo-colorscheme-nvim",
        config = function()
            require("boo-colorscheme").setup({})
            vim.g.boo_colorscheme_italic = false
        end

    }
}
