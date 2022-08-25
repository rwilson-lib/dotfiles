local api = vim.api
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- mouse release = send selection to clipboard
-- nvim_set_keymap() help: see https://github.com/nanotee/nvim-lua-guide

opt.termguicolors = true   -- Enable colors in terminal
opt.number = true          -- Make line numbers default
opt.relativenumber = true  -- Make relative number default
-- opt.mouse = "a"            -- Enable mouse mode
opt.breakindent = true     -- Enable break indent
opt.undofile = true        -- Save undo history
opt.updatetime = 250       -- Decrease update time
-- opt.signcolumn = "yes"     -- Always show sign column
-- opt.clipboard = "unnamedplus" -- Access system clipboard
opt.showmatch = true       -- highlight matching brackets
-- opt.cursorline = true      -- show cursor line
-- opt.cursorcolumn = true    -- show cursor column
opt.joinspaces = false     -- No double spaces with join after a dot
opt.list = true            -- show space and tabs chars
opt.spelllang = "en_us"
opt.sessionoptions = { 'buffers', 'curdir','folds','help','tabpages','winsize','winpos','terminal'}
opt.wildignore = {'*/cache/*', '*/tmp/*', '*/node_modules/*'}

opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'} -- make tab, etc visible

vim.opt.background = "dark"

--Set the behavior of tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true

-- set fileencodings=utf-8,default
opt.fileencodings = {'utf-8', 'default'}
--
-- Searches
opt.incsearch = true       -- run search 
opt.smartcase = true       -- Smart case
opt.hlsearch = true        -- Set highlight on search
opt.ignorecase = true      -- Case insensitive searching unless /C or capital in search

opt.ruler = true           -- ruler
opt.scrolloff = 5            -- vertial scrolloff
opt.showcmd = true
opt.history = 1000         -- Set history
--
-- set path+=**

-- set splitbelow
-- set splitright

-- set dictionary+=/usr/share/dict/words
-- set thesaurus+=/home/jsmith/mythesaurus.txt
--
vim.opt.timeoutlen=500
vim.g.mapleader = " "

require('plugins')
require('plugins.completion')
require('plugins.lsp')
require('plugins.lualine')
require('plugins.telescope')
require('plugins.tree-sitter')
require('plugins.treesitter-textobjects')
require('keymaps')
require('plugins.whichkeys')

require('neogit').setup {}
-- require("bufferline").setup{}

-- prefer `industry` color scheme
vim.cmd [[
  colorscheme dracula
]]
