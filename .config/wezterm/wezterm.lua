local wt = require("wezterm")

local kanagawa = {
	foreground = "#dcd7ba",
	background = "#1f1f28",
	cursor_bg = "#c8c093",
	cursor_fg = "#c8c093",
	cursor_border = "#c8c093",
	selection_fg = "#c8c093",
	selection_bg = "#2d4f67",
	scrollbar_thumb = "#16161d",
	split = "#16161d",
	ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
	brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
}

local melange = {
	foreground = "#ECE1D7",
	background = "#292522",
	cursor_bg = "#ECE1D7",
	cursor_border = "#ECE1D7",
	cursor_fg = "#292522",
	selection_bg = "#403A36",
	selection_fg = "#ECE1D7",
	ansi = { "#1c1a18", "#b64b4e", "#78997A", "#E49B5D", "#7F91B2", "#B380B0", "#7B9695", "#C1A78E" },
	brights = { "#867462", "#D47766", "#85B695", "#EBC06D", "#A3A9CE", "#CF9BC2", "#89B3B6", "#ECE1D7" },
}

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
	colors = melange,
	force_reverse_video_cursor = true,
	initial_cols = 100,
	initial_rows = 50,
	font = wt.font("JetBrainsMono Nerd Font"),
	font_size = 14,
	default_cursor_style = "BlinkingBar",
	cursor_blink_rate = 500,
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.9,
	text_background_opacity = 0.7,
	alternate_buffer_wheel_scroll_speed = 1,
	window_padding = {
		left = 2,
		right = 2,
		top = 2,
		bottom = 2,
	},
	keys = {
		{
			key = "t",
			mods = "CMD",
			action = wt.action({
				SpawnTab = "DefaultDomain",
			}),
		},
		{
			key = "w",
			mods = "CMD",
			action = wt.action({
				CloseCurrentTab = {
					confirm = false,
				},
			}),
		},
		{
			key = "Tab",
			mods = "CTRL",
			action = wt.action({
				ActivateTabRelative = 1,
			}),
		},
		{
			key = "Tab",
			mods = "CTRL|SHIFT",
			action = wt.action({
				ActivateTabRelative = -1,
			}),
		},
	},
}
