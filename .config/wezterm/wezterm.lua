-- https://wezterm.org/index.html
-- Pull in the wezterm API
local wezterm = require("wezterm")
-- This will hold the configuration.
local config = wezterm.config_builder()

-- Set color scheme
config.color_scheme = "Catppuccin Mocha"

config.window_background_opacity = 0.88
config.macos_window_background_blur = 25

config.audible_bell = "Disabled"

-- Window and tabs configuration
config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "RESIZE"
-- Fonts configuration
config.font = wezterm.font("Cascadia Code", {
	weight = "Bold",
	italic = true,
})

config.font_size = 14

-- Use the defaults as a base
config.hyperlink_rules = wezterm.default_hyperlink_rules()

local function is_shell(foreground_process_name)
	local shell_names = { "bash", "zsh", "fish", "sh", "ksh", "dash" }
	local process = string.match(foreground_process_name, "[^/\\]+$") or foreground_process_name
	for _, shell in ipairs(shell_names) do
		if process == shell then
			return true
		end
	end
	return false
end

wezterm.on("open-uri", function(_, pane, uri)
	local editor = "nvim"
	local url = wezterm.url.parse(uri)
	if url.host == "www.youtube.com" or url.host == "youtu.be" then
		-- If it's a youtube video, open it in mpv
		pane:send_text(wezterm.shell_join_args({ "mpv", uri }) .. "\r")
		return false
	end

	if uri:find("^file:") == 1 and not pane:is_alt_screen_active() then
		-- We're processing an hyperlink and the uri format should be: file://[HOSTNAME]/PATH[#linenr]
		-- Also the pane is not in an alternate screen (an editor, less, etc)
		if is_shell(pane:get_foreground_process_name()) then
			-- A shell has been detected. Wezterm can check the file type directly
			-- figure out what kind of file we're dealing with
			local success, stdout, _ = wezterm.run_child_process({ "file", "--brief", "--mime-type", url.file_path })
			if success then
				if stdout:find("directory") then
					pane:send_text(wezterm.shell_join_args({ "cd", url.file_path }) .. "\r")
					pane:send_text(wezterm.shell_join_args({
						"eza",
						"--all",
						"--all",
						"--hyperlink",
						"--icons=always",
						"--git",
						"--no-filesize",
						"--no-time",
						"--no-user",
						"--no-permissions",
					}) .. "\r")
					return false
				end

				if stdout:find("text") then
					if url.fragment then
						pane:send_text(wezterm.shell_join_args({
							editor,
							"+" .. url.fragment,
							url.file_path,
						}) .. "\r")
					else
						pane:send_text(wezterm.shell_join_args({ editor, url.file_path }) .. "\r")
					end
					return false
				end
			end
		else
			-- No shell detected, we're probably connected with SSH, use fallback command
			local edit_cmd = url.fragment and editor .. " +" .. url.fragment .. ' "$_f"' or editor .. ' "$_f"'
			local cmd = '_f="'
				.. url.file_path
				.. '"; { test -d "$_f" && { cd "$_f" ; ls -a -p --hyperlink --group-directories-first; }; } '
				.. '|| { test "$(file --brief --mime-type "$_f" | cut -d/ -f1 || true)" = "text" && '
				.. edit_cmd
				.. "; }; echo"
			pane:send_text(cmd .. "\r")
			return false
		end
	end

	-- without a return value, we allow default actions
end)

-- Return the configuration to WezTerm
return config
