require("sidebar-nvim").setup({
    disable_default_keybindings = 0,
    bindings = nil,
    open = false,
    side = "right", --default: left
    initial_width = 50, --default: 35
    hide_statusline = false,
    update_interval = 1000,
    sections = { "datetime", "git", "diagnostics", "todos", "buffers" },
    section_separator = {"", "-----", ""},
    --containers = {
    --    attach_shell = "/bin/sh", show_all = true, interval = 5000,
    -- },
    datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
    todos = { ignored_paths = { "~" } },
    files = { show_hidden = false },
    symbols = { icon = "ƒ" },
    disable_closing_prompt = false
})
