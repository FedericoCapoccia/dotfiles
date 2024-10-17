local wezterm = require("wezterm")
local config = {}

--config.font = wezterm.font 'JetBrainsMono NF Medium'
config.font = wezterm.font("Cascadia Code NF", { weight = "Bold" })
config.font_size = 12.0

config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"

-- config.color_scheme = 'Ayu Dark (Gogh)'
config.window_close_confirmation = "NeverPrompt"
config.warn_about_missing_glyphs = false
config.hide_tab_bar_if_only_one_tab = true
config.adjust_window_size_when_changing_font_size = true

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{
		key = "v",
		mods = "SUPER",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "c",
		mods = "SUPER",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

return config
