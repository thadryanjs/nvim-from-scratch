return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        enabled = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function()

            nmap('<c-b>', ':Neotree toggle dir=%:p:h<CR>')
            nmap('<leader>nt', ':Neotree <CR>')

            require("neo-tree").setup({
                window = {
                    width = 27
                }
            })

        end
    }
}
