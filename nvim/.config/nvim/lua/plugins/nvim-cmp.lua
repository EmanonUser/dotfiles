return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    'windwp/nvim-autopairs',
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require('lspconfig')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', "ansible-language-server" }
    local cmp = require("cmp")

    local luasnip = require("luasnip")
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },

      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      window = {
        documentation = cmp.config.window.bordered(),
        completion = cmp.config.window.bordered({
          winhighlight = 'Normal:CmpPmenu,CursorLine:PmenuSel,Search:None'
        }),
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-l>"] = cmp.mapping.select_next_item(),
        ["<C-m>"] = cmp.mapping.select_prev_item(),
        ["<C-space>"] = cmp.mapping.complete(),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-e>"] = cmp.mapping.abort(),
      }),

      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}
