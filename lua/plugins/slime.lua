return {
    {
        "jpalardy/vim-slime",
        config = function()
            vim.g.slime_target = "tmux"
            vim.g.slime_default_config = { socket_name = "default", target_pane = ".2" }
            vim.g.slime_cell_delimiter = "#%%"
            vim.api.nvim_set_keymap("n", "<leader>s", "<Plug>SlimeSendCell", { noremap = true, silent = true })
        end
    }
}
