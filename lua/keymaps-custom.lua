-- neotree
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>', {})

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

--lsp
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})

-- select all
vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true, silent = true })

-- to save and exit file
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true })

-- navigation split
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })
vim.keymap.set('n', '<C-q>', '<C-w>q', { noremap = true })

-- switch modes
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('v', 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('x', 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('c', 'jk', '<C-c>', { noremap = true, silent = true })


-- terminal
vim.keymap.set("n", "<C-t>", ":terminal<CR>", { noremap = true })
vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:bd!<CR>", { noremap = true, silent = true })

-- navigation terminal
vim.keymap.set('t', '<C-h>', '<cmd>wincmd h<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<C-j>', '<cmd>wincmd j<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<C-k>', '<cmd>wincmd k<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<C-l>', '<cmd>wincmd l<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tt", function()
  vim.cmd("vsplit | terminal")
end, { desc = "Abrir terminal no lado" })
-- text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- indent
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })

-- change tabs
vim.keymap.set('n', '<Tab>', ':bn<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':bp<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', {noremap = true, silent = true})
--git reviw
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
