local wt = require("wezterm")

return {
	color_scheme = "Kanagawa",
	color_schemes = {
		["Kanagawa"] = {
			foreground = "#dcd7ba",
			background = "#1f1f28",
			cursor_bg = "#c8c093",
			cursor_border = "#c8c093",
			cursor_fg = "#1d202f",
			selection_bg = "2d4f67",
			selection_fg = "c8c093",
			ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
			brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
		},
	},
	initial_cols = 100,
	initial_rows = 50,
	font = wt.font({ family = "RobotoMono Nerd Font" }),
	font_size = 14,
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.8,
	macos_window_background_blur = 30,
	text_background_opacity = 0.8,
	alternate_buffer_wheel_scroll_speed = 1,
	window_padding = {
		left = 2,
		right = 2,
		top = 2,
		bottom = 2,
	},
	window_frame = {
		border_left_width = 1,
		border_right_width = 1,
		border_bottom_height = 1,
		border_top_height = 0,
		border_left_color = "black",
		border_right_color = "black",
		border_bottom_color = "black",
		border_top_color = "black",
	},
	default_cursor_style = "BlinkingBlock",
	cursor_blink_rate = 650,
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	keys = {
		{
			key = "Enter",
			mods = "CMD",
			action = wt.action.ToggleFullScreen,
		},
	},
}
