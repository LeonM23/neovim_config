-- file finding
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    keys = {
        { "<leader>fs", "<cmd>Telescope find_files<cr>", desc = "file search" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "file grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "find buffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "find help tags" },
    },
}
