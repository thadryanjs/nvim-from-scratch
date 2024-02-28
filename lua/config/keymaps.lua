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

nmap("j",  "gj")
nmap("k", "gk")
nmap("<Up>", "gk")
nmap("<Down>", "gj")
nmap("<C-c>", '"+y')
nmap("<C-v>", '"+p')

-- home
nmap("<leader>wo", ":e /home/thadryan/Documents/Vault/workspaces-overview.md<CR>")

-- preview buffer (https://stackoverflow.com/questions/28808922/quickly-switch-to-the-last-edited-buffer)
nmap("<leader>pp", "<C-^>")

-- [ Buffer padding ]
nmap("<leader>lz", ":vs buffer | :vertical resize -120<cr>")

-- [ Jupyter Notebook script hotkeys]
imap("<A-c>", "# %% [code]")
imap("<A-m>", "# %% [markdown]")

-- remove all code tags
imap("<A-e>", ":%s/# %% \\[code\\]<CR>")
-- search for code tags
nmap("<A-f>", "/# %% \\[code\\]<CR>")

nmap("<leader>jc", "i# %% [code]")
nmap("<leader>jm", "i# %% [markdown]")
nmap("<leader>je", ":%s/# %% \\[code\\]<CR>")
nmap("<leader>jf", "/# %% \\[code\\]<CR>")

-- set no conceal
nmap("<leader>nc", ":setlocal conceallevel=0<CR>")

-- [ Quarto hotkeys ]
imap("<A-r>", "```{r}\n\n```")
imap("<A-y>", "```{python}\n\n```<esc>")
-- imap("<A-l>", "```{julia}\n\n```<esc>")

-- remove highlighting
nmap("<leader>nh", ":nohl<CR>")

-- cd to current file directory
nmap("<leader>cd", ":cd %:p:h<CR>")

-- telescope buffers
nmap("<leader>fb", "<cmd>Telescope buffers<CR>")
nmap("<leader>bp", "<cmd>bprevious<CR>")
nmap("<leader>bn", "<cmd>bnext<CR>")

-- pipe operator
imap("<A-p>", "%>%")

-- task/todo
imap("<A-t>", "- [ ] ")

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


