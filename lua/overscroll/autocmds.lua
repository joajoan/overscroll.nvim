local core = require("overscroll.core")

local M = {}

function M.setup()

  local group_id = vim.api.nvim_create_augroup("overscroll", { clear = true })

  vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost", "WinResized" }, {
    callback = core.draw,
    desc = "Draw virtual lines above the current buffer",
    group = group_id,
  })

end

return M
