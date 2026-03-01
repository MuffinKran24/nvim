require("config.lazy")
require("config.lsp")

-- Basic options

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.autoindent = true
vim.opt.signcolumn = "yes"

vim.g.rust_recommended_style = false -- prevent rust from fucking up the rest of the config

-- Keybinds

local builtin = require('telescope.builtin')

-- Telescope

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- NvimTree

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle File Tree' })
vim.keymap.set('n', '<leader>r', '<cmd>NvimTreeFocus<CR>', { desc = 'Focus File Tree' })
