local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}


function M.config()
  local servers = {
    "lua_ls",
    "cssls",
    "html",
    "tsserver",
    "pyright",
    "bashls",
    "jsonls",
    "cssmodules_ls",
    "dockerls",
    "eslint",
    "emmet_ls",
    "gopls",
    "golangci_lint_ls",
    "graphql",
    "html",
    "prismals",
    "sqlls",
    "tailwindcss"
  }

  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }

  require("mason-lspconfig").setup {
    ensure_installed = servers,
  }
end

return M
