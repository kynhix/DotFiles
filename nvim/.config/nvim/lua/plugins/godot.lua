return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {
          -- You can add additional settings here if needed
          -- force_setup = true, -- Uncomment if LSP doesn't auto-setup
        },
      },
    },
  },
}
