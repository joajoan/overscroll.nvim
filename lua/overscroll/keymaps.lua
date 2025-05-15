local core = require("overscroll.core")

local M = {}

function M.set(enable, keymap)
  pcall(vim.keymap.del, keymap.mode, keymap.lhs)
  if enable then
    vim.keymap.set(keymap.mode, keymap.lhs, keymap.rhs, keymap.opts)
  end
end

function M.setup(opts)

  M.set(opts.zz, {
    mode = {"n", "v"},
    lhs = "zz",
    rhs = core.align_center,
    opts = {
      desc = "align cursor at the screen center",
      silent = true,
    },
  })

  M.set(opts.zt, {
    mode = {"n", "v"},
    lhs = "zt",
    rhs = core.align_top,
    opts = {
      desc = "Align cursor at the top of screen",
      silent = true,
    },
  })

end

return M
