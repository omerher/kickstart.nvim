return {
  'gbprod/yanky.nvim',
  opts = {},
  keys = {
    { '<leader>P', '<cmd>YankyRingHistory<cr>', mode = { 'n', 'v', 'x' }, desc = 'Open Yank History' },
    -- {
    --   '<leader>P',
    --   function()
    --     vim.cmd [[YankyRingHistory]]
    --   end,
    --   mode = { 'n', 'x' },
    --   desc = 'Open Yank History',
    -- },
  },
}
