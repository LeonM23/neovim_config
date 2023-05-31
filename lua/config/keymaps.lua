local opt = { noremap = true, silent = true }

local term_opt = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- File Explore
keymap("n", "<leader>fe", ":NvimTreeToggle<CR>", { silent = true, noremap = true, desc = "File Explore" })

-- Cancel Highlight
keymap("n", "<leader>nh", ":nohl<CR>", { silent = true, noremap = true, desc = "cancel highlight" })

-- Resize with arrows
keymap("n", "<A-Up>", ":resize +2<CR>", { silent = true, noremap = true, desc = "resize +2" })
keymap("n", "<A-Down>", ":resize -2<CR>", { silent = true, noremap = true, desc = "resize -2" })
keymap("n", "<A-Left>", ":vertical resize -2<CR>", { silent = true, noremap = true, desc = "vresize +2" })
keymap("n", "<A-Right>", ":vertical resize +2<CR>", { silent = true, noremap = true, desc = "vresize -2" })

-- buffers
keymap("n", "<S-l>", ":bnext<CR>", { silent = true, noremap = true, desc = "next buffer" })
keymap("n", "<S-h>", ":bprevious<CR>", { silent = true, noremap = true, desc = "previous buffer" })
keymap("n", "<leader>bl", ":bnext<CR>", { silent = true, noremap = true, desc = "next buffer" })
keymap("n", "<leader>bh", ":bprevious<CR>", { silent = true, noremap = true, desc = "previous buffer" })
keymap("n", "<leader>bd", ":Bdelete<CR>", { silent = true, noremap = true, desc = "close buffer" })      -- delete buffers
keymap("n", "<leader>bo", ":%Bdelete<CR>", { silent = true, noremap = true, desc = "close all buffer" }) -- delete buffers

-- windows
keymap("n", "<leader>w", "<c-w>", { silent = true, noremap = true, desc = "windows" })
keymap("n", "<leader>wd", "<c-w>q", { silent = true, noremap = true, desc = "close window" })

-- Insert --
keymap("i", "jk", "<ESC>", { silent = true, noremap = true, desc = "return to normal" }) -- Press jk fast to enter

-- Visual --
keymap("v", "<", "<gv", { silent = true, noremap = true, desc = "indent <" })
keymap("v", ">", ">gv", { silent = true, noremap = true, desc = "indent >" })

keymap("v", "p", '"_dP', { silent = true, noremap = true, desc = "safe pase" })
keymap("n", "<C-s>", ":w<CR>", { silent = true, noremap = true, desc = "save file" })

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", { silent = true, noremap = true, desc = "move down" })
keymap("x", "K", ":move '<-2<CR>gv-gv", { silent = true, noremap = true, desc = "move up" })
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", {silent=true, noremap=true, desc=""})

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true, noremap = true, desc = "terminal left " })
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true, noremap = true, desc = "terminal down" })
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true, noremap = true, desc = "terminal up" })
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true, noremap = true, desc = "terminal right" })

-- Persistence
-- restore the session for the current directory
keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]],
    { desc = "restore the session for the current directory" })
-- restore the last session
keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]],
    { desc = "restore the last session" })
-- stop Persistence => session won't be saved on exit
keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], { desc = "stop Persistence" })
