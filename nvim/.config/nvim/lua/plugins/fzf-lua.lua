return {
  "ibhagwan/fzf-lua",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts or {}, {
      grep = {
        actions = {
          ["ctrl-y"] = {
            fn = function(selected, _)
              -- Extract the file path from the selection
              -- (First column before the colon in grep results)
              local file = selected[1]:match("^([^:]+)")

              -- Copy to register/clipboard
              vim.fn.setreg('"', file)
              vim.fn.setreg("+", file)

              -- Optional: Show a message
              vim.notify("Copied file path: " .. file)
            end,
            desc = "copy file path",
            exec_silent = true,
          },
        },
      },
    })
  end,
}
