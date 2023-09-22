return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        enabled = false,
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                        -- '.git',
                        -- '.DS_Store',
                        -- 'thumbs.db',
                    },
                    never_show = {},
                },
            }
        },
        config = function()
            nmap('<c-b>', ':Neotree toggle dir=%:p:h<cr>')
        end
    }
}
