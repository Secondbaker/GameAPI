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
    { console: "Nintendo Entertainment System", 
        compatible_console: ["Nintendo Entertainment System"],
        games: [] },
    { console: "Nintendo 64",
        compatible_console: ["Nintendo 64"],
        games: [] },
    { console: "PlayStation 2",
        compatible_console: ["PlayStation 1", "PlayStation 2"],
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
    { console: "Dreamcast",
        compatible_console: ["Dreamcast"],
        games: [] },
    "Super Famicom": ["Super Famicom"],
    "Super Nintendo Enterntainment System(?)": ["Super Nintendo Entertainment System"],
    "Xbox One": ["Xbox One"],
    "Nintendo Switch": ["Nintendo Switch"],
    "Wii U": ["Wii", "Wii U"],
    "GameCube": ["GameCube"],
    "PlayStation 4": ["PlayStation 4"],
    "Super NES Mini": ["Super NES Mini"],
    "Genesis": ["Genesis"],
    "GameBoy Pocket": ["GameBoy"],
    "Gameboy Color": ["GameBoy", "GameBoy Color"],
    "Gameboy Advance": ["GameBoy", "GameBoy Color", "GameBoy Advance"],
    "DS": ["DS", "GameBoy Advance"],
    "3DS": ["3DS", "DS"],
    "New 3DS": ["New 3DS", "3DS", "DS"],
    "New 3DS XL": ["New 3DS", "3DS", "DS"]
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

COMPATIBILITY_TABLE.each do |console|
    puts console.inspect
    next_console = Console.create(name: console[0])
    console[1].each do |compatible_console|
        next_console.compatible_consoles.find_or_create_by(name: compatible_console)
    end
end

ps2 = CompatibleConsole.find_by(name: "PlayStation 2");
PS2_GAMES.each do |game|
    ps2.games.create(name: game)
end
