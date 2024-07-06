return {
  {
    "folke/flash.nvim",
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  },

  {
    "j-hui/fidget.nvim",
    event = "VeryLazy"
  },

  {
    "mbbill/undotree",
    -- lazy = false,
    cmd = "UndotreeToggle",
    config = function()
      vim.g.undotree_WindowLayout = 3
      vim.g.undotree_ShortIndicators = 1
      vim.g.undotree_SplitWidth = 50
      vim.g.undotree_DiffpanelHeight = 20
    end
  }
}
