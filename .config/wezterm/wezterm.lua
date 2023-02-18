local wt = require("wezterm");
local kanagawa = require("kanagawa")

function string.split(str, sep)
	local t = {}
	for s in string.gmatch(str, "([^"..sep.."]+)") do
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
	colors = kanagawa,
    force_reverse_video_cursor = true,
	initial_cols = 100,
	initial_rows = 50,
	font = wt.font("JetBrainsMono Nerd Font"),
	font_size = 13,
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
			action = wt.action{
				SpawnTab = "DefaultDomain",
			},
		},
		{
			key = "w",
			mods = "CMD",
			action = wt.action{
				CloseCurrentTab = {
					confirm = false,
				},
			},
		},
		{
			key = "Tab",
			mods = "CTRL",
			action = wt.action{
				ActivateTabRelative = 1,
			},
		},
		{
			key = "Tab",
			mods = "CTRL|SHIFT",
			action = wt.action{
				ActivateTabRelative = -1,
			},
		},
	},
}
