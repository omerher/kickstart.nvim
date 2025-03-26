return { -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'ellisonleao/gruvbox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('gruvbox').setup()

    vim.cmd.colorscheme 'gruvbox'
  end,
}
