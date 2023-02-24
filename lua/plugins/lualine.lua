return {
  -- Configure LazyVim to load catppuccin-frappe
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {
          function()
            return " " .. os.date("%I:%M %p")
          end,
        },
      },
    },
  },
}
