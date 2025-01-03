local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"

local monaspace = wezterm.font({
	family = "Monaspace Argon",
})

config.font = monaspace
config.font_size = 26
config.command_palette_font_size = 26
config.window_frame = {
	font = monaspace,
	font_size = 20,
}

config.harfbuzz_features = {
	-- Enable all ligatures.
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
	-- Zero with a line through it.
	"cv01=2",
	-- Angled line for greater/less than equal ligature.
	"cv32=1",
}

config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 500
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

config.initial_cols = 110
config.initial_rows = 30

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = {
	left = 4,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
