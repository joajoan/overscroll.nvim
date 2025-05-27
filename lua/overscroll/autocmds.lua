local core = require("overscroll.core")

local M = {}

function M.setup()

  local group_id = vim.api.nvim_create_augroup("overscroll", { clear = true })

  vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost", "WinResized" }, {
    callback = core.draw,
    desc = "Draw virtual lines above the current buffer",
    group = group_id,
  })

  vim.api.nvim_create_autocmd("CmdlineLeave", {
    callback = core.state.update,
    desc = "Update the internal plugin state",
    group = group_id,
  })

  vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
    callback = core.redraw,
    desc = "Redraw virtual lines above the current buffer",
    group = group_id,
  })

end

return M
