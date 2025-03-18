fx_version 'cerulean'
game 'gta5'
lua54 'yes'

client_script {
    'client/**.lua',
}

server_script {
    'server/**.lua',
}

shared_script {
    'config.lua',
}

ui_page "public/index.html"

files {
    "public/**",
    "public/sounds/**.mp3",
    "public/sounds/**.ogg",
}
