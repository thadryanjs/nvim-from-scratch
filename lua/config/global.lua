
---- [ Convenience Function ]


-- functions to save some typing/ease readability
-- ( https://vi.stackexchange.com/questions/37187/how-can-i-port-nmap-map-and-imap-commands-to-lua-configuration

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end


--- [ Global Vim Settings ]


-- PLEASE
imap("jj", "<Esc>")

-- save with ctrl+s
imap("<C-s>", "<cmd>:w<cr><esc>")
nmap("<C-s>", "<cmd>:w<cr><esc>")

nmap("<leader>h", ":e /home/thadryan/Documents/Vault/priority-workspaces-overview.md<cr>")

-- some basic things and options from (https://github.com/jmbuhr/quarto-nvim-kickstarter)
-- use spaces as tabs
local tabsize = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = tabsize
vim.opt.tabstop = tabsize
vim.opt.autochdir = false
vim.opt.undofile = true
vim.opt.number = true
vim.opt.relativenumber = true
-- enable mouse
vim.opt.mouse = 'a'
vim.opt.mousefocus = true
-- use system clipboard
vim.opt.clipboard:append 'unnamedplus'

-- space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- smarter search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- indent
vim.opt.smartindent = true
vim.opt.breakindent = true


-- [ Diagnostic settings ]
vim.o.updatetime = 1000

vim.diagnostic.config {
  virtual_text = false,
  signs = false,
  underline = true,
}

-- sane diagnostics
vim.api.nvim_create_user_command("DiagnosticsLight", function()
    vim.diagnostic.config {
        virtual_text = false,
        signs = false,
        underline = true,
    }
end, {})

-- heavy duty, once-in-a-while diagnostics
vim.api.nvim_create_user_command("DiagnosticsHeavy", function()
    vim.diagnostic.config {
        virtual_text = false,
        signs = true,
        underline = true,
    }
end, {})



-- show hover instead of inline lsp diagnostics (absuredly based)
-- https://stackoverflow.com/questions/69290794/nvim-lsp-change-lspconfig-diagnostic-message-location
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

-- python provider
vim.g.python3_host_prog = '/usr/bin/python'

