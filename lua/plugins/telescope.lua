-- plugins/telescope.lua:
return {
    {
	    'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()

            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = {
                        ".git/", ".cache", "%.pdf", "%.mkv", "%.mp4", "%.zip", ".snakemake", ".ipynb_checkpoints", ".pixi",
                        "_build/html/_static"
                    },
                }
            })

            -- these are the ones suggested in the docs
            local builtin = require('telescope.builtin')
            local telescope = require('telescope')

            -- includes the files in the gitignore by default
            vim.keymap.set('n', '<leader>ff', ":Telescope find_files hidden=true no_ignore=true<CR>",
                    { noremap = true, silent = true })
            -- search for version control tracked files only
            vim.keymap.set('n', '<leader>ft', builtin.find_files, {})
            -- live grep for strings in many files
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            -- look through open buffers
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            -- searches the text under the cursor
            vim.keymap.set('n', '<leader>fu', builtin.grep_string, {})
            -- search help pages
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
            -- searches recent files
            vim.keymap.set('n', '<leader>fr', ":Telescope oldfiles<cr>")

            telescope.load_extension("workspaces")
            -- this doesn't work and I didn't need to do it before
            -- telescope.load_extension("harpoon")

        end

    }
}
