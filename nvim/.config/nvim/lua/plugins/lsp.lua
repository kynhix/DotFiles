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
        root_markers = {
          "tsconfig.json",
        },
        root_dir = function(bufnr, on_dir)
          local root = vim.fs.root(bufnr, { "tsconfig.json" })
          if root then
            return on_dir(root)
          end
        end,
      },
      vue_ls = {
        root_markers = {
          "tsconfig.json",
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
