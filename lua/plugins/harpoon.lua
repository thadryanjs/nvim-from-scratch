-- This has stopped working even though I didn't update.
-- Copy/pasting the commands from the readme doesn't work either.
return {
    {
        "ThePrimeagen/harpoon",
        enabled = false,
        config = function()

            vim.api.nvim_set_keymap("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>",
                { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>",
                { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>",
                { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>",
                { noremap = true, silent = true })
            
            vim.api.nvim_set_keymap("n", "<leader>hp", ":lua require('harpoon.ui').nav_file(1)<CR>",
                { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>hp", ":lua require('harpoon.ui').nav_file(2)<CR>",
                { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>hp", ":lua require('harpoon.ui').nav_file(3)<CR>",
                { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>hp", ":lua require('harpoon.ui').nav_file(4)<CR>",
                { noremap = true, silent = true })

        end
    }
}
