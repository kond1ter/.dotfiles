vim.g.barbar_auto_setup = false

require('barbar').setup {
    icons = {
        separator = {left = '▎', right = ''},
        separator_at_end = false,
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = {enabled = true},
            [vim.diagnostic.severity.WARN] = {enabled = true},
            -- [vim.diagnostic.severity.INFO] = {enabled = true},
            -- [vim.diagnostic.severity.HINT] = {enabled = true},
        },
        filetype = {
            custom_colors = true,
        },
    }
}

