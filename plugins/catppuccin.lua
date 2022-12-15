local M = {}

M.config = function()
  local status_ok, catppuccin = pcall(require, "catppuccin")
  if not status_ok then return end
  vim.g.catppuccin_flavour = "frappe"
  catppuccin.setup {
    dim_inactive = {
      enabled = true,
      shade = "dark",
      percentage = 0.15,
    },
    transparent_background = false,
    term_colors = true,
    compile = {
      enabled = true,
      path = vim.fn.stdpath "cache" .. "/catppuccin",
    },
    styles = {
      comments = { "italic" },
      conditionals = { "bold" },
      loops = { "italic" },
      functions = { "italic", "bold" },
      keywords = { "italic", "bold" },
      strings = { "italic" },
      variables = { "bold" },
      numbers = { "bold" },
      booleans = { "italic" },
      properties = { "italic" },
      types = { "italic" },
      operators = { "bold" },
    },
    require("catppuccin").setup {
      integrations = {
        aerial = true,
        barbar = false,
        beacon = true,
        cmp = true,
        coc_nvim = false,
        dashboard = true,
        fern = false,
        fidget = true,
        gitgutter = false,
        gitsigns = true,
        harpoon = false,
        hop = false,
        illuminate = false,
        leap = true,
        lightspeed = false,
        lsp_saga = true,
        lsp_trouble = true,
        markdown = true,
        mini = false,
        neogit = false,
        neotest = false,
        neotree = true,
        notify = true,
        nvimtree = false,
        overseer = false,
        pounce = false,
        symbols_outline = true,
        telekasten = false,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        ts_rainbow = true,
        vim_sneak = false,
        vimwiki = false,
        which_key = true,

        -- Special integrations, see https://github.com/catppuccin/nvim#special-integrations
        dap = {
          enabled = true,
          enable_ui = true,
        },
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        navic = {
          enabled = false,
          custom_bg = "NONE",
        },
      },
    },
    color_overrides = {},
    highlight_overrides = {},
  }
  vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    callback = function() vim.cmd("Catppuccin " .. (vim.v.option_new == "light" and "latte" or "mocha")) end,
  })
  -- Create an autocmd User PackerCompileDone to update it every time packer is compiled
  -- vim.api.nvim_create_autocmd("User", {
  --   pattern = "PackerCompileDone",
  --   callback = function()
  --     vim.cmd "CatppuccinCompile"
  --     vim.defer_fn(function()
  --       vim.cmd "colorscheme catppuccin"
  --     end, 0) -- Defered for live reloading
  --   end,
  -- })
  -- vim.cmd [[colorscheme catppuccin]]
end

return M
