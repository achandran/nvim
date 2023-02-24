return {
  -- Configure LazyVim to load catppuccin-frappe
  {
    "catppuccin/nvim",
    lazy = true,
    priority = 1000,
    name = "catppuccin",
    opts = {
      custom_highlights = function(colors)
        return {
          DiffText = { bg = colors.yellow, fg = colors.base }, -- Make changed diff text more visible
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}
