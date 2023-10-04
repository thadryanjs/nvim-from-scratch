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


-- PLEASE
imap("jj", "<Esc>")

-- save with ctrl+s
imap("<C-s>", "<cmd>:w!<cr><esc>")
nmap("<C-s>", "<cmd>:w!<cr><esc>")

-- home
nmap("<leader>wo", ":e /home/thadryan/Documents/Vault/priority-workspaces-overview.md<CR>")

-- preview buffer (https://stackoverflow.com/questions/28808922/quickly-switch-to-the-last-edited-buffer)
nmap("<leader>pp", "<C-^>")

-- [ Buffer padding ]
nmap("<leader>lz", ":vs buffer | :vertical resize -60<cr>")

-- [ Jupyter Notebook script hotkeys]
--imap("<leader>jc", "#%% [code]")
--imap("<leader>jm", "#%% [markdown]")

nmap("<leader>jc", "i#%% [code]")
nmap("<leader>jm", "i#%% [markdown]")

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

