require("config.lazy")
require("config.lsp")

-- Basic options

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

vim.opt.swapfile = false

vim.opt.backspace = "indent,eol,start"

vim.g.rust_recommended_style = false -- prevent rust from fucking up the rest of the config

vim.opt.clipboard:append("unnamedplus") -- use system clipboard

-- Keybinds

-- Telescope

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- NvimTree

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle File Tree' })
vim.keymap.set('n', '<leader>r', '<cmd>NvimTreeFocus<CR>', { desc = 'Focus File Tree' })

-- Tabs

vim.keymap.set('n', '<C-t>', '<cmd>tabnew<CR>', { desc = 'New Tab' })
vim.keymap.set('n', '<C-d>', '<cmd>tabnext<CR>', { desc = 'Next Tab' })
vim.keymap.set('n', '<C-a>', '<cmd>tabprevious<CR>', { desc = 'Previous Tab' })
vim.keymap.set('n', '<C-w>', '<cmd>tabclose<CR>', { desc = 'Close Tab' })

vim.filetype.add({
  extension = {
    ino = 'cpp',
  },
})
