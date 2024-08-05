return {
	"nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.install").prefer_git = true

		require("nvim-treesitter.configs").setup({
			-- install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,
			auto_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<cr>", -- set to `false` to disable one of the mappings
					node_incremental = "<cr>",
					node_decremental = "<bs>",
					scope_incremental = "<tab>",
				},
			},

			rainbow = {
				enable = true,
				extended_mode = true, -- also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
				max_file_lines = nil, -- do not enable for files with more than n lines, int
			},
            ensure_installed = {
                "json",
                "javascript",
                "yaml",
                "html",
                "css",
                "markdown",
                "markdown_inline",
                "bash",
                "lua",
                "vim",
                "dockerfile",
                "gitignore",
                "query",
                "vimdoc",
                "c",
                "python",
                "ruby",
                "rust",
            },
		})
		vim.wo.foldmethod = "expr"
		vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
		vim.wo.foldlevel = 99
	end,
}
