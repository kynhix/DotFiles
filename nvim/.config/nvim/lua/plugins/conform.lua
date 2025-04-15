return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    -- Make sure the formatters_by_ft table exists
    opts.formatters_by_ft = opts.formatters_by_ft or {}

    -- Set formatters for Vue files to use only biome
    opts.formatters_by_ft.vue = { "biome" }

    -- If you want to ensure biome formatter is configured properly
    opts.formatters = opts.formatters or {}
  end,
}
