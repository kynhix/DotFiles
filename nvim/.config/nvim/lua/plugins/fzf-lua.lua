return {
  "ibhagwan/fzf-lua",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts or {}, {
      grep = {
        actions = {
          ["ctrl-y"] = {
            fn = function(selected, opts)
              local path = require("fzf-lua.path")
              local entry = path.entry_to_file(selected[1], opts)

              if entry and entry.path then
                vim.fn.setreg('"', entry.path)
                vim.fn.setreg("+", entry.path)
                vim.notify("Copied file path: " .. entry.path)
              end
            end,
            desc = "copy file path",
            exec_silent = true,
          },
          ["ctrl-o"] = { fn = require("fzf-lua").actions.file_edit, reload = true },
        },
      },
    })
  end,
}
