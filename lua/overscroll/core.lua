local ns_id = vim.api.nvim_create_namespace("overscroll")

local M = {}

function M.draw()
  vim.api.nvim_buf_clear_namespace(0, ns_id, 0, -1)
  local window_height = vim.api.nvim_win_get_height(0)
  local virt_lines = {}
  for i = 1, window_height do
    virt_lines[i] = { { "", "NonText" } }
  end
  vim.api.nvim_buf_set_extmark(0, ns_id, 0, 0, {
    virt_lines = virt_lines,
    virt_lines_above = true,
  })
end

return M
