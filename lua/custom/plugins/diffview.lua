return {
  'sindrets/diffview.nvim',
  opts = {
    keymaps = {
      file_panel = {
        {
          'n',
          'e',
          function()
            require('diffview.actions').goto_file_edit()
          end,
          { desc = 'Open the file in the previous tabpage' },
        },
        { 'n', 'q', '<cmd>DiffviewClose<cr>', desc = 'Close Diffview' },
      },
    },
  },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = '[g]it [d]iff' },
    { '<leader>gc', '<cmd>DiffviewClose<cr>', desc = '[g]it [c]lose' },
  },
}
