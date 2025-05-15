local default_keymap = {
  zz = true,
  zt = true,
}

local function validate_keymap(keymap)
  vim.validate("keymap.zz", keymap.zz, "boolean")
  vim.validate("keymap.zt", keymap.zt, "boolean")
end

local default_config = { keymap = default_keymap }

local function validate_config(config)
  validate_keymap(config.keymap)
end

local M = {}

function M.validate(user_config)
  local config = vim.tbl_deep_extend("force", default_config, user_config)
  validate_config(config)
  return config
end

return M
