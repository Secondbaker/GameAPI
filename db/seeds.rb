# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GameSystem.destroy_all
Console.destroy_all
Game.destroy_all

INFO_TABLE = [
    { game_system: "Nintendo Entertainment System", 
        consoles: ["Nintendo Entertainment System"],
        games: [] },
    { game_system: "Nintendo 64",
        consoles: ["Nintendo 64"],
        games: [] },
    { game_system: "PlayStation 2",
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
    { game_system: "Dreamcast",
        consoles: ["Dreamcast"],
        games: [] },
    { game_system: "Super Famicom",
        consoles: ["Super Famicom"],
        games: [] },
    { game_system: "Super Nintendo Enterntainment System(?)",
        consoles: ["Super Nintendo Entertainment System"],
        games: [] },
    { game_system: "Xbox One",
        consoles: ["Xbox One"],
        games: [] },
    { game_system: "Nintendo Switch",
        consoles: ["Nintendo Switch"],
        games: [] },
    { game_system: "Wii U",
        consoles: ["Wii U"],
        games: [] },
    { game_system: "Wii",
        consoles: ["Wii U"],
        games: [] },
    { game_system: "GameCube",
        consoles: ["GameCube"],
        games: [] },
    { game_system: "PlayStation 4",
        consoles: ["PlayStation 4"],
        games: [] },
    { game_system: "Super NES Mini",
        consoles: ["Super NES Mini"],
        games: [] },
    { game_system: "Genesis",
        consoles: ["Genesis"],
        games: [] },
    { game_system: "GameBoy",
        consoles: ["GameBoy Pocket", "GameBoy Color (Pink)", "GameBoy Color (Pokemon)", "GameBoy Advance", "GameCube GameBoy Player"],
        games: [] },
    { game_system: "GameBoy Color",
        consoles: ["GameBoy Color (Pink)", "GameBoy Color (Pokemon)", "GameBoy Advance", "GameCube GameBoy Player"],
        games: [] },
    { game_system: "Gameboy Advance",
        consoles: ["GameBoy Advance", "DS (Blue)", "DS (Silver)", "GameCube GameBoy Player"],
        games: [] },
    { game_system: "DS",
        consoles: ["DS", "3DS (Purple)", "3DS (Zelda)", "New 3DS", "New 3DS XL (Majora's Mask)", "New 3DS XL (Pokemon Sun and Moon)"],
        games: [] },
    { game_system: "3DS",
        consoles: ["3DS (Purple)", "3DS (Zelda)", "New 3DS", "New 3DS XL (Majora's Mask)", "New 3DS XL (Pokemon Sun and Moon)"],
        games: [] },
    { game_system: "New 3DS",
        consoles: ["New 3DS", "New 3DS XL (Majora's Mask)"],
        games: [] },
    { game_system: "3DS (Japan)",
        consoles: ["New 3DS XL (Pokemon Sun and Moon)"],
        games: ["Super Mario Bros. 2 (JP) Famicom VC",
        "Rockman X Super Famicom VC",
        "Final Fantasy Famicom VC"] }
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
    gs = GameSystem.create(name: info[:game_system])
    info[:consoles].each do |console|
        gs.consoles.find_or_create_by(name: console)
    end
    info[:games].each do |game|
        gs.games.find_or_create_by(name: game)
    end
end

