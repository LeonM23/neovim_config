-- file finding
return { 
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    keys = {
      {"<leader>ff", "<cmd>Telescope find_files<cr>", desc="find files" },
      {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc="live grep" },
      {"<leader>fb", "<cmd>Telescope buffers<cr>", desc="buffers" },
      {"<leader>fh", "<cmd>Telescope help_tags<cr>", desc="help tags" },
    }, 
}
