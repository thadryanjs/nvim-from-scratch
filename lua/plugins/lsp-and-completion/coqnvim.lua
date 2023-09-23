return {
    {
        "ms-jpq/coq_nvim",
        config = function()

            require("coq")
            vim.g.coq_settings = {}
            vim.cmd("COQnow --shut-up")

        end
    }
}
