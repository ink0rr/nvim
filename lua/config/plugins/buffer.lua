return {
  "j-morano/buffer_manager.nvim",
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require("buffer_manager").setup({})
    local ui = require("buffer_manager.ui")
    vim.keymap.set("n", "<C-o>", ui.toggle_quick_menu)
  end
}
