
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

-- PLEASE
imap("jj", "<Esc>")

-- save with ctrl+s
imap("<C-s>", "<cmd>:w<cr><esc>")
nmap("<C-s>", "<cmd>:w<cr><esc>")

-- use spaces as tabs
local tabsize = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = tabsize
vim.opt.tabstop = tabsize
vim.opt.autochdir = true
vim.opt.undofile = true

-- space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- smarter search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- indent
vim.opt.smartindent = true
vim.opt.breakindent = true

vim.diagnostic.config({
  virtual_text = false
})

-- show hover instead of inline lsp diagnostics (absuredly based)
-- https://stackoverflow.com/questions/69290794/nvim-lsp-change-lspconfig-diagnostic-message-location
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

