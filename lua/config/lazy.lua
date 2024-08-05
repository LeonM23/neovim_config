-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "git@github.com:/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- load plugins
require("lazy").setup(
    {
        { import = "plugins" },
        { import = "plugins.lsp" },
    },
    {
        git = {
            -- defaults for the `Lazy log` command
            -- log = { "-10" }, -- show the last 10 commits
            log = { "-8" }, -- show commits from the last 3 days
            timeout = 120,  -- kill processes that take more than 2 minutes
            -- url_format = "https://github.com/%s.git",
            url_format = "git@github.com:%s.git",
            -- lazy.nvim requires git >=2.19.0. If you really want to use lazy with an older version,
            -- then set the below to false. This should work, but is NOT supported and will
            -- increase downloads a lot.
            filter = true,
        },
        checker = {
            enabled = true,
            notify = false,
        },
        change_detection = {
            notify = false,
        },
    }
)
