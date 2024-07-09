local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'JetBrainsMono NFM Medium'
--config.color_scheme = 'MaterialDarker'
config.window_close_confirmation = 'NeverPrompt'

config.keys = {
    {
        key = 'v',
        mods = 'SUPER',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = 'c',
        mods = 'SUPER',
        action = wezterm.action.DisableDefaultAssignment,
    },

}

return config
