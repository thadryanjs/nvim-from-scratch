-- plugins/telescope.lua:
return {

    {
	    'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = {".git/", ".cache", "%.o", "%.a", "%.out", "%.class","%.pdf", "%.mkv", "%.mp4", "%.zip"},
                }


            })
            
            -- these are the ones suggested in the docs
            local builtin = require('telescope.builtin')
            local telescope = require('telescope')

            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

            vim.keymap.set("n", "<leader>fa", ":lua require('telescope.builtin').find_files({hidden=true})<CR>", {})
            
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
           
            -- adding some more 
            vim.keymap.set('n', '<leader>fr', ":Telescope oldfiles<cr>")
            
            telescope.load_extension("workspaces")

        end

    }
}
