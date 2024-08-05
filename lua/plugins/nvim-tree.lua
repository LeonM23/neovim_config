return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({

            view = {
                width = 35,
                -- relativenumber = true,
            },
            -- change folder arrow icons
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "", -- arrow when folder is closed
                            arrow_open = "", -- arrow when folder is open
                        },
                    },
                },
            },
            -- disable window_picker for
            -- explorer to work well with
            -- window splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            filters = {
                dotfiles = false,
                custom = { ".DS_Store", "^\\.git", "__pycache__", ".idea", ".local" },
            },
            -- 不显示git图标
            git = {
                enable = false,
            },
        })

        local keymap = vim.api.nvim_set_keymap

        -- Explorer
        keymap(
            "n",
            "<leader>ee",
            ":NvimTreeToggle<CR>",
            { silent = true, noremap = true, desc = "Toggle File Explore" }
        )
        keymap(
            "n",
            "<leader>ef",
            "<cmd>NvimTreeFindFileToggle<CR>",
            { silent = true, noremap = true, desc = "Toggle file explorer on current file" }
        ) -- toggle file explorer on current file
        keymap(
            "n",
            "<leader>ec",
            "<cmd>NvimTreeCollapse<CR>",
            { silent = true, noremap = true, desc = "Collapse file explorer" }
        ) -- collapse file explorer
        keymap(
            "n",
            "<leader>er",
            "<cmd>NvimTreeRefresh<CR>",
            { silent = true, noremap = true, desc = "Refresh file explorer" }
        ) -- refresh file explorer
    end,
}
