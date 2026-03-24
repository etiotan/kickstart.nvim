return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- optional, for icons
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = 'open_default', -- replaces netrw
      },
    }

    -- Keymaps
    vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })
    vim.keymap.set('n', '<leader>o', '<cmd>Neotree reveal<CR>', { desc = 'Reveal file in Neo-tree' })
  end,
}
