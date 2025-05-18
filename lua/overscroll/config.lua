local default_config = {}

local function validate_config(config)
end

local M = {}

function M.validate(user_config)
  local config = vim.tbl_deep_extend("force", default_config, user_config)
  validate_config(config)
  return config
end

return M
