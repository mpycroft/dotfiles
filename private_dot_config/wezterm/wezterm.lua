local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.default_cursor_style = "BlinkingBar"

config.font_size = 26
config.command_palette_font_size = 26

config.font = wezterm.font({
    family = "Monaspace Argon",
    harfbuzz_features = {
        "calt",
        "liga",
        "ss01",
        "ss02",
        "ss03",
        "ss04",
        "ss05",
        "ss06",
        "ss07",
        "ss08",
        "ss09",
        "ss10",
        "cv01=2",
        "cv32=1",
    },
})

config.hide_tab_bar_if_only_one_tab = true

config.cursor_blink_rate = 500
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

config.initial_cols = 110
config.initial_rows = 30

config.window_padding = {
    left = 4,
    right = 0,
    top = 0,
    bottom = 0,
}

return config
