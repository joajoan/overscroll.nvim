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

function M.align_center()
  local window_height = vim.api.nvim_win_get_height(0)
  local delta = math.floor(window_height / 2) + 1 - vim.fn.winline()
  if delta ~= 0 then
    local count = math.abs(delta)
    local key = delta > 0 and "<C-y>" or "<C-e>"
    local code = vim.api.nvim_replace_termcodes(key, true, false, true)
    local command = string.format("%d%s", count, code)
    vim.cmd("normal! " .. command)
  end
end

return M
