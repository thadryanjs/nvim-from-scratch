return {
    {
        "natecraddock/workspaces.nvim",
        config = function()
            require("workspaces").setup({
                -- path = "/home/thadryan/Documents/Templates/workspaces.txt"
                path = "/home/thadryan/.config/workspaces.txt"
            })

        vim.api.nvim_set_keymap("n", "<leader>fw", ":Telescope workspaces<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>fi", ":e index.md<CR>", { noremap = true, silent = true })

        end
    }
}
