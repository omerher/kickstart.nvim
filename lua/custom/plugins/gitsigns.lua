return {
  'lewis6991/gitsigns.nvim',
  opts = {
    on_attach = function(bufnr)
      local gitsigns = require 'gitsigns'

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map('n', ']c', function()
        if vim.wo.diff then
          vim.cmd.normal { ']c', bang = true }
        else
          gitsigns.nav_hunk 'next'
        end
      end, { desc = 'Jump to next git [c]hange' })

      map('n', '[c', function()
        if vim.wo.diff then
          vim.cmd.normal { '[c', bang = true }
        else
          gitsigns.nav_hunk 'prev'
        end
      end, { desc = 'Jump to previous git [c]hange' })

      -- Actions
      -- normal mode
      map('n', '<leader>gp', gitsigns.preview_hunk, { desc = 'git [p]review hunk' })
      map('n', '<leader>gP', gitsigns.preview_hunk_inline, { desc = 'git [P]review hunk inline' })
      map('n', '<leader>gr', gitsigns.reset_hunk, { desc = 'git [r]eset hunk' })
      map('n', '<leader>gb', gitsigns.blame_line, { desc = 'git [b]lame line' })
      map('n', '<leader>gB', gitsigns.blame, { desc = 'git [B]lame buffer' })
      -- Toggles
      map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = '[T]oggle [b]lame line' })
    end,
  },
}
