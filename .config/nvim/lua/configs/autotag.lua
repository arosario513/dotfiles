local nvim_ts_autotag = require "nvim-ts-autotag"
nvim_ts_autotag.setup {
    opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_trailing = false,
    },
}
