function Enable()
 MyVariable = SKIN:GetVariable('Wall')
 if MyVariable == "1" then
        SKIN:Bang("!ActivateConfig", "ClockWorld\\Profile", "Profile.ini")
        SKIN:Bang("!ActivateConfig", "ClockWorld\\Clock", "Clock.ini")
        SKIN:Bang("!ActivateConfig", "ClockWorld\\Music Player", "Music Player.ini")
        SKIN:Bang("!ActivateConfig", "ClockWorld\\Shortcuts", "Shortcuts.ini")
        SKIN:Bang("!ActivateConfig", "ClockWorld\\Wallpapers", "Wallpapers.ini")
	  SKIN:Bang("!DeactivateConfig")
    else
        SKIN:Bang("!ActivateConfig", "ClockWorld\\Profile", "Profile.ini")
        SKIN:Bang("!ActivateConfig", "ClockWorld\\Clock", "Clock.ini")
        SKIN:Bang("!ActivateConfig", "ClockWorld\\Music Player", "Music Player.ini")
        SKIN:Bang("!ActivateConfig", "ClockWorld\\Shortcuts", "Shortcuts.ini")
	  SKIN:Bang("!DeactivateConfig")
    end
end
