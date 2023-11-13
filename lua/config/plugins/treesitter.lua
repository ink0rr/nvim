return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  event = "VeryLazy",
  ---@type TSConfig
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "c",
      "diff",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
    --    incremental_selection = {
    --      enable = true,
    --      keymaps = {
    --        init_selection = "<c-space>",
    --        node_incremental = "<c-space>",
    --        scope_incremental = "<c-s>",
    --        node_decremental = "<M-space>",
    --      },
    --    },
    --    textobjects = {
    --      select = {
    --        enable = true,
    --        lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
    --        keymaps = {
    --          -- You can use the capture groups defined in textobjects.scm
    --          ["aa"] = "@parameter.outer",
    --          ["ia"] = "@parameter.inner",
    --          ["af"] = "@function.outer",
    --          ["if"] = "@function.inner",
    --          ["ac"] = "@class.outer",
    --          ["ic"] = "@class.inner",
    --        },
    --      },
    --      move = {
    --        enable = true,
    --        set_jumps = true, -- whether to set jumps in the jumplist
    --        goto_next_start = {
    --          ["]m"] = "@function.outer",
    --          ["]]"] = "@class.outer",
    --        },
    --        goto_next_end = {
    --          ["]M"] = "@function.outer",
    --          ["]["] = "@class.outer",
    --        },
    --        goto_previous_start = {
    --          ["[m"] = "@function.outer",
    --          ["[["] = "@class.outer",
    --        },
    --        goto_previous_end = {
    --          ["[M"] = "@function.outer",
    --          ["[]"] = "@class.outer",
    --        },
    --      },
    --      swap = {
    --        enable = true,
    --        swap_next = {
    --          ["<leader>a"] = "@parameter.inner",
    --        },
    --        swap_previous = {
    --          ["<leader>A"] = "@parameter.inner",
    --        },
    --      },
    --    },
  },
  ---@param opts TSConfig
  config = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      ---@type table<string, boolean>
      local added = {}
      opts.ensure_installed = vim.tbl_filter(function(lang)
        if added[lang] then
          return false
        end
        added[lang] = true
        return true
      end, opts.ensure_installed)
    end
    require("nvim-treesitter.configs").setup(opts)
  end,
}
