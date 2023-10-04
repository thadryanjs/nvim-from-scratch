
--- [ Global Vim Settings ]


-- space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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




-- show hover instead of inline lsp diagnostics (absuredly based)
-- https://stackoverflow.com/questions/69290794/nvim-lsp-change-lspconfig-diagnostic-message-location
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

-- python provider
-- vim.g.python3_host_prog = '/usr/bin/python'

