# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GameSystem.destroy_all
Console.destroy_all
Title.destroy_all
Game.destroy_all

INFO_TABLE = [
    { game_system: "Nintendo Entertainment System", 
        consoles: ["Nintendo Entertainment System"],
        titles: [] },
    { game_system: "Nintendo 64 (JP)",
        consoles: ["Nintendo 64 - Jungle Green (Modded)"],
        titles: [
            "Pokemon Snap (JP)",
            "Animal Crossing (JP)",
            "Mystical Ninja Starring Goemon"
        ]},
    { game_system: "Nintendo 64",
        consoles: ["Nintendo 64 - Jungle Green (Modded)"],
        titles: [
            "Beetle Adventure Racing",
            "Diddy Kong Racing",
            "F-Zero X",
            "Goldeneye 007",
            "Jet Force Gemini",
            "The Legend of Zelda:  Ocarina of Time (Gold Collector's Edition)",
            "Mega Man 64",
            "Perfect Dark",
            "Pokemon Snap",
            "Quest 64",
            "Star Wars Episode I:  Battle for Naboo",
            "Yoshi's Story"
        ] },
    { game_system: "PlayStation 2",
        consoles: ["PlayStation 2"],
        titles: [
            "A Series of Unfortunate Events",
            "American Idol",
            "ATV Offroad Fury 2",
            "Final Fantasy X",
            "Hot Shots Golf 3",
            "Katamari Damacy",
            "Kingdom Hearts",
            "Kingdom Hearts II",
            "Mega Man X Collection",
            "Naruto:  Ultimate Ninja",
            "Naruto:  Ultimate Ninja 2",
            "Shadow the Hedgehog",
            "Shrek 2",
            "Sly 3:  Honor Among Thieves",
            "Spongebob Squarepants:  Battle For Bikini Bottom",
            "Spongebob Squarepants Movie, The",
            "Spongebob Squarepants:  Lights, Camera, Pants",
            "SSX Tricky"
        ] },
    { game_system: "Dreamcast",
        consoles: ["Dreamcast"],
        titles: ["Sega Smash Pack Volume 1"] },
    { game_system: "Super Famicom",
        consoles: ["Super Famicom"],
        titles: [] },
    { game_system: "Super Nintendo Enterntainment System",
        consoles: ["Super Nintendo Entertainment System(?)"],
        titles: ["Clue",
        "Donkey Kong Country 2:  Diddy's Kong Quest",
        "The Legend of Zelda:  A Link to the Past",
        "Mega Man X",
        "Out of this World",
        "Pilotwings",
        "Secret of Mana",
        "Sim City",
        "StarFox",
        "Super Mario All Stars + Super Mario World",
        "Zoop"] },
    { game_system: "Xbox One",
        consoles: ["Xbox One"],
        titles: ["Rare Replay"] },
    { game_system: "Nintendo Switch",
        consoles: ["Nintendo Switch"],
        titles: [] },
    { game_system: "Wii U",
        consoles: ["Wii U"],
        titles: [
            "Animal Crossing:  amiibo Festival",
            "Batman Arkham City Armored Edition",
            "Bayonetta 2",
            "Captain Toad:  Treasure Tracker",
            "Donkey Kong Country :  Tropical Freeze",
            "Hyrule Warriors",
            "Kirby and the Rainbow Curse",
            "The Legend of Zelda:  the Wind Waker",
            "Mario Kart 8",
            "Mighty No. 9",
            "NintendoLand",
            "Paper Mario:  Color Splash",
            "Pikmin 3",
            "Scribblenauts Unlimited",
            "Shovel Knight",
            "Super Mario 3D World",
            "Super Mario Maker",
            "Super Smash Bros. for Wii U",
            "Super Smash Bros. for Wii U",
            "Xenoblade Chronicles X",
            "Yoshi's Wooly World"] },
    { game_system: "Wii",
        consoles: ["Wii U"],
        titles: ["Animal Crossing:  City Folk",
        "Donkey Kong Country Returns",
        "Kirby's Dream Collection Special Edition",
        "Kirby's Epic Yarn",
        "Kirby's Epic Yarn",
        "Kirby's Return to Dream Land",
        "The Legend of Zelda:  Skyward Sword",
        "The Legend of Zelda:  Twilight Princess",
        "Metroid:  Other M",
        "Metroid Prime 3:  Corruption",
        "Metroid Prime:  Trilogy",
        "The Munchables",
        "Muramasa:  The Demon Blade",
        "Okami",
        "Super Mario Galaxy",
        "Super Smash Bros. Brawl"] },
    { game_system: "GameCube (JP)",
        consoles: ["GameCube (with Action Replay)"],
        titles: ["Animal Crossing e+"] },
    { game_system: "GameCube",
        consoles: ["GameCube"],
        titles: ["F-Zero GX",
        "Harvest Moon:  A Wonderful Life",
        "Kirby Air Ride",
        "The Legend of Zelda:  Special Collector's Edition",
        "The Legend of Zelda:  Ocarina of Time",
        "The Legend of Zelda:  Four Swords Adventures",
        "Mega Man Anniversary Collection",
        "Metroid Prime",
        "Metroid Prime 2:  Echoes",
        "Pokemon Colosseum",
        "Sonic Mega Collection",
        "Super Mario Sunshine"] },
    { game_system: "PlayStation 4",
        consoles: ["PlayStation 4"],
        titles: ["Persona 5",
        "Doom (2016) (Digital)",
        "Parappa the Rapper (Digital)",
        "Final Fantasy XV",
        "Little Big Planet 3",
        "Shadow of Mordor",
        "Uncharted 4:  A Thief's Tale"] },
    { game_system: "Super NES Mini",
        consoles: ["Super NES Mini"],
        titles: ["Contra III:  The Alien Wars",
        "Donkey Kong Country",
        "EarthBound",
        "Final Fantasy III",
        "F-ZERO",
        "Kirby's Dream Course",
        "Kirby Super Star",
        "Mega Man X",
        "Secret of Mana",
        "Star Fox",
        "Street Fighter II Turbo:  Hyper Fighting",
        "Super Castlevania IV",
        "Super Ghouls'n Ghosts",
        "Super Mario Kart",
        "Super Mario RPG:  Legend of the Seven Stars",
        "Super Mario World",
        "Super Metroid",
        "Super Punch Out!!",
        "The Legend of Zelda:  A Link to the Past",
        "Yoshi's Island",
        "Star Fox 2"] },
    { game_system: "Genesis",
        consoles: ["Genesis"],
        titles: ["Ecco the Dolphin", "The Lion King", "Pac Man 2:  The New Adventures", "Sonic the Hedgehog", "Sonic the Hedgehog 2", "Sonic & Knuckles", "Street Fighter II':  Special Champions Edition"] },
    { game_system: "GameBoy",
        consoles: ["GameBoy Pocket", "GameBoy Color (Pink)", "GameBoy Color (Pokemon)", "GameBoy Advance", "GameCube GameBoy Player"],
        titles: ["Dr Mario",
        "Ultraman Club (JP)",
        "Tetris",
        "Super Mario Land 3:  Wario Land",
        "Pocket Monsters Red Version",
        "Arcade Classic 4:  Defender/Joust (JP)",
        "SD Gundam",
        "Pocket Monsters Yellow Version",
        "Pokemon Yellow Version",
        "Pokemon Gold Version",
        "Pokemon Pinball (JP)",
        "Super Donkey Kong GB",
        "Pocket Monsters Blue Version",
        "Pocket Monsters Gold Version",
        "Ganbare Goemon Sarawareta Ebisumaru",
        "Pokemon Card GB",
        "Super Mario Land (JP)",
        "Yoshi's Egg (JP)",
        "Kirby's Star (JP)",
        "SD Gundam Lacroan Heroes",
        "Pocket Monsters Silver Version"] },
    { game_system: "GameBoy Color",
        consoles: ["GameBoy Color (Pink)", "GameBoy Color (Pokemon)", "GameBoy Advance", "GameCube GameBoy Player"],
        titles: [] },
    { game_system: "Gameboy Advance",
        consoles: ["GameBoy Advance", "DS (Blue)", "DS (Silver)", "GameCube GameBoy Player"],
        titles: ["Super Mario Advance",
        "Megaman Zero 4",
        "Megaman Battle Network 4:  Blue Moon",
        "Pokemon Leaf Green Version",
        "Megaman Zero 3",
        "Megaman Zero 2",
        "Pokemon Ruby Version",
        "Super Mario Advance 4:  Super Mario Bros. 3",
        "Lego Star Wars:  The Video Game",
        "Spongebob Squarepants:  Lights, Camera, Pants",
        "Mario and Luigi Superstar Saga",
        "Legend of Zelda:  A Link to the Past/Four Swords",
        "Megaman Zero",
        "Pokemon Pinball",
        "Golden Sun",
        "Metroid:  Zero Mission",
        "Pokemon Sapphire Version",
        "Pokemon FireRed Version (bootleg)",
        "MarioKart Advance (JP)",
        "The Legend of Zelda:  The Minish Cap (bootleg)",
        "Kingdom Hearts:  Chain of Memories",
        "Metroid Fusion",
        "Tiger Woods PGA Tour Golf",
        "The SpongeBob SquarePants Movie",
        "Backyard Football",
        "Megaman Battle Network 3:  Blue",
        "Monopoly",
        "Kingdom Hearts:  Chain of Memories"] },
    { game_system: "DS",
        consoles: ["DS", "3DS (Purple)", "3DS (Zelda)", "New 3DS", "New 3DS XL (Majora's Mask)", "New 3DS XL (Pokemon Sun and Moon)"],
        titles: ["Advanced Wars:  Dual Strike",
        "Avatar:  The Burning Earth",
        "Brain Age",
        "Brain Age 2",
        "Final Fantasy III",
        "Harry Potter and the Goblet of Fire",
        "The Legend of Zelda:  Spirit Tracks",
        "Mario Kart DS",
        "Mega Man Zero Collection (Sealed)",
        "MyChineseCoach",
        "Myst",
        "Scribblenauts",
        "Namco Museum DS",
        "Nintendogs:  Dachshund and Friends",
        "Pokemon Dash",
        "Pokemon Mystery Dungeon:  Blue Rescue Team",
        "Pokemon Diamond Version",
        "Pokemon Platinum Version",
        "Pokemon Mystery Dungeon:  Explorers of Sky",
        "Pokemon HeartGold Version",
        "Pokemon Black Version",
        "Pokemon White Version",
        "Pokemon Conquest",
        "Pokemon White Version 2",
        "Retro Atari",
        "Super Scribblenauts",
        "Sea World Adventure Parks:  Shamu's Deep Sea Adventures",
        "Sims 2:  Castaway",
        "TouchMaster",
        "Zoo Tycoon DS"] },
    { game_system: "3DS",
        consoles: ["3DS (Purple)", "3DS (Zelda)", "New 3DS", "New 3DS XL (Majora's Mask)", "New 3DS XL (Pokemon Sun and Moon)"],
        titles: ["Animal Crossing:  New Leaf",
        "Codename Steam",
        "The Legend of Zelda:  Ocarina of Time 3D",
        "The Legend of Zelda:  Majora's Mask 3D",
        "The Legend of Zelda:  Majora's Mask 3D",
        "The Legend of Zelda:  A Link Between Worlds",
        "The Legend of Zelda:  A Link Between Worlds",
        "The Legend of Zelda:  Tri Force Heroes",
        "Luigi's Mansion:  Dark Moon",
        "Mario Kart 7",
        "Mario and Luigi:  Dream Team",
        "Paper Mario Sticker Star",
        "Pokemon Y",
        "Pokemon Alpha Sapphire",
        "Pokemon Omega Ruby",
        "Pokemon Moon",
        "Pokemon Sun",
        "Pokemon Ultra Moon",
        "Pokemon Ultra Sun",
        "Professor Layton and the Miracle Mask",
        "Shovel Knight",
        "StarFox 3D",
        "Super Mario 3D Land",
        "Super Smash Bros 3DS"] },
    { game_system: "New 3DS",
        consoles: ["New 3DS", "New 3DS XL (Majora's Mask)"],
        titles: ["Xenoblade Chronicles 3D"] },
    { game_system: "3DS (Japan)",
        consoles: ["New 3DS XL (Pokemon Sun and Moon)"],
        titles: ["Super Mario Bros. 2 (JP) (Famicom VC)",
        "Rockman X (Super Famicom VC)",
        "Final Fantasy (JP) (Famicom VC)"] }
]


INFO_TABLE.each do |info|
    gs = GameSystem.create(name: info[:game_system])
    info[:consoles].each do |console|
        gs.consoles.find_or_create_by(name: console)
    end
    info[:titles].each do |title|
        gs.titles.find_or_create_by(name: title)
    end
end

