return {
  { "folke/zen-mode.nvim", cmd = { "ZenMode" }, config = function() require("user.plugins.zen-mode").config() end },
  { "ray-x/lsp_signature.nvim", event = "BufRead", config = function() require("lsp_signature").setup() end },
  { "michaeljsmith/vim-indent-object", event = "BufRead" },
  { "tweekmonster/startuptime.vim", cmd = "StartupTime" },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function() require("user.plugins.nvim-bqf").config() end,
  },
  { "romgrk/fzy-lua-native" },
  { "nvim-telescope/telescope-fzy-native.nvim", run = "make" },
  { "mg979/vim-visual-multi", event = "BufEnter" }, -- vim -Nu ~/.local/share/lunarvim/site/pack/packer/start/vim-visual-multi/tutorialrc
  { "nvim-treesitter/nvim-treesitter-textobjects", before = "nvim-treesitter" },
  { "mzlogin/vim-markdown-toc", event = "BufRead" },
  {
    "kylechui/nvim-surround",
    event = "BufEnter",
    config = function()
      require("nvim-surround").setup {
        keymaps = {
          insert = "<C-g>z",
          insert_line = "gC-ggZ",
          normal = "gz",
          normal_cur = "gZ",
          normal_line = "gzz",
          normal_cur_line = "gZZ",
          visual = "gz",
          visual_line = "gZ",
          delete = "gzd",
          change = "gzr",
        },
      }
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    event = "BufRead",
    requires = "kevinhwang91/promise-async",
    config = function() require("user.plugins.nvim-ufo").config() end,
  },
  {
    "ellisonleao/glow.nvim",
    -- setup = function() lvim.builtin.which_key.mappings["m"] = { "<CMD>Glow<CR>", "Markdown Preview" } end,
    config = function()
      require("glow").setup {
        border = "rounded",
      }
    end,
    ft = "markdown",
  },
  {
    "mickael-menu/zk-nvim",
    -- setup = function()
    --   lvim.builtin.which_key.mappings["z"] = {
    --     name = "Zk",
    --     T = { "<CMD>ZkNotes<CR>", "All Notes" },
    --     nf = { "<CMD>ZkNew {dir='fleeting'}<CR>", "New fleeting note" },
    --     nl = { "<CMD>ZkNew {dir='literature'}<CR>", "New literature note" },
    --     np = { "<CMD>ZkNew {dir='permanent'}<CR>", "New permanent note" },
    --     o = { "<CMD>ZkOrphans<CR>", "Orphan notes" },
    --     r = { "<CMD>ZkRecents<CR>", "Recent notes" },
    --     t = { "<CMD>ZkTags<CR>", "Tags" },
    --     f = { "<Cmd>ZkNotes { sort = { 'modified' }, match = vim.fn.input('Search: ') }<CR>" },
    --   }
    -- end,
    config = function() require("user.plugins.zk-nvim").config() end,
    event = "BufRead",
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    run = ":CatppuccinCompile",
    config = function() require("user.plugins.catppuccin").config() end,
  },
  {
    "iamcco/markdown-preview.nvim",
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
    event = "BufRead",
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function() vim.g.matchup_matchparen_offscreen = { method = "popup" } end,
  },
  {
    "uga-rosa/ccc.nvim",
    event = "BufRead",
    config = function() require("user.plugins.ccc").config() end,
  },
  {
    "f-person/git-blame.nvim",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
    event = "BufRead",
  },
  {
    "monaqa/dial.nvim",
    event = "BufRead",
    config = function() require("user.plugins.dial").config() end,
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function() require("user.plugins.numb").config() end,
  },
  {
    "karb94/neoscroll.nvim",
    event = "BufRead",
    config = function() require("user.plugins.neoscroll").config() end,
  },
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
    ft = { "python", "javascript", "php" },
  },
  {
    "ggandor/leap.nvim",
    config = function() require("leap").set_default_keymaps() end,
    event = "BufRead",
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
    config = function() require("true-zen").setup {} end,
    event = "BufRead",
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function() require("user.plugins.lspsaga").config() end,
  },
  {
    "j-hui/fidget.nvim",
    config = function() require("fidget").setup() end,
  },
  { "christoomey/vim-tmux-navigator" },
  {
    "folke/lsp-colors.nvim",
    event = "BufRead",
  },
}
