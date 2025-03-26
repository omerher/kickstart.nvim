return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'echasnovski/mini.icons', enabled = vim.g.have_nerd_font },
  opts = {
    'hide', -- Allow resume even when exiting using ESC or CTRL-C
    fzf_colors = true,
    fzf_opts = {
      ['--no-scrollbar'] = true,
    },
    defaults = {
      formatter = 'path.dirname_first',
    },
    keymap = {
      fzf = {
        ['ctrl-q'] = 'select-all+accept',
        ['ctrl-u'] = 'half-page-up',
        ['ctrl-d'] = 'half-page-down',
      },
    },
  },
  keys = {
    { '<leader><space>', '<cmd>FzfLua files<cr>', desc = 'Find Files' },
    { '<leader>/', '<cmd>FzfLua live_grep<cr>', desc = 'Live Grep' },
    { '<leader>sk', '<cmd>FzfLua keymaps<cr>', desc = 'Key Maps' },
    { '<leader>sw', '<cmd>FzfLua grep_cword<cr>', desc = 'Word' },
    { '<leader>sw', '<cmd>FzfLua grep_visual<cr>', desc = 'Selection', mode = { 'x' } },
    { '<leader>ss', '<cmd>FzfLua builtin<cr>', desc = 'FzfLua Options' },
    { '<leader>sr', '<cmd>FzfLua oldfiles<cr>', desc = 'Recent Files' },
    { '<leader>s.', '<cmd>FzfLua resume<cr>', desc = 'Resume' },
    { '<leader>sd', '<cmd>FzfLua diagnostics_document<cr>', desc = 'Document Diagnostics' },
    { '<leader>sD', '<cmd>FzfLua diagnostics_workspace<cr>', desc = 'Workspace Diagnostics' },

    { 'gd', '<cmd>FzfLua lsp_definitions<cr>', desc = 'Go To Definition' },
  },
  init = function()
    require('fzf-lua').register_ui_select()
  end,
}
