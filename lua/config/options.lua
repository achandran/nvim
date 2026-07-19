vim.opt.undofile = false
vim.opt.swapfile = false
vim.opt.spelllang = {}

local appleInterfaceStyle = vim.fn.system({ "defaults", "read", "-g", "AppleInterfaceStyle" })
vim.o.background = appleInterfaceStyle:find("Dark") and "dark" or "light"
