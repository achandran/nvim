return {
  -- Configure LazyVim to load catppuccin-frappe
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        rust_analyzer = {},
        bashls = {},
      },
    },
  },
}
