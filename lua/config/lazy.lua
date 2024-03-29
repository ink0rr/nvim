local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "tpope/vim-sensible",
  "tpope/vim-surround",
  "tpope/vim-sleuth",
  "ThePrimeagen/vim-be-good",
  {
    "numToStr/Comment.nvim",
    opts = {},
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_b = {
          {
            "macro-status",
            fmt = function()
              local key = vim.fn.reg_recording()
              if key:len() > 0 then
                return "Recording @" .. key
              end
            end,
          },
        },
      },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
  {
    import = "config.plugins",
  },
})
