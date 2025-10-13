---@diagnostic disable: param-type-mismatch

local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.offsetEncoding = { "utf-8" }

local phpactor_capabilities = vim.lsp.protocol.make_client_capabilities()
phpactor_capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true,
}

vim.lsp.enable("clangd", { capabilities = capabilities })
vim.lsp.enable("cssls", { capabilities = capabilities })
vim.lsp.enable("html", { capabilities = capabilities })
vim.lsp.enable("typos_lsp", { capabilities = capabilities })
-- vim.lsp.enable("rust_analyzer", { capabilities = capabilities })
vim.lsp.enable("lemminx", { capabilities = capabilities })
vim.lsp.enable("csharp_ls", { capabilities = capabilities })
vim.lsp.enable("eslint", { capabilities = capabilities })
vim.lsp.enable("bashls", { capabilities = capabilities })

vim.lsp.config("lua_ls", {
    on_init = function(client)
        if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if
                path ~= vim.fn.stdpath("config")
                and (vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
            then
                return
            end
        end

        client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
            runtime = {
                version = "LuaJIT",
                path = {
                    "lua/?.lua",
                    "lua/?/init.lua",
                },
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                    "${3rd}/luv/library",
                },
            },
        })
    end,
    settings = {
        Lua = {},
    },
})

vim.lsp.enable("lua_ls", { capabilities = capabilities })
vim.lsp.enable("pyright", { capabilities = capabilities })
vim.lsp.enable("ts_ls", { capabilities = capabilities })

vim.lsp.enable("intelephense", {
    capabilities = capabilities,
    root_dir = function(_)
        return vim.loop.cwd()
    end,
})

vim.lsp.enable("phpactor", {
    capabilities = phpactor_capabilities,
    root_dir = function(_)
        return vim.loop.cwd()
    end,
})

vim.lsp.enable("java_language_server", { capabilities = capabilities })
vim.lsp.enable("yamlls", { capabilities = capabilities })
vim.lsp.enable("cmake", { capabilities = capabilities })
vim.lsp.enable("asm_lsp", { capabilities = capabilities })

vim.lsp.enable("powershell_es", {
    capabilities = capabilities,
    bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
})

vim.lsp.enable("dockerls", { capabilities = capabilities })
vim.lsp.enable("vimls", { capabilities = capabilities })
vim.lsp.enable("htmx", { capabilities = capabilities })
vim.lsp.enable("jinja_lsp", { capabilities = capabilities })
vim.lsp.enable("djlsp", { capabilities = capabilities })
vim.lsp.enable("ruff", { capabilities = capabilities })
vim.lsp.enable("bacon_ls", { capabilities = capabilities })
vim.lsp.enable("tinymist", { capabilities = capabilities })
vim.lsp.enable("glint", { capabilities = capabilities })

vim.lsp.inlay_hint.enable()

vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
    callback = function()
        vim.lsp.codelens.refresh()
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        vim.keymap.set("n", "<leader>cl", vim.lsp.codelens.run, { buffer = bufnr, desc = "Run code lens" })
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.name == "ruff" then
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
        end
    end,
    desc = "LSP: Disable hover capability from Ruff",
})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
