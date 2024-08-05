return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            auto_restore_enabled = false,
            auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
        })

        local keymap = vim.api.nvim_set_keymap

        keymap("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore Session for Current Directory" }) -- restore last workspace session for current directory
        keymap("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save Session for auto session root dir" }) -- save workspace session for current working directory
    end,
}
