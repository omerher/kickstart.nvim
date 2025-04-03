return {
  'otavioschwanck/arrow.nvim',
  dependencies = {
    { 'echasnovski/mini.icons' },
  },
  opts = {
    show_icons = true,
    leader_key = 'm', -- Recommended to be a single key
    buffer_leader_key = ';', -- Per Buffer Mappings
    mappings = {
      toggle = 'm',
    },
    index_keys = 'arst123456789xcd',
  },
}
