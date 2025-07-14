local wezterm = require("wezterm") 

local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = true

return config
