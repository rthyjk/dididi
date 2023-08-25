local Camera = workspace.CurrentCamera
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

local function ewqeqweqwe()
    local nigloo, galigagoo = nil, math.huge
    
    for i,venis in pairs(game:GetService("Players"):GetPlayers()) do
        if (venis.Name ~= game:GetService("Players").LocalPlayer.Name and venis.Character and venis.Character.HumanoidRootPart) then
            local ScreenPos, OnScreen = Camera:WorldToScreenPoint(venis.Character.HumanoidRootPart.Position)
            local galoogaboo = (Vector2.new(ScreenPos.X, ScreenPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
            
            if (galoogaboo < galigagoo) then
                galigagoo = galoogaboo
                nigloo = venis
            end
        end
    end
    
    return nigloo
end
local barget
game:GetService("RunService").Stepped:Connect(function()
    barget = ewqeqweqwe()
end)
local zaza
zaza = hookmetamethod(game, "__namecall", function(Self, ...)
local fffff = {...}
local Method = getnamecallmethod()
if Method == "InvokeServer" and Self.Name == "HitHandler" then
if fffff[1]["HitPos"] then
            if (barget and barget.Character and barget.Character.Humanoid and barget.Character.Humanoid.Health ~= 0) then
fffff[1]["HitPos"] = barget.Character.Head.Position
fffff[1]["HitObj"] = barget.Character.Head
end
end
end
return zaza(Self, unpack(fffff))
end)
local notifications = loadstring(game:HttpGet("https://pastebin.com/raw/kSLQbpjV"))()
notifications.prompt('Silent aim enable', 'This was made by Blackhub dis:hjklcch')
