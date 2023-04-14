return {
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    priority = 1000,
    name = "gruvbox-material",
    config = function()
      vim.g.gruvbox_material_palette = "original"
      vim.g.gruvbox_material_background = "soft"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
