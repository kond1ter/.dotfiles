local actions = require("telescope.actions")
require('telescope').setup {
	pickers = {
		buffers = {
			initial_mode = 'normal'
		}
	},
    defaults = {
        layout_config = {
            horizontal = {
                    size = {
                    width = "90%",
                    height = "60%",
                },
            },
            vertical = {
                    size = {
                    width = "90%",
                    height = "90%",
                },
            },
        },
        mappings = {
            i = {
                ["<esc>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
        }
    },
}
