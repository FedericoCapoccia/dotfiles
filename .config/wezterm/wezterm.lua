local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'JetBrainsMono NF Medium'
--config.color_scheme = 'MaterialOcean'
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
