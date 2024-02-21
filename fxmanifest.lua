---------------------------------
----- DMAL STAFF TEXT MANIFEST --
---------------------------------
fx_version 'adamant'
lua54 'yes'
game 'gta5'

description 'DMAL Staff Text v0.0.1'
author 'Developer: MrMada & Mirko'

-- CLIENT FILE
client_script 'client/*.lua'

-- SERVER FILE
server_script 'server/*.lua'

-- SHARED FILE
shared_script 'config.lua'
shared_script '@ox_lib/init.lua'

-- PROP FILE
data_file 'DLC_ITYP_REQUEST' 'stream/stafftext.ytyp'

escrow_ignore {'config.lua'}
