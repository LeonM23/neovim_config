vim.cmd("let g:netrw_liststyle = 3")

local o = vim.opt

-- UI
o.relativenumber = true
o.number = true
o.numberwidth = 4 -- set number column width to 4 (default 4)
o.cursorline = true
o.wrap = false    -- display lines as one long line

-- search
o.hlsearch = true -- highlight search
o.ignorecase = true
o.smartcase = true

-- backspace
o.backspace = "indent,eol,start"


-- edit
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.showtabline = 2
o.conceallevel = 0 -- so `` is visible in markdown file

-- scroll
o.scrolloff = 8
o.sidescrolloff = 8

-- backup
o.backup = false
o.swapfile = false

-- split
o.splitbelow = true
o.splitright = true

-- system
o.encoding = "UTF-8"
o.fileencoding = "UTF-8"
o.clipboard:append("unnamedplus") -- allow nvim to access system clipboard
o.mouse = "a"               -- allow mouse to be used in neovim


-- theme
o.termguicolors = true
o.background = "dark"   -- dark
o.signcolumn = "yes"    -- show sign column so that text doesn't shift
