local M = {}

M.config = function()
  local status_ok, surround = pcall(require, "nvim-surround")
  if not status_ok then return end

  surround.setup {
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
end

return M
