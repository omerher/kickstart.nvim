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
    tabline = {
      lualine_a = { 'filename' },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'tabs' },
    },
  },
  dependencies = { 'echasnovski/mini.icons', enabled = vim.g.have_nerd_font },
}
