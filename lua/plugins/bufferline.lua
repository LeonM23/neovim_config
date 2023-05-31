return {
    "famiu/bufdelete.nvim", {
    "akinsho/bufferline.nvim",
    version = "*",
    config = function()
        require("bufferline").setup({
            options = {
                numbers = "none",                    -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
                close_command = "Bdelete! %d",       -- can be a string | function, see "Mouse actions"
                right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
                left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = { 'close' }
                },
                indicator = {
                    -- icon = '▎', -- this should be omitted if indicator style is not 'icon'
                    style = 'underline',
                    -- style = "icon",
                },
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true
                    }
                },
                diagnostics = "nvim_lsp",
            }
        })
    end
}
}
