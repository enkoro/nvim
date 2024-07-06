return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- event = "VeryLazy",
    lazy = false,
    config = function()
      local tools = require "configs.merged_tools"
      -- for i = 1, #tools do
      --   print(tools[i])
      -- end
      require('mason-tool-installer').setup {
        ensure_installed = tools,
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()

      dofile(vim.g.base46_cache .. "lsp")
      require "nvchad.lsp"

      local configs = require "nvchad.configs.lspconfig"
      local lsp = require "configs.list_lsp"

      for name, opts in pairs(lsp) do
        opts.on_init = configs.on_init
        opts.on_attach = configs.on_attach
        opts.capabilities = configs.capabilities
        opts.handlers = {
          ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = require "ui.lsp_border" }),
          ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help,
            { border = require "ui.lsp_border" }),
        }

        require("lspconfig")[name].setup(opts)
      end
    end
  },
}
