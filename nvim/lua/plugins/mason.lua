return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      },
    },
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = {
      "lua_ls",
      "clangd",
      "basedpyright",
      "ruff",
      "vtsls",
    },
    -- LSP activation is handled in lsp.lua after each server is configured.
    automatic_enable = false,
  },
}
