local core = require("overscroll.core")

local M = {}

function M.setup()

  vim.api.nvim_create_user_command("OScrollCenter", core.align_center, {
    desc = "Align cursor at the screen center",
    force = true,
  })

  vim.api.nvim_create_user_command("OScrollTop", core.align_top, {
    desc = "Align cursor at the top of screen",
    force = true,
  })

  vim.api.nvim_create_user_command("OScrollBottom", core.align_bottom, {
    desc = "Align cursor at the bottom of screen",
    force = true,
  })

end

return M
