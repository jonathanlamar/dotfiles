local wt = require("wezterm")

function string.split(str, sep)
	local t = {}
	for s in string.gmatch(str, "([^" .. sep .. "]+)") do
		table.insert(t, s)
	end
	return t
end

local function reduce_title(title)
	title = title:gsub("\\", "/")
	title = title:split("/")
	return title[#title]
end

wt.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	return reduce_title(tab.active_pane.title)
end)

wt.on("format-window-title", function(tab, pane, tabs, panes, config)
	return reduce_title(tab.active_pane.title)
end)

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
		["Melange"] = {
			foreground = "#c9beb4",
			background = "#292522",
			cursor_bg = "#ECE1D7",
			cursor_border = "#c9beb4",
			cursor_fg = "#292522",
			selection_bg = "#403A36",
			selection_fg = "#c9beb4",
			ansi = { "#1c1a18", "#b64b4e", "#78997A", "#E49B5D", "#7F91B2", "#B380B0", "#7B9695", "#C1A78E" },
			brights = { "#867462", "#D47766", "#85B695", "#EBC06D", "#A3A9CE", "#CF9BC2", "#89B3B6", "#c9beb4" },
		},
		["Gruvbox Material"] = {
			foreground = "#ddc7a1",
			background = "#282828",
			cursor_bg = "#ddc7a1",
			cursor_border = "#ddc7a1",
			cursor_fg = "#282828",
			selection_bg = "#928374",
			selection_fg = "#ddc7a1",
			ansi = { "#282828", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#ddc7a1" },
			brights = { "#928374", "#fb4934", "#b8bb26", "#fabd2f", "#83a598", "#d3869b", "#8ec07c", "#ebdbb2" },
		},
	},
	initial_cols = 100,
	initial_rows = 50,
	font = wt.font({family = "UbuntuMono Nerd Font"}),
	font_size = 15,
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.75,
	macos_window_background_blur = 30,
	text_background_opacity = 0.75,
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
