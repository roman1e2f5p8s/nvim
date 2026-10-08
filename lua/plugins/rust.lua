return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bacon_ls = {
          enabled = diagnostics == "bacon-ls",
        },
        rust_analyzer = { enabled = false },
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    opts = function(_, opts)
      if vim.env.RA_MSIM then
        opts.server = opts.server or {}
        opts.server.default_settings = opts.server.default_settings or {}
        local ra = opts.server.default_settings["rust-analyzer"] or {}
        ra.cargo = ra.cargo or {}
        -- The first two are rust-analyzer's defaults, which this list replaces.
        ra.cargo.cfgs = { "debug_assertions", "miri", "msim" }
        opts.server.default_settings["rust-analyzer"] = ra
      end
    end,
  },
}
