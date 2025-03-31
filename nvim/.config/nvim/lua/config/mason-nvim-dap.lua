require("mason-nvim-dap").setup({
  ensure_installed = {},
  automatic_installation = false,
  handlers = {
    function(config)
      -- all sources with no handler get passed here

      -- Keep original functionality
      require("mason-nvim-dap").default_setup(config)
    end,
    php = function(config)
      config.adapters = {
        type = "executable",
        command = "node",
        args = { "/home/kristopher/Documents/code/vscode-php-debug/out/phpDebug.js" },
      }
      config.configuration = {
        type = "php",
        request = "launch",
        name = "Listen for Da Baby",
        port = 9000,
      }
      require("mason-nvim-dap").default_setup(config) -- don't forget this!
    end,
  },
})
