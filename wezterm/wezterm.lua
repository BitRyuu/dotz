local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- FPS settings
config.max_fps = 120

-- Font settings
config.font_size = 17
config.font = wezterm.font("JetBrains Mono Regular")

-- Window settings
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}

--config.initial_rows = 20
--config.initial_cols = 80

-- Scrolling settings
config.scrollback_lines = 10000

-- Cursor settings
config.cursor_blink_rate = 500
config.default_cursor_style = "BlinkingBlock"

-- Tab bar settings (Show only when multiple tabs exist, place at bottom)
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

-- Initialize colors table
config.colors = {}

-- Tab style customization
config.colors.tab_bar = {
	background = "#1E1E2E",
	inactive_tab = {
		bg_color = "#1E1E2E",
		fg_color = "#585B70",
	},
	inactive_tab_hover = {
		bg_color = "#45475A",
		fg_color = "#CDD6F4",
	},
	active_tab = {
		bg_color = "#89B4FA",
		fg_color = "#1E1E2E",
	},
	new_tab = {
		bg_color = "#1E1E2E",
		fg_color = "#89B4FA",
	},
	new_tab_hover = {
		bg_color = "#45475A",
		fg_color = "#CDD6F4",
	},
}

-- Color scheme
config.colors.foreground = "#CDD6F4"
config.colors.background = "#1E1E2E"
config.colors.cursor_bg = "#CDD6F4"
config.colors.cursor_border = "#CDD6F4"
config.colors.cursor_fg = "#1E1E2E"
config.colors.selection_bg = "#45475A"
config.colors.selection_fg = "#CDD6F4"

config.colors.ansi = {
	"#45475A", -- black
	"#F38BA8", -- red
	"#A6E3A1", -- green
	"#F9E2AF", -- yellow
	"#89B4FA", -- blue
	"#F5C2E7", -- magenta
	"#94E2D5", -- cyan
	"#BAC2DE", -- white
}

config.colors.brights = {
	"#585B70", -- bright black
	"#F38BA8", -- bright red
	"#A6E3A1", -- bright green
	"#F9E2AF", -- bright yellow
	"#89B4FA", -- bright blue
	"#F5C2E7", -- bright magenta
	"#94E2D5", -- bright cyan
	"#A6ADC8", -- bright white
}

-- Keybindings
config.keys = {
	{ key = "d", mods = "CMD", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "d", mods = "CMD|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "k", mods = "CMD", action = wezterm.action.SendString("clear\n") },
	{ key = "w", mods = "CMD", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
	{ key = "q", mods = "CMD", action = wezterm.action.QuitApplication },
}

return config
