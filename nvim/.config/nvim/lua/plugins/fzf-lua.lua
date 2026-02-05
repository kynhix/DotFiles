return {
  "ibhagwan/fzf-lua",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts or {}, {
      grep = {
        rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 --sort path -e",
        actions = {
          ["ctrl-o"] = { fn = require("fzf-lua").actions.file_edit, reload = true },
        },
      },
    })
  end,
}
