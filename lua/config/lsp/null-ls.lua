-- nvim/lua/user/lsp/null-ls.lua

local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,

    -- the sources are prettier, eslint_d and rubocop
    sources = {
        formatting.prettier,     -- javascript
        formatting.yapf,         -- python
        formatting.clang_format, -- c, cpp
        formatting.stylua,       -- lua
        diagnostics.pylint,      -- python
        diagnostics.cpplint,     -- c, cpp
    },
})
