require("nvim-treesitter.install").prefer_git = true

require('nvim-treesitter.configs').setup({
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true, },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>", -- set to `false` to disable one of the mappings
            node_incremental = "<CR>",
            node_decremental = "<BS>",
            scope_incremental = "<Tab>",
        },
    },

    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
    },
})
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99

return {}
