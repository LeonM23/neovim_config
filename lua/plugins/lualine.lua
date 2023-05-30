return { 
    "nvim-lualine/lualine.nvim",          -- taskbar 
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require("lualine").setup()
    end
}
