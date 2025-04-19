
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Axal-Dev/dex/refs/heads/main/dex.lua"))()
--[[ 

]]
--[[
local colors = {
	
    SchemeColor = Color3.fromRGB(150, 72, 148),
	
	Background = Color3.fromRGB(15,15,15),
	
    Header = Color3.fromRGB(15,15,15),

    TextColor = Color3.fromRGB(255,255,255),
	
    ElementColor = Color3.fromRGB(20, 20, 20)
}
]]

local Window = Library.CreateLib("gyrazxflamez_hub", "RJTheme8")


local Tab = Window:NewTab("TabName")


local Section = Tab:NewSection("Section Name")


Section:NewLabel("LabelText")


Section:NewButton("AntiFatigue", "ButtonInfo", function()
    game:GetService("StarterPlayer").StarterCharacterScripts.Movement.JumpFatigue
end)


Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)


Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)


Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)


Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
