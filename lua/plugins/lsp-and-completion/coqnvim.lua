return {
    {
        "ms-jpq/coq_nvim",
        config = function()

            require("coq")

            -- convenience wrapper
            vim.api.nvim_create_user_command("CoqSilentStart", function()
                vim.cmd("COQnow --shut-up")
            end, {})

            -- https://github.com/ms-jpq/coq_nvim/issues/411
            vim.api.nvim_set_keymap("n", "<leader>c", ":CoqSilentStart<cr>", { noremap = true, silent = true })


            -- this produces an annoying error message when started
            -- "No compatible snippets found, try updating `coq.artifacts"
            -- There is a discussion here: https://github.com/ms-jpq/coq_nvim/issues/411
            -- I can't get the setting to work. The workaround does work though:
            -- :COQsnips edit
            -- (create an empty file)
            -- :COQsnips compile
            -- This is annoying but it works
            -- Trying this:
            vim.g.coq_settings = {}


        end
    }
}
