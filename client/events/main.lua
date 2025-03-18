RegisterNetEvent("SoundPlayer:client:PlaySound")
AddEventHandler("SoundPlayer:client:PlaySound", function(sound, volume)
    PlaySound(sound, volume)
end)

RegisterNetEvent("SoundPlayer:client:StopAllSounds")
AddEventHandler("SoundPlayer:client:StopAllSounds", function()
    StopAllSounds()
end)