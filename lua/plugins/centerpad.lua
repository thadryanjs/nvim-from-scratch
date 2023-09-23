-- center the current buffer in the screen. Similar to Goyo, but seems to work better for actual code 
return {
    {
        "smithbm2316/centerpad.nvim",
        config = function()

            -- disable line numbers before creating the buffers so they don't
            -- have line numbers in them, only the center one does (incredibly neurotic, I know)
            vim.api.nvim_create_user_command("ToggleCenterpad", function()
                vim.opt.relativenumber = false
                vim.opt.number = false
                require('centerpad').toggle{ leftpad = 20, rightpad = 20 }
                vim.opt.relativenumber = true 
                vim.opt.number = true
            end, {})

            -- keybinding
            vim.api.nvim_set_keymap(
                'n', 
                '<leader>z', 
                ":ToggleCenterpad<cr>",
                { silent = true, noremap = true }
            )


        end
    }
}
