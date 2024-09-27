local lspconfig = require "lspconfig"
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local phpactor_capabilities = vim.lsp.protocol.make_client_capabilities()
phpactor_capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}
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
        version = "LuaJIT",
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
        },
      },
    })
  end,
  settings = {
    Lua = {},
  },
}

lspconfig.pyright.setup { capabilities = capabilities }
lspconfig.ts_ls.setup { capabilities = capabilities }
lspconfig.intelephense.setup {
  capabilities = capabilities,
  root_dir = function(_)
    return vim.loop.cwd()
  end,
}
lspconfig.phpactor.setup {
  capabilities = phpactor_capabilities,
  root_dir = function(_)
    return vim.loop.cwd()
  end,
}

lspconfig.java_language_server.setup { capabilities = capabilities }
lspconfig.yamlls.setup { capabilities = capabilities }
lspconfig.cmake.setup { capabilities = capabilities }
lspconfig.asm_lsp.setup { capabilities = capabilities }
lspconfig.powershell_es.setup {
  capabilities = capabilities,
  bundle_path = vim.fn.stdpath "data" .. "/mason/packages/powershell-editor-services",
}
lspconfig.dockerls.setup { capabilities = capabilities }
