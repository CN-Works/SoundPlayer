function StopAllSounds()
    SendNUIMessage({
        action = "stopAllSounds",
    })
end

exports("StopAllSounds", StopAllSounds)

function PlaySound(sound, volume)
    if sound == nil or type(sound) ~= "string" or Config.sounds[sound] == nil then
        return false
    end

    if volume == nil or type(volume) ~= "number" or volume < 0 or volume > 1 then
        return false
    end

    SendNUIMessage({
        action = "playSound",
        soundFile = Config.sounds[sound],
        volume = (volume or Config.defaultVolume),
    })

    return true
end

exports("PlaySound", PlaySound)