local treesitter = require "nvim-treesitter.configs"
treesitter.setup {
    ensure_installed = {
        "c",
        "cpp",
        "c_sharp",
        "html",
        "css",
        "rust",
        "lua",
        "javascript",
        "ini",
        "markdown",
        "markdown_inline",
    },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
}
