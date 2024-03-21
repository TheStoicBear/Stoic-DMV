fx_version "cerulean"
game "gta5"
lua54 "yes"

author 'TheStoicBear'
description 'DMV Test / Registration Resource for FiveM'
version '1.0.0'
client_scripts {
	'src/registration.lua',
	'src/dmvtest.lua'
}
server_script 'src/server.lua'
shared_scripts {
    'Config.lua',
    '@ox_lib/init.lua',
	'@ND_Core/init.lua'
}