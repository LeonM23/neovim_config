return { 
   'alexghergh/nvim-tmux-navigation', 
    config = function()

        local nvim_tmux_nav = require('nvim-tmux-navigation')
        local opts = { noremap = true, silent = true }

        nvim_tmux_nav.setup {
            disable_when_zoomed = true      -- defaults to false
        }

        vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft, opts)
        vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown, opts)
        vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp, opts)
        vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight, opts)
        vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive, opts)
        vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext, opts)

    end
}
