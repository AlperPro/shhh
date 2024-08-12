game.StarterGui:SetCore("SendNotification", {
    Title = "You are using an old loadstring."; 
    Text = "Switching To New One And Copying To Clipboard.."; 
    Duration = 5; -- Duration in seconds
})
local scriptToCopy = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/shhh/main/KJ%20Script.lua"))()]]
setclipboard(scriptToCopy)
spawn(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/shhh/main/KJ%20Script.lua"))()
  end)
