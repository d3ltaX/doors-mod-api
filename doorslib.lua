local doors = {}
function doors.newEntity(imgId, eName)
    EntityBase = Instance.new("Part", workspace)
    EntityBase.Transparency = 1 
    EntityBase.Size = Vector3.new(0.9, 0.1, 0.7)
    EntityBase.Name = eName
    EntityBillboardGui = Instance.new("BillboardGui", EntityBase)
    EntityBillboardGui.StudsOffset = Vector3.new(0, 5, 0)
    EntityBillboardGui.Size = UDim2.new(0,250,0,250)
    EntityBillboardGui.MaxDistance = math.huge
    EntityBillboardGui.Adornee = EntityBase
    EntityImage = Instance.new("ImageLabel",EntityBillboardGui)
    EntityImage.Size = EntityBillboardGui.Size
    EntityImage.BackgroundTransparency = 1 
    EntityImage.ImageTransparency = 0
    
    EntityImage.Image = imgId
    return EntityBase
end
function doors.returnSoundPreset()
    return {
        "http://www.roblox.com/asset/?id=364927601",
        "http://www.roblox.com/asset/?id=3069932807",
        "http://www.roblox.com/asset/?id=3593433467",
        "http://www.roblox.com/asset/?id=9114792002",
        "http://www.roblox.com/asset/?id=9114572454"
        
    }
end
function doors.warning(text,scT)
    local ScreenGui = Instance.new("ScreenGui")
    local TextLabel = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    
    
    TextLabel.Text = text
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    TextLabel.Parent = ScreenGui
    TextLabel.BackgroundColor3 = Color3.fromRGB(155, 50, 50)
    TextLabel.Position = UDim2.new(0.0211102441, 0, 0.0319444463, 0)
    TextLabel.Size = UDim2.new(0, 1307, 0, 50)
    TextLabel.Font = Enum.Font.Fantasy
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    
    UICorner.Parent = TextLabel
    wait(scT)
    ScreenGui:Destroy()
end
return doors
