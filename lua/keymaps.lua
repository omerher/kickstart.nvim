wk = require 'which-key'

vim.keymap.set('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Remove highlights on ESC

-- Center on page up/down
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })

-- System clipboard
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', [["+y]], { desc = 'Clipboard Yank' })
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>p', [["+p]], { desc = 'Clipboard Paste' })
wk.add { '<leader>y', icon = { icon = '󰅇', color = 'yellow' } }
wk.add { '<leader>p', icon = { icon = '󰅇', color = 'yellow' } }

vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })

vim.keymap.set('n', '<leader>e', function()
  MiniFiles.open() ---@diagnostic disable-line: undefined-global
end, { desc = 'Open File Explorer' })
vim.keymap.set('n', '<leader>E', function()
  MiniFiles.open(vim.api.nvim_buf_get_name(0)) ---@diagnostic disable-line: undefined-global
end, { desc = 'Open File Explorer' })

vim.keymap.set('n', '<space>gg', function()
  Snacks.lazygit.open()
end, { desc = 'Open LazyGit' })

--
-- Copied from neovim/runtime/lua/vim/_defaults.lua
do
  local operator_rhs = function()
    return require('vim._comment').operator()
  end
  vim.keymap.set({ 'n', 'v', 'x' }, '<C-_>', operator_rhs, { expr = true, desc = 'Toggle Comment' })
  vim.keymap.set({ 'n', 'v', 'x' }, '<C-/>', operator_rhs, { expr = true, desc = 'Toggle Comment' })

  local line_rhs = function()
    return require('vim._comment').operator() .. '_'
  end
  vim.keymap.set({ 'n', 'v' }, '<C-_>', line_rhs, { expr = true, desc = 'Toggle Comment Line' })
  vim.keymap.set({ 'n', 'v' }, '<C-/>', line_rhs, { expr = true, desc = 'Toggle Comment Line' })

  local textobject_rhs = function()
    require('vim._comment').textobject()
  end
  vim.keymap.set({ 'o' }, '<C-_>', textobject_rhs, { desc = 'Comment Textobject' })
  vim.keymap.set({ 'o' }, '<C-/>', textobject_rhs, { desc = 'Comment Textobject' })
end

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  NOTE: do i need this with tmux-vim-navigation?
-- vim.keymap.set('n', '<M-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<M-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<M-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<M-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
