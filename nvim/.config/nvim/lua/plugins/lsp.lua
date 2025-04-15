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
      css_variables = {
        filetypes = { "css", "scss", "less", "vue" }, -- Include "vue" here
        settings = {
          -- Any specific settings for CSS variables server if needed
        },
      },
      twiggy_language_server = {
        settings = {
          twiggy = {
            framework = "symfony",
            phpExecutable = "chess-php",
            symfonyConsolePath = "app/console",
            diagnostics = {
              twigCsFixer = true,
            },
          },
        },
      },
    },
  },
}
