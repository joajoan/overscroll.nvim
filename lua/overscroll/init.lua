local config = require("overscroll.config")

local M = {}

function M.setup(opts)
  opts = config.validate(opts)
end

return M
