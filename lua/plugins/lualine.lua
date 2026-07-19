return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "jellybeans-nvim",
      },
      sections = {
        lualine_z = {
          function()
            return "  " .. os.date("%I:%M %p")
          end,
        },
      },
    },
  },
}
