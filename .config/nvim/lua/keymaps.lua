local api               = vim.api
local default_opts = { noremap = true, silent = true }

api.nvim_set_keymap("i", "jj", "<ESC>", default_opts)
api.nvim_set_keymap("i", "C-^", ":normal C-^", {noremap = true, silent=true})

vim.keymap.set('i', '<C-^>', '<esc><C-^>', {noremap = true, silent = true})
vim.keymap.set('n', ';;', '<esc><C-^>', {noremap = true, silent = true})
vim.keymap.set('n', 'gl', ':set relativenumber!<CR>', {noremap = true, silent = true})
vim.keymap.set('n', 'gm', ":call cursor(0, virtcol('$')/2)<CR>")

-- Telescope
vim.keymap.set('n', ';f', '<cmd>Telescope find_files<cr>', default_opts) -- Telescope Find Files
vim.keymap.set('n', ';F', '<cmd>Telescope live_grep<cr>', default_opts)
vim.keymap.set('n', ';vm', '<cmd>Telescope marks<cr>', default_opts)
vim.keymap.set('n', ';vb', '<cmd>Telescope buffers<cr>', default_opts)
vim.keymap.set('n', ';vr', '<cmd>Telescope registers<cr>', default_opts)

--
-- Sneak
