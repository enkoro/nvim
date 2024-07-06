local cmp = require "cmp"
return {
  "hrsh7th/nvim-cmp",
  opts = {
    mapping = {
      ["<C-k>"] = cmp.mapping.scroll_docs(-4),
      ["<C-j>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),

      ["<C-a>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.confirm { select = true }
        else
          fallback()
        end
      end, { "i", "s" }),

      ["<C-q>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.abort()
        else
          fallback()
        end
      end, { "i", "s" }),

      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif require("luasnip").expand_or_jumpable() then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
        else
          fallback()
        end
      end, { "i", "s" }),

      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif require("luasnip").jumpable(-1) then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
        else
          fallback()
        end
      end, { "i", "s" }),
    },
  }
}
