require('options')
require('keymaps')
require('plugins.lazy')
require('plugins.keymaps')
require('plugins.options')

-- Установка через lazy.nvim
return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
      require('nvim-autopairs').setup({
        disable_filetype = { "TelescopePrompt", "spectre_panel" },
        check_ts = true,  -- проверка treesitter
      })
    end
  }
}
