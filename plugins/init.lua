return {
  { "folke/zen-mode.nvim", cmd = { "ZenMode" }, config = function() require("user.plugins.zen-mode").config() end },
  {
    "ray-x/lsp_signature.nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "lsp_signature.nvim") end,
    config = function() require("lsp_signature").setup() end,
  },
  {
    "michaeljsmith/vim-indent-object",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-indent-object") end,
  },
  { "tweekmonster/startuptime.vim", cmd = "StartupTime" },
  {
    "kevinhwang91/nvim-bqf",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "nvim-bqf") end,
    config = function() require("user.plugins.nvim-bqf").config() end,
  },
  { "romgrk/fzy-lua-native" },
  { "nvim-telescope/telescope-fzy-native.nvim", run = "make" },
  {
    "mg979/vim-visual-multi",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-visual-multi") end,
  }, -- vim -Nu ~/.local/share/lunarvim/site/pack/packer/start/vim-visual-multi/tutorialrc
  { "nvim-treesitter/nvim-treesitter-textobjects", before = "nvim-treesitter" },
  {
    "kylechui/nvim-surround",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "nvim-surround") end,
    config = function() require("user.plugins.nvim_surround").config() end,
  },
  {
    "kevinhwang91/nvim-ufo",
    requires = "kevinhwang91/promise-async",
    config = function() require("user.plugins.nvim-ufo").config() end,
  },
  {
    "ellisonleao/glow.nvim",
    setup = function() table.insert(astronvim.file_plugins, "glow.nvim") end,
    config = function() require("glow").setup { border = "rounded" } end,
    ft = "markdown",
  },
  {
    "mickael-menu/zk-nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "zk-nvim") end,
    config = function() require("user.plugins.zk-nvim").config() end,
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    run = ":CatppuccinCompile",
    config = function() require("user.plugins.catppuccin").config() end,
  },
  {
    "iamcco/markdown-preview.nvim",
    setup = function() table.insert(astronvim.file_plugins, "markdown-preview.nvim") end,
    run = "cd app && npm install",
    config = function() vim.g.mkdp_browser = "firefoxMD" end,
    ft = "markdown",
  },
  {
    "hrsh7th/cmp-cmdline",
    config = function()
      require("cmp").setup.cmdline(":", { sources = { { name = "cmdline" } } })
      require("cmp").setup.cmdline("/", { sources = { { name = "buffer" } } })
    end,
  },
  {
    "mbbill/undotree",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "undotree") end,
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function() vim.g.matchup_matchparen_offscreen = { method = "popup" } end,
  },
  {
    "uga-rosa/ccc.nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "ccc.nvim") end,
    config = function() require("user.plugins.ccc").config() end,
  },
  {
    "f-person/git-blame.nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "git-blame.nvim") end,
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
  },
  {
    "monaqa/dial.nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "dial.nvim") end,
    config = function() require("user.plugins.dial").config() end,
  },
  {
    "nacro90/numb.nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "numb.nvim") end,
    config = function() require("user.plugins.numb").config() end,
  },
  {
    "karb94/neoscroll.nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "neoscroll.nvim") end,
    config = function() require("user.plugins.neoscroll").config() end,
  },
  {
    "metakirby5/codi.vim",
    setup = function() table.insert(astronvim.file_plugins, "codi.vim") end,
    cmd = "Codi",
    ft = { "python", "javascript", "php" },
  },
  {
    "ggandor/leap.nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "leap.nvim") end,
    config = function() require("leap").set_default_keymaps() end,
  },
  {
    "ggandor/flit.nvim",
    requires = "ggandor/leap.nvim",
    event = "BufRead",
    config = function()
      require("flit").setup {
        keys = { f = "f", F = "F", t = "t", T = "T" },
        labeled_modes = "v",
        multiline = true,
        opts = {},
      }
    end,
  },
  {
    "notjedi/nvim-rooter.lua",
    config = function()
      require("nvim-rooter").setup {
        rooter_patterns = { ".git", ".hg", ".svn", "*.conf" },
        trigger_patterns = { "*" },
        manual = false,
      }
    end,
  },
  {
    "ruifm/gitlinker.nvim",
    event = "BufRead",
    config = function()
      require("gitlinker").setup {
        opts = {
          add_current_line_on_normal_mode = true,
          action_callback = require("gitlinker.actions").copy_to_clipboard,
          print_url = false,
          mappings = "<leader>gy",
        },
      }
    end,
    requires = "nvim-lua/plenary.nvim",
  },
  {
    "Pocco81/true-zen.nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "true-zen.nvim") end,
    config = function() require("true-zen").setup {} end,
  },
  {
    "folke/trouble.nvim",
    setup = function() table.insert(astronvim.file_plugins, "trouble.nvim") end,
    cmd = "TroubleToggle",
  },
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function() require("user.plugins.lspsaga").config() end,
  },
  {
    "j-hui/fidget.nvim",
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "fidget.nvim") end,
    config = function() require("fidget").setup() end,
  },
  { "christoomey/vim-tmux-navigator" },
  {
    "ibhagwan/fzf-lua",
    -- setup = function()
    --   vim.api.nvim_set_keymap(
    --     "n",
    --     "<c-P>",
    --     "<cmd>lua require('fzf-lua').files()<CR>",
    --     { noremap = true, silent = true }
    --   )
    --   vim.api.nvim_set_keymap("n", "<c-0>", ":FzfLua ", { noremap = true, silent = false })
    --   lvim.builtin.which_key.mappings["f"] = {
    --     name = "FZF",
    --     c = { "<cmd>lua require('fzf-lua').grep_cword()<cr>", "Find cword" },
    --     C = { "<cmd>lua require('fzf-lua').grep_cWORD()<cr>", "Find cWORD" },
    --     g = { "<cmd>lua require('fzf-lua').live_grep()<cr>", "Live grep" },
    --     G = { "<cmd>lua require('fzf-lua').live_grep_resume()<cr>", "Live grep resume" },
    --     f = { "<cmd>lua require('fzf-lua').files()<cr>", "Find files" },
    --     r = { "<cmd>lua require('fzf-lua').resume()<cr>", "Resume last search" },
    --     t = { "<cmd>lua require('fzf-lua').tabs()<cr>", "Resume last search" },
    --   }
    -- end,
    requires = { "kyazdani42/nvim-web-devicons" },
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "fzf-lua") end,
    event = "BufRead",
  },
}
