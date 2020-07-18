# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CompatibleConsole.destroy_all
Console.destroy_all
Game.destroy_all

INFO_TABLE = [
    { compatible_console: "Nintendo Entertainment System", 
        consoles: ["Nintendo Entertainment System"],
        games: [] },
    { compatible_console: "Nintendo 64",
        consoles: ["Nintendo 64"],
        games: [] },
    { compatible_console: "PlayStation 2",
        consoles: ["PlayStation 2"],
        games: [
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
    { compatible_console: "Dreamcast",
        consoles: ["Dreamcast"],
        games: [] },
    { compatible_console: "Super Famicom",
        consoles: ["Super Famicom"],
        games: [] },
    { compatible_console: "Super Nintendo Enterntainment System(?)",
        consoles: ["Super Nintendo Entertainment System"],
        games: [] },
    { compatible_console: "Xbox One",
        consoles: ["Xbox One"],
        games: [] },
    { compatible_console: "Nintendo Switch",
        consoles: ["Nintendo Switch"],
        games: [] },
    { compatible_console: "Wii U",
        consoles: ["Wii U"],
        games: [] },
    { compatible_console: "Wii",
        consoles: ["Wii U"],
        games: [] },
    { compatible_console: "GameCube",
        consoles: ["GameCube"],
        games: [] },
    { compatible_console: "PlayStation 4",
        consoles: ["PlayStation 4"],
        games: [] },
    { compatible_console: "Super NES Mini",
        consoles: ["Super NES Mini"],
        games: [] },
    { compatible_console: "Genesis",
        consoles: ["Genesis"],
        games: [] },
    { compatible_console: "GameBoy",
        consoles: ["GameBoy Pocket", "GameBoy Color (Pink)", "GameBoy Color (Pokemon)", "GameBoy Advance", "GameCube GameBoy Player"],
        games: [] },
    { compatible_console: "GameBoy Color",
        consoles: ["GameBoy Color (Pink)", "GameBoy Color (Pokemon)", "GameBoy Advance", "GameCube GameBoy Player"],
        games: [] },
    { compatible_console: "Gameboy Advance",
        consoles: ["GameBoy Advance", "DS (Blue)", "DS (Silver)", "GameCube GameBoy Player"],
        games: [] },
    { compatible_console: "DS",
        consoles: ["DS", "3DS (Purple)", "3DS (Zelda)", "New 3DS", "New 3DS XL (Majora's Mask)"],
        games: [] },
    { compatible_console: "3DS",
        consoles: ["3DS (Purple)", "3DS (Zelda)", "New 3DS", "New 3DS XL (Majora's Mask)"],
        games: [] },
    { compatible_console: "New 3DS",
        consoles: ["New 3DS", "New 3DS XL (Majora's Mask)"],
        games: [] },
    { compatible_console: "3DS (Japan)",
        consoles: ["New 3DS XL (Pokemon Sun and Moon)"],
        games: [] }
]

PS2_GAMES = [
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
]

INFO_TABLE.each do |info|
    
end

