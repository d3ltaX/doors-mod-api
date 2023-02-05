# doors-mod-api
An API for doors mods. Includes newEntity, warningGui, and sound presets

To make a new entity::
```
doors.newEntity(img,name)
```
doors.newEntity returns the entities part.
An example entity is like this::
```
doors = loadstring(game:HttpGet("https://raw.githubusercontent.com/d3ltaX/doors-mod-api/main/doorslib.lua"))()
wait(10)
runaway = doors.newEntity("http://www.roblox.com/asset/?id=12381649172","Runaway")
runaway.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
rmovement = Instance.new("BodyVelocity",runaway)

sfx = Instance.new("Sound", runaway)
sfx.SoundId = doors.returnSoundPreset()[1]
sfx.Volume = 1 
sfx.PlaybackSpeed = 1
sfx.Looped = true
sfx:Play()
runawayloop = true
i = 0
runaway.CanCollide = false
wait(4)
while runawayloop do
    if game.Players.LocalPlayer.Character.Humanoid.MoveDirection == Vector3.new(0,0,0) then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        break
    end
    --runaway.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    i = i + 1
    print(i)
    if i == 30 then
        break
    end
    wait(2)
    rmovement.Velocity = Vector3.new(0,60,0)
    wait(2)
    rmovement.Velocity = Vector3.new(0,-60,0)
    runaway.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end

runaway:Destroy()
rmovement:Destroy()
```
Now, on to returnSoundPreset
It is a set of sounds in a table, used for entities
An example of this is
```
sfx.SoundId = doors.returnSoundPreset()[1]
```
This gets the first sound in the table.
Next, warning.
It's a warning gui that stays on screen for a certain amount of time. It can be used like this
```
doors.warning("Hello, world!", 5)
```
