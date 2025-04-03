return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    indent = { enabled = true },
    lazygit = {
      configure = true,
      -- config = {
      --   os = { editPreset = 'nvim-remote' },
      --   gui = {
      --     -- set to an empty string "" to disable icons
      --     nerdFontsVersion = '3',
      --   },
      -- },
    },
    quickfile = { enabled = true },
    rename = { enabled = true },
  },
}
