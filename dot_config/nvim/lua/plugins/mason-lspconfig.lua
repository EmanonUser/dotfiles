return {
  "williamboman/mason-lspconfig.nvim",
  priority = 2,
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = { "lua_ls", "rust_analyzer" },
    }
  end,
}
