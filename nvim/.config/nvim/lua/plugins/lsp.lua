return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      vtsls = {
        filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
        settings = {
          typescript = {
            tsserver = {
              maxTsServerMemory = 8092,
            },
          },
          -- Deprecated
          -- vtsls = {
          --   tsserver = {
          --     globalPlugins = {
          --       {
          --         name = "@vue/typescript-plugin",
          --         location = vim.fn.stdpath("data")
          --           .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
          --         languages = { "vue" },
          --         configNamespace = "typescript",
          --       },
          --     },
          --   },
          -- },
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
