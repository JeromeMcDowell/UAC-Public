import { Server } from '../../../library/Minecraft.js';
const registerInformation = {
    cancelMessage: true,
    name: 'spawntp',
    description: 'Warps the player to where staff have set world spawn',
    usage: '[ spawntp ]',
    example: [
        'spawntp'
    ]
};
Server.command.register(registerInformation, (chatmsg, args) => {
    if( Server.player.getScore('icmtoggle', chatmsg.sender.nameTag) === 0) {
        return Server.broadcast(`§¶§cUAC ► §c§lThe Realm Owner currently has Player Commands Disabled`, chatmsg.sender.nameTag);
    } else if( Server.player.getScore('icmtoggle', chatmsg.sender.nameTag) === 1) {
        
        if(args[0])
        {
            Server.broadcast(`§¶§cUAC ► §e§lYou found a Easter Egg! Hello There. Let this be our little secret ;)`, chatmsg.sender.nameTag);
        }
        else {
            if ( Server.player.getScore('worldcustom', chatmsg.sender.nameTag) === 1 ) {
                let command = `tp "${chatmsg.sender.nameTag}" ${Server.player.getScore('Worldx', chatmsg.sender.nameTag)} ${Server.player.getScore('Worldy', chatmsg.sender.nameTag)} ${Server.player.getScore('Worldz', chatmsg.sender.nameTag)}`
                Server.runCommand( command );
                Server.broadcast(`§¶§cUAC ► §l§d${chatmsg.sender.nameTag} §bHas warped to World Spawn at §6${Server.player.getScore('Worldx', chatmsg.sender.nameTag)} ${Server.player.getScore('Worldy', chatmsg.sender.nameTag)} ${Server.player.getScore('Worldz', chatmsg.sender.nameTag)}`, chatmsg.sender.nameTag);
                Server.broadcastStaff(`§¶§cUAC ► §d${chatmsg.sender.nameTag} §bwarped to worldspawn`);
                Server.runCommand( `execute "${chatmsg.sender.nameTag}" ~~~ function particle/nether_poof` );
            }
            else {
                Server.runCommand( `execute "${chatmsg.sender.nameTag}" ~~~ tp @s 0 100 0` );
                Server.runCommand( `execute "${chatmsg.sender.nameTag}" ~~~ effect @s slow_falling 20 1 ` );
                Server.broadcast(`§¶§cUAC ► §d${chatmsg.sender.nameTag} §bwarped to worldspawn`);
                Server.broadcastStaff(`§¶§cUAC ► §d${chatmsg.sender.nameTag} §bwarped to worldspawn`);
                Server.runCommand( `execute "${chatmsg.sender.nameTag}" ~~~ function particle/nether_poof` );
            } 
        }
    }
    else {
        return Server.broadcast(`§¶§cUAC ► §cERROR 2! §6Command Failed`, chatmsg.sender.nameTag);
    }
});
