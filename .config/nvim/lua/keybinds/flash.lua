local flash = require("flash")
local setkey = vim.keymap.set

setkey("n", "s", function()
    flash.jump()
end, {
    desc = "Jump (Flash)",
})

setkey("n", "<leader>ft", function()
    flash.treesitter()
end, {
    desc = "Treesitter (Flash)",
})

setkey("c", "<c-s>", function()
    flash.toggle()
end, {
    desc = "Toggle (Flash)",
})

setkey("n", "<leader>fT", function()
    flash.treesitter_search()
end, {
    desc = "Treesitter Search (Flash)",
})
