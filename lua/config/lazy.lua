local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
  "numToStr/Comment.nvim", -- "gc" to comment visual regions/lines
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme("gruvbox")
      -- You can configure highlights by doing something like:
      vim.cmd.hi("Comment gui=none")
    end,
    opts = {
      contrast = "soft",
      italic = {
        strings = false,
      },
      transparent_mode = true,
    },
  },
  {
    "echasnovski/mini.nvim",
    config = function()
      -- Better Around/Inside textobjects
      require("mini.ai").setup({ n_lines = 500 })
      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      require("mini.surround").setup()
      -- Simple and easy statusline.
      local statusline = require("mini.statusline")
      -- set use_icons to true if you have a Nerd Font
      statusline.setup({ use_icons = true })

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return "%2l:%-2v"
      end
    end,
  },
  {
    "folke/which-key.nvim", -- Useful plugin to show you pending keybinds.
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require("which-key").setup()

      -- Document existing key chains
      require("which-key").register({
        ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
        ["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
        ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
        ["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
        ["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
        ["<leader>t"] = { name = "[T]oggle", _ = "which_key_ignore" },
        ["<leader>h"] = { name = "Git [H]unk", _ = "which_key_ignore" },
      })
      -- visual mode
      require("which-key").register({
        ["<leader>h"] = { "Git [H]unk" },
      }, { mode = "v" })
    end,
  },
  {
    import = "config.plugins",
  },
})
