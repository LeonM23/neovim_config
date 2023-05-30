return {
    'nvim-lua/plenary.nvim',	-- dependencies of lots of plugins

    -- UI
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}, },
    "nvim-tree/nvim-web-devicons",
    "nvim-treesitter/nvim-treesitter",                                                      -- highlight
    "p00f/nvim-ts-rainbow",                                                                 -- rainbow pairs
    { "numToStr/Comment.nvim", config = function() require('Comment').setup() end },        -- Comment
    { "lewis6991/gitsigns.nvim", config = function() require('gitsigns').setup() end },     -- gitsigns
    { "mbbill/undotree", config = function()
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "undotree", silent = true, noremap = true }) 
    end },
}
