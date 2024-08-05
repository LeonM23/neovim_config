return {
    "alexghergh/nvim-tmux-navigation",
    config = function()
        local nvim_tmux_nav = require("nvim-tmux-navigation")

        nvim_tmux_nav.setup({
            disable_when_zoomed = true, -- defaults to false
        })

        vim.keymap.set(
            "n",
            "<C-h>",
            nvim_tmux_nav.NvimTmuxNavigateLeft,
            { noremap = true, silent = true, desc = "Tmux left" }
        )
        vim.keymap.set(
            "n",
            "<C-j>",
            nvim_tmux_nav.NvimTmuxNavigateDown,
            { noremap = true, silent = true, desc = "Tmux down" }
        )
        vim.keymap.set(
            "n",
            "<C-k>",
            nvim_tmux_nav.NvimTmuxNavigateUp,
            { noremap = true, silent = true, desc = "Tmux up" }
        )
        vim.keymap.set(
            "n",
            "<C-l>",
            nvim_tmux_nav.NvimTmuxNavigateRight,
            { noremap = true, silent = true, desc = "Tmux right" }
        )
        vim.keymap.set(
            "n",
            "<C-\\>",
            nvim_tmux_nav.NvimTmuxNavigateLastActive,
            { noremap = true, silent = true, desc = "Tmux last active" }
        )
        vim.keymap.set(
            "n",
            "<C-Space>",
            nvim_tmux_nav.NvimTmuxNavigateNext,
            { noremap = true, silent = true, desc = "Tmux next" }
        )
    end,
}
