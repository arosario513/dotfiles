local lspconfig = require "lspconfig"
local capabilities = require("cmp_nvim_lsp").default_capabilities()
lspconfig.clangd.setup { capabilities = capabilities }
lspconfig.cssls.setup { capabilities = capabilities }
lspconfig.html.setup { capabilities = capabilities }
lspconfig.typos_lsp.setup { capabilities = capabilities }
lspconfig.rust_analyzer.setup { capabilities = capabilities }
lspconfig.lemminx.setup { capabilities = capabilities }
lspconfig.csharp_ls.setup { capabilities = capabilities }
lspconfig.eslint.setup { capabilities = capabilities }
lspconfig.bashls.setup { capabilities = capabilities }
lspconfig.pylsp.setup {
  capabilities = capabilities,
  settings = {
    pylsp = {
      pylint = {
        enabled = true,
        executable = "pylint",
      },
    },
  },
}
lspconfig.jedi_language_server.setup { capabilities = capabilities }
lspconfig.lua_ls.setup {
  capabilities = capabilities,
  on_init = function(client)
    client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          -- Depending on the usage, you might want to add additional paths here.
          -- "${3rd}/luv/library"
          -- "${3rd}/busted/library",
        },
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
        -- library = vim.api.nvim_get_runtime_file("", true)
      },
    })
  end,
  settings = {
    Lua = {},
  },
}

lspconfig.pyright.setup { capabilities = capabilities}
