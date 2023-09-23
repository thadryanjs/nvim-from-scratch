return {
    {
        "neovim/nvim-lspconfig",
        config = function()

            local lspconfig = require('lspconfig')
            local coq = require('coq')
            lspconfig.gopls.setup(coq.lsp_ensure_capabilities())
            lspconfig.r_language_server.setup(coq.lsp_ensure_capabilities())
            lspconfig.pyright.setup(coq.lsp_ensure_capabilities())
            lspconfig.clangd.setup(coq.lsp_ensure_capabilities())
            lspconfig.ltex.setup(coq.lsp_ensure_capabilities())
            lspconfig.julials.setup(coq.lsp_ensure_capabilities())
            lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities())
        end
    }
}
