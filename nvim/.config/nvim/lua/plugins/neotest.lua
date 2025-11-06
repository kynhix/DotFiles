return {
  "nvim-neotest/neotest",
  dependencies = {
    "thenbe/neotest-playwright",
    dependencies = "nvim-telescope/telescope.nvim",
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-playwright").adapter({
          options = {
            persist_project_selection = true,
            enable_dynamic_test_discovery = true,
            experimental = {
              telescope = {
                -- If true, a telescope picker will be used for `:NeotestPlaywrightProject`.
                -- Otherwise, `vim.ui.select` is used.
                -- In normal mode, `<Tab>` toggles the project under the cursor.
                -- `<CR>` (enter key) applies the selection.
                enabled = true,
                opts = {},
              },
            },
          },
        }),
      },
    })
    vim.keymap.set("n", "<leader>tr", neotest.run.run, { desc = "Run nearest test" })

    vim.keymap.set("n", "<leader>td", function()
      neotest.run.run({ strategy = "dap" })
    end, { desc = "Debug nearest test" })

    vim.keymap.set("n", "<leader>ts", neotest.run.stop, { desc = "Stop nearest test" })

    vim.keymap.set("n", "<leader>tf", function()
      neotest.run.run(vim.fn.expand("%"))
    end, { desc = "Run file tests" })

    vim.keymap.set("n", "<leader>to", neotest.output.open, { desc = "Display output" })
    vim.keymap.set("n", "<leader>top", neotest.output_panel.open, { desc = "Display output panel" })
    vim.keymap.set("n", "<leader>topc", neotest.output_panel.clear, { desc = "Clear output" })
    vim.keymap.set("n", "<C-t>", neotest.summary.open, { desc = "Display summary" })
    vim.keymap.set("n", "<leader>tsr", neotest.summary.run_marked, { desc = "Run marked tests" })
    vim.keymap.set("n", "<leader>tsc", neotest.summary.clear_marked, { desc = "Clear marked tests" })
    vim.keymap.set("n", "<leader>tw", neotest.watch.watch, { desc = "Start watching tests" })
    vim.keymap.set("n", "<leader>twc", neotest.watch.stop, { desc = "Stop watching tests" })
  end,
}
