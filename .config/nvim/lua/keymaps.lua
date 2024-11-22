
vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap

-- Moving among splits
map("n", "<C-h>", "<C-w>h", {noremap = true, silent = true})
map("n", "<C-j>", "<C-w>j", {noremap = true, silent = true})
map("n", "<C-k>", "<C-w>k", {noremap = true, silent = true})
map("n", "<C-l>", "<C-w>l", {noremap = true, silent = true})
map("n", "<A-s>", ":vsplit<cr>", {noremap = true, silent = true})

-- Ctrl+S to save
-- map("n", "<C-s>", "<C-c>:update<cr>", {noremap = true, silent = true})
-- map("v", "<C-s>", "<C-c>:update<cr>", {noremap = true, silent = true})
-- map("i", "<C-s>", "<C-c>:update<cr>", {noremap = true, silent = true})
map("n", "<C-s>", "<C-c>:w<cr>", {noremap = true, silent = true})
map("v", "<C-s>", "<C-c>:w<cr>", {noremap = true, silent = true})
map("i", "<C-s>", "<C-c>:w<cr>", {noremap = true, silent = true})
map("n", "<C-A-s>", "<C-c>:wall<cr>", {noremap = true, silent = true})
map("v", "<C-A-s>", "<C-c>:wall<cr>", {noremap = true, silent = true})
map("i", "<C-A-s>", "<C-c>:wall<cr>", {noremap = true, silent = true})

-- Navigation simplifying
map("n", "<S-j>", "5j", {noremap = true, silent = false})
map("n", "<S-k>", "5k", {noremap = true, silent = false})
map("n", "<S-i>", "<S-k>", {noremap = true, silent = false})
map("n", "<S-y>", "<S-j>", {noremap = true, silent = false})
map("n", "<S-w>", "$", {noremap = true, silent = false})
map("v", "<S-w>", "$h", {noremap = true, silent = false})
map("n", "$", "$", {noremap = true, silent = false})
map("v", "$", "$h", {noremap = true, silent = false})
map("n", "<S-b>", "_", {noremap = true, silent = false})
map("v", "<S-b>", "_", {noremap = true, silent = false})
map("n", "<space>v", "<C-v>", {noremap = true, silent = false})
map("n", ";;", "$a;<Esc>", {noremap = true, silent = false})
map("n", ",,", "$a,<Esc>", {noremap = true, silent = false})

-- NeoTree
map("n", "<space>e", ":Neotree toggle<cr>", {noremap = true, silent = true})

-- BufferLine
map("n", "<A-l>", ":BufferNext<cr>", {noremap = true, silent = true})
map("n", "<A-h>", ":BufferPrevious<cr>", {noremap = true, silent = true})
map("n", "<C-A-l>", ":BufferMoveNext<cr>", {noremap = true, silent = true})
map("n", "<C-A-h>", ":BufferMovePrevious<cr>", {noremap = true, silent = true})

map("n", "<A-1>", ":BufferGoto 1<cr>", {noremap = true, silent = true})
map("n", "<A-2>", ":BufferGoto 2<cr>", {noremap = true, silent = true})
map("n", "<A-3>", ":BufferGoto 3<cr>", {noremap = true, silent = true})
map("n", "<A-4>", ":BufferGoto 4<cr>", {noremap = true, silent = true})
map("n", "<A-5>", ":BufferGoto 5<cr>", {noremap = true, silent = true})
map("n", "<A-6>", ":BufferGoto 6<cr>", {noremap = true, silent = true})
map("n", "<A-7>", ":BufferGoto 7<cr>", {noremap = true, silent = true})
map("n", "<A-8>", ":BufferGoto 8<cr>", {noremap = true, silent = true})
map("n", "<A-9>", ":BufferGoto 9<cr>", {noremap = true, silent = true})
map("n", "<A-q>", ":BufferClose<cr>", {noremap = true, silent = true})

-- Telescope
map('n', '<space>ff', '<cmd>Telescope find_files<CR>', {noremap = true, silent = true})
map('n', '<space>fg', '<cmd>Telescope live_grep<CR>', {noremap = true, silent = true})
map('n', '<space>b', '<cmd>Telescope buffers<CR>', {noremap = true, silent = true})
map('n', '<space>ll', '<cmd>Telescope lsp_references<CR>', {noremap = true, silent = true})
map('n', '<space>lc', '<cmd>Telescope lsp_incoming_calls<CR>', {noremap = true, silent = true})
map('n', '<space>ls', '<cmd>Telescope treesitter<CR>', {noremap = true, silent = true})
map('n', '<space>li', '<cmd>Telescope lsp_definitions<CR>', {noremap = true, silent = true})
map('n', '<space>gb', '<cmd>Telescope git_branches<CR>', {noremap = true, silent = true})
map('n', '<space>gs', '<cmd>Telescope git_status<CR>', {noremap = true, silent = true})
map('n', '<space>gc', '<cmd>Telescope git_commits<CR>', {noremap = true, silent = true})

-- Trouble
map("n", "<space>d", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", {noremap = true, silent = true})
map("n", "<space>w", "<cmd>Trouble diagnostics toggle<cr>", {noremap = true, silent = true})
map("n", "<space>q", "<cmd>Trouble qflist toggle<cr>", {noremap = true, silent = true})

-- Mason
map("n", "<space>m", "<cmd>Mason<cr>", {noremap = true, silent = true})

-- Prettier
map("n", "<space>p", "<cmd>Prettier<cr>", {noremap = true, silent = true})

-- Multiple Cursors
map("n", "<C-S-j>", "<C-Down>", {noremap = false, silent = false})
map("n", "<C-S-k>", "<C-Up>", {noremap = false, silent = false})
