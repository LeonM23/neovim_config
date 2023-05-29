return {
    'nvim-lua/plenary.nvim',	-- dependencies of lots of plugins
    "folke/which-key.nvim",
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}, },
    { "nvim-lualine/lualine.nvim",  
    	dependencies = {"nvim-tree/nvim-web-devicons", lazy=true},
        config = function()
            require("lualine").setup()
        end
    },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
          keys = {
              {"<leader>ff", "<cmd>Telescope find_files<cr>", desc="find files" },
              {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc="live grep" },
              {"<leader>fb", "<cmd>Telescope buffers<cr>", desc="buffers" },
              {"<leader>fh", "<cmd>Telescope help_tags<cr>", desc="help tags" },
          }, 
    },
    { "williamboman/mason.nvim",
        event = "VeryLazy",     -- load later and are not important for the initial UI
        build = ":MasonUpdate",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    { "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup()
        end
    },
    { "jose-elias-alvarez/null-ls.nvim", 
        config = function()
            require("null-ls").setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.diagnostics.eslint,
                    null_ls.builtins.completion.spell,
                },
            })
        end
    }

}
