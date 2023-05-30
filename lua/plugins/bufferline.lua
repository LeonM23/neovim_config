return {
    "akinsho/bufferline.nvim",
    version = "*",
    config = function()
        require("bufferline").setup({
            options = {
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
