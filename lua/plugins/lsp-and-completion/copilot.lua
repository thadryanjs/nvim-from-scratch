return {
    {
        "github/copilot.vim",
        enabled = true,
        config = function()
            vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("")', {expr=true, noremap=true, script=true})
        end
    }
}
