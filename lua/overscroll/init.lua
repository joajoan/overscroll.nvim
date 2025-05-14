local autocmds = require("overscroll.autocmds")
local config = require("overscroll.config")

local M = {}

function M.setup(opts)
  opts = config.validate(opts)
  autocmds.setup()
end

return M
