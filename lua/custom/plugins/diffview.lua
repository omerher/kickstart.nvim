return {
  'sindrets/diffview.nvim',
  opts = {
    enhanced_diff_hl = true,
    keymaps = {
      -- stylua: ignore
      file_panel = {
        { 'n', 'e', function() require('diffview.actions').goto_file_edit() end, { desc = 'Open the file in the previous tabpage' }, },
        { 'n', 'q', '<cmd>DiffviewClose<cr>', desc = 'Close Diffview' },
        { 'n', '<Right>', function() require('diffview.actions').select_entry() end, { desc = 'Open the diff for the selected entry' } },
      },
    },
  },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = '[g]it [d]iff' },
    { '<leader>gc', '<cmd>DiffviewClose<cr>', desc = '[g]it [c]lose' },
  },
}
