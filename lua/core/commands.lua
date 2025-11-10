vim.api.nvim_create_user_command("Light", function()
  vim.cmd("set background=light")
  print("Set light mode")
end, { desc = "Set light mode" })

vim.api.nvim_create_user_command("Dark", function()
  vim.cmd("set background=dark")
  print("Set dark mode")
end, { desc = "Set dark mode" })
