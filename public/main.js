let sounds = [];

window.addEventListener('message', function(event) {

    if (event.data.action == "playSound") {

        let newSound = new Howl({src: ["./sounds/" + event.data.soundFile]});
        
        newSound.volume(event.data.volume);
        newSound.play();
        
        sounds.push(newSound);
        
        return;
    }

    if (event.data.action == "stopAllSounds") {
        
        // for each sound, stop it

        for (let i = 0; i < sounds.length; i++) {
            sounds[i].stop();
        }

        sounds = [];

        return;
    }

    console.log("nothing is executed");
});