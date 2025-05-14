local autocmds = require("overscroll.autocmds")
local commands = require("overscroll.commands")
local config = require("overscroll.config")

local M = {}

function M.setup(opts)
  opts = config.validate(opts)
  autocmds.setup()
  commands.setup()
end

return M
