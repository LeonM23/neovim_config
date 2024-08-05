-- leader
vim.g.mapleader = " "

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Insert --
keymap("i", "jk", "<ESC>", { silent = true, noremap = true, desc = "return to normal" }) -- Press jk fast to enter

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
keymap("n", "<leader>bk", ":blast<CR>", { silent = true, noremap = true, desc = "last buffer" })
keymap("n", "<leader>bj", ":bfirst<CR>", { silent = true, noremap = true, desc = "first buffer" })
keymap("n", "<leader>bc", ":Bdelete<CR>", { silent = true, noremap = true, desc = "close buffer" })
keymap("n", "<leader>bs", ":buffers<CR>", { silent = true, noremap = true, desc = "show all buffers" })
keymap("n", "<leader>be", ":edit ", { silent = true, noremap = true, desc = "open buffer with file" })
keymap("n", "<leader>bo", ":%Bdelete<CR>", { silent = true, noremap = true, desc = "close all buffer" })

-- windows
keymap("n", "<leader>w", "<c-w>", { silent = true, noremap = true, desc = "windows" })
keymap("n", "<leader>wh", "<c-w>h", { silent = true, noremap = true, desc = "window left" })
keymap("n", "<leader>wj", "<c-w>j", { silent = true, noremap = true, desc = "window down" })
keymap("n", "<leader>wk", "<c-w>k", { silent = true, noremap = true, desc = "window upside" })
keymap("n", "<leader>wl", "<c-w>l", { silent = true, noremap = true, desc = "window right" })
keymap("n", "<leader>wc", "<c-w>c", { silent = true, noremap = true, desc = "close window" })
keymap("n", "<leader>w-", ":split<CR>", { silent = true, noremap = true, desc = "close window horizontally" })
keymap("n", "<leader>w|", ":vsplit<CR>", { silent = true, noremap = true, desc = "split window vertically" })
keymap("n", "<leader>wt", ":bo term<CR>", { silent = true, noremap = true, desc = "open terminal underneath." })

-- Visual --
keymap("v", "<", "<gv", { silent = true, noremap = true, desc = "indent <" })
keymap("v", "<s-TAB>", "<gv", { silent = true, noremap = true, desc = "indent <" })
keymap("v", ">", ">gv", { silent = true, noremap = true, desc = "indent >" })
keymap("v", "<TAB>", ">gv", { silent = true, noremap = true, desc = "indent >" })

keymap("v", "p", '"_dP', { silent = true, noremap = true, desc = "safe pase" })
keymap("n", "<C-s>", ":w<CR>", { silent = true, noremap = true, desc = "save file" })

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", { silent = true, noremap = true, desc = "move down" })
keymap("x", "K", ":move '<-2<CR>gv-gv", { silent = true, noremap = true, desc = "move up" })
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", {silent=true, noremap=true, desc=""})

-- -- Terminal --
-- -- Better terminal navigation works with Tmux
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true, noremap = true, desc = "terminal left " })
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true, noremap = true, desc = "terminal down" })
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true, noremap = true, desc = "terminal up" })
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true, noremap = true, desc = "terminal right" })

-- Persistence
-- restore the session for the current directory
keymap(
    "n",
    "<leader>qs",
    [[<cmd>lua require("persistence").load()<cr>]],
    { desc = "restore the session for the current directory" }
)
-- restore the last session
keymap(
    "n",
    "<leader>ql",
    [[<cmd>lua require("persistence").load({ last = true })<cr>]],
    { desc = "restore the last session" }
)
-- stop Persistence => session won't be saved on exit
keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], { desc = "stop Persistence" })
keymap("n", "<leader>qq", "<cmd>q<CR>", { desc = "quit current window" })
keymap("n", "<leader>qa", "<cmd>qa<CR>", { desc = "quit all window" })
