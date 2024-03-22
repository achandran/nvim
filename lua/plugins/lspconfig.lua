return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        ruff_lsp = {},
        gopls = {},
        rust_analyzer = {},
        bashls = {},
      },
    },
  },
}
