-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    -- Open file in browser
    ["<space>r"] = { ":exe ':silent !firefox %'<cr>", desc = "Run Browser" },

    ["<M-w>"] = { ":set wrap! wrap?<cr>", desc = "Toggle wrap" },
    ["<M-r>"] = { ":set relativenumber! relativenumber?<cr>", desc = "Toggle relativenumber" },
    ["<TAB>"] = { ":BufferLinePick<cr>", desc = "Pick a buffer" },
    ["<leader>j"] = { ":BufferLineCycleNext<cr>", desc = "Next buffer" },
    ["<leader>k"] = { ":BufferLineCyclePrev<cr>", desc = "Previous buffer" },
    ["<M-o>"] = { "o<esc>", desc = "Insert blank line below" },
    ["<M-O>"] = { "O<esc>", desc = "Insert blank line above" },
    ["<M-$"] = { "g$", desc = "Go to end of line wrap" },
    ["</"] = { "ms/" },
    ["<M-=>"] = { ":TZFocus<cr>" },
  },
  t = {
    ["<esc>"] = { "<C-\\><C-N>", desc = "Escape terminal mode" },
    ["<C-Up>"] = { "<C-\\><C-N>resize -2<CR>" },
    ["<C-Down>"] = { " <C-\\><C-N>resize +2<CR>" },
    ["<C-Left>"] = { " <C-\\><C-N>vertical resize -2<CR>" },
    ["<C-Right>"] = { "<C-\\><C-N>vertical resize +2<CR>" },
    ["<M-=>"] = { "<C-\\><C-n>:TZFocus<cr>" },
  },
  i = {
    ["<M-o>"] = { "<C-o>o", desc = "Edit new line below" },
    ["<M-O>"] = { "<C-o>O", desc = "Edit new line above" },
  },
  v = {
    ["P"] = { '"_c<C-R>0<esc>' },
  },
}
