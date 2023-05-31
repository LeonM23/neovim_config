return {
    "nvim-tree/nvim-tree.lua", -- file explorer
    config = function()
        require("nvim-tree").setup({
            sort_by = "case_sensitive",
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
            -- 不显示 git 状态图标
            git = {
                enable = false
            }
        })
    end
}
