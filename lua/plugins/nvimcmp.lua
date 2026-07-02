return {
  -- Completion engine
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",

      -- Snippets (optional but recommended)
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  completion = {
    autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged },
    completeopt = "menu,menuone,noselect",
  },
  preselect = cmp.PreselectMode.None,

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  experimental = {
    ghost_text = true, -- set false if you find it distracting
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),

    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() and cmp.get_selected_entry() then
        cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  }),

  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
    { name = "path" },
  }),
})
    end,
  },
}
