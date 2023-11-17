
return {
    {
        "Pocco81/true-zen.nvim",
        opts = {
            modes = { -- configurations per mode
                ataraxis = {
			        quit_untoggles = true, -- type :q or :qa to quit Ataraxis mode
                    minimum_writing_area = { -- minimum size of main window
                        width = 0,
                        height = 200,
                    },
                    padding = { -- padding windows
				        left = 8,
				        right = 0,
				        top = 0,
				        bottom = 0,
        			},
                }
            }
         }
    }
}

