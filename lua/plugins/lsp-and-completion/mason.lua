return {
    {
        "williamboman/mason.nvim",
        -- why isn't this working?
        opts = {
            ensure_installed = {
                "clangd", 
                "pyright",
                "lua-language-server",
                "r_language_server"
            }
        },
        config = function()
            require("mason").setup({})
        end
    }
}
