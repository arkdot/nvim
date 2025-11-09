return {
    "saghen/blink.cmp",
    opts = {
        keymap = {
            preset = "default",
        },
        completion = {
            ghost_text = { enabled = true },
            menu = {
                draw = {
                    columns = { { "kind_icon" }, { "label", "label_description", gap = 1 }, { "source_name" }, },
                    components = {
                        source_name = {
                            width = { max = 30 },
                            text = function(ctx)
                                return "[" .. ctx.source_name .. "]"
                            end,
                            highlight = "BlinkCmpSource",
                        }
                    },
                },
            },
        },
        sources = {
            default = { "lsp", "buffer", "path", "snippets", },
        },
        fuzzy = { implementation = "lua" },
        signature = { enabled = true },
    },
}
