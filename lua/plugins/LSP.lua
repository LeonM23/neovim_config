return {
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
    { "williamboman/mason.nvim",
        event = "VeryLazy",     -- load later and are not important for the initial UI
        build = ":MasonUpdate" },
    "williamboman/mason-lspconfig.nvim",
}
