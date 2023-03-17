-- nvui configuration
if vim.g.nvui then
  vim.opt.guifont="FiraCode NFM:h12,Microsoft Yahei,LXGW WenKai Mono"
  vim.api.nvim_create_autocmd("InsertEnter", {
    pattern = "*",
    command = "NvuiIMEEnable"
  })
  vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    command = "NvuiIMEDisable"
  })
end
