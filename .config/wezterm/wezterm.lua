local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'JetBrainsMono NF Medium'
--config.color_scheme = 'Breeze'
config.window_close_confirmation = 'NeverPrompt'

return config
