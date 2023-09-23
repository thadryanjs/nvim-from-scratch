return {
    {
        "neovim/nvim-lspconfig",
        config = function()

            local lspconfig = require('lspconfig')
            local coq = require('coq')
            -- lspconfig.pyright.setup {}
            lspconfig.gopls.setup(coq.lsp_ensure_capabilities())
        end
    }
}
