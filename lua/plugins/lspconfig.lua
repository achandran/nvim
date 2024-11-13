return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        mojo = {},
        pyright = {},
        ruff_lsp = {},
        gopls = {},
        rust_analyzer = {},
        bashls = {},
      },
    },
  },
}
