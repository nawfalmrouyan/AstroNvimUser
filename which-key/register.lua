-- Modify which-key registration
-- Add bindings which show up as group name
return {
  -- first key is the mode, n == normal mode
  n = {
    -- second key is the prefix, <leader> prefixes
    ["<leader>"] = {
      -- third key is the key to bring up next level and its displayed
      -- group name in which-key top level menu
      ["z"] = {
        name = "Zk",
        T = { "<CMD>ZkNotes<CR>", "All Notes" },
        nf = { "<CMD>ZkNew {dir='fleeting'}<CR>", "New fleeting note" },
        nl = { "<CMD>ZkNew {dir='literature'}<CR>", "New literature note" },
        np = { "<CMD>ZkNew {dir='permanent'}<CR>", "New permanent note" },
        o = { "<CMD>ZkOrphans<CR>", "Orphan notes" },
        r = { "<CMD>ZkRecents<CR>", "Recent notes" },
        t = { "<CMD>ZkTags<CR>", "Tags" },
        f = { "<Cmd>ZkNotes { sort = { 'modified' }, match = vim.fn.input('Search: ') }<CR>" },
      },
      ["U"] = { "<CMD>UndotreeToggle<CR>", "Undo Tree" },
      ["a"] = { "<CMD>GitBlameToggle<CR>", "Toggle Git Blame" },
      ["y"] = { "<CMD>Codi<CR>", "Codi" },
      ["Y"] = { "<CMD>Codi!<CR>", "Clear Codi" },
      ["Z"] = { ":ZenMode<CR>", "Zen Mode" },
      ["t"] = {
        name = "Diagnostics",
        t = { "<cmd>TroubleToggle<cr>", "trouble" },
        w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
        d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
        q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
        l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
        r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
      },
      ["M"] = { "<CMD>MarkdownPreview<CR>", "Markdown Preview" },
      ["m"] = { "<CMD>Glow<CR>", "Markdown Preview" },
    },
  },
}
