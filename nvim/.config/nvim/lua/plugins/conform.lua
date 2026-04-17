return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters = opts.formatters or {}

    -- Use biome for Vue files only in chess projects
    opts.formatters_by_ft.vue = function(bufnr)
      local bufname = vim.api.nvim_buf_get_name(bufnr)
      if bufname:match("/chess/") then
        return { "biome" }
      end
      return {}
    end

  end,
}
