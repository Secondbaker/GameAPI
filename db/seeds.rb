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

CONSOLE_LIST = [
    "Nintendo Entertainment System",
    "Nintendo 64",
    "PlayStation 2",
    "Dreamcast",
    "Super Famicom",
    "Super Nintendo Enterntainment System(?)",
    "Xbox One",
    "Nintendo Switch",
    "Wii U",
    "GameCube",
    "PlayStation 4",
    "Super NES Mini",
    "Genesis",
    "Gameboy Pocket",
    "Gameboy Color",
    "Gameboy Advance",
    "DS",
    "3DS",
    "3DS XL"
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

CONSOLE_LIST.each do |console|
    Console.create(name: console)    
end

ps2 = Console.find_by(name: "PlayStation 2");
PS2_GAMES.each do |game|
    ps2.games.create(name: game)
end
