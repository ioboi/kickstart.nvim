return {
  {
    'ruifm/gitlinker.nvim',
    config = function()
      local gitlinker = require 'gitlinker'
      gitlinker.setup()

      vim.keymap.set('n', '<leader>gb', function()
        gitlinker.get_buf_range_url('n', { require('gitlinker.actions').open_in_browser })
      end, { desc = '[G]itlinker [B]rowser' })
    end,
  },
}
