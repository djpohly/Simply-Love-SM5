-- ThemePref template for screen timers
local defaultTimers = {-1, 5, 10, 15, 20, 30, 60, 90, 120, 300}
local function TimerPref(screen)
	return {
		Default = -1,
		Choices = defaultTimers,
		Values = defaultTimers,
	}
end

-- All ThemePrefs
local SLThemePrefs = {
	TimerSelectMusic = TimerPref("ScreenSelectMusic"),
	TimerSelectStyle = TimerPref("ScreenSelectStyle"),
}

-- Load current prefs if they exist
ThemePrefs.Init(SLThemePrefs, true)

-- Make sure a Simply Love section is written to the file
ThemePrefs.ForceSave()
