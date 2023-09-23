return {

    {
        "folke/tokyonight.nvim",
        config = function()
            
            require("tokyonight").setup({
                transparent = false, -- Enable this to disable setting the background color
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false},
                    keywords = { italic = false },
                    functions = {},
                }
            })

        end

    }
}
