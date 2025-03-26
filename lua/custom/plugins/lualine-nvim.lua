return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = 'gruvbox',
    },
    sections = {
      lualine_c = {
        {
          'filename',
          path = 1, -- show relative path
        },
      },
    },
  },
  dependencies = { 'echasnovski/mini.icons', enabled = vim.g.have_nerd_font },
}
