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
    notifier = { enabled = true },
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
  -- stylua: ignore
  keys = {
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
  },
  init = function()
    vim.api.nvim_create_autocmd('User', {
      pattern = 'VeryLazy',
      callback = function()
        -- Setup some globals for debugging (lazy-loaded)
        _G.dd = function(...)
          Snacks.debug.inspect(...)
        end
        _G.bt = function()
          Snacks.debug.backtrace()
        end
        vim.print = _G.dd -- Override print to use snacks for `:=` command

        -- Create some toggle mappings
        Snacks.toggle.option('wrap', { name = 'Wrap' }):map '<leader>tw'
        Snacks.toggle.diagnostics():map '<leader>td'
        Snacks.toggle.inlay_hints():map '<leader>th'
      end,
    })
  end,
}
