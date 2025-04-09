return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        settings = {
          typescript = {
            tsserver = {
              maxTsServerMemory = 8092,
            },
          },
        },
      },
      twiggy_language_server = {
        settings = {
          twiggy = {
            framework = "symfony",
            phpExecutable = "chess-php",
            symfonyConsolePath = "app/console",
            diagnostics = {
              twigCsFixer = false,
            },
          },
        },
      },
    },
  },
}
