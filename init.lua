
-- Load support for intllib.
local path = minetest.get_modpath(minetest.get_current_modname()) .. "/"

local S = minetest.get_translator and minetest.get_translator("mobs_animal") or
		dofile(path .. "intllib.lua")

mobs.intllib = S

-- Animals
dofile(path .. "chicken.lua") -- JKmurray
dofile(path .. "cow.lua") -- KrupnoPavel
dofile(path .. "rat.lua") -- PilzAdam
dofile(path .. "sheep.lua") -- PilzAdam
dofile(path .. "warthog.lua") -- KrupnoPavel
dofile(path .. "bee.lua") -- KrupnoPavel
dofile(path .. "bunny.lua") -- ExeterDad
dofile(path .. "kitten.lua") -- Jordach/BFD
dofile(path .. "penguin.lua") -- D00Med
dofile(path .. "panda.lua") -- AspireMint

-- Lucky Blocks
dofile(path .. "lucky_block.lua")


print (S("[MOD] Mobs Redo Animals loaded"))



if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:bee",
	nodes = {"group:flower"},
	min_light = 14,
	interval = 60,
	chance = 7000,
	min_height = 3,
	max_height = 200,
	day_toggle = true,
})
end



local spawn_on = "default:dirt_with_grass"

if minetest.get_modpath("ethereal") then
	spawn_on = "ethereal:prairie_dirt"
end

if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:bunny",
	nodes = {spawn_on},
	neighbors = {"group:grass"},
	min_light = 14,
	interval = 60,
	chance = 8000, -- 15000
	min_height = 5,
	max_height = 200,
	day_toggle = true,
})
end




local spawn_on = {"default:dirt_with_grass"}

if minetest.get_modpath("ethereal") then
	spawn_on = {"ethereal:bamboo_dirt", "ethereal:prairie_dirt"}
end


if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:chicken",
	nodes = spawn_on,
	neighbors = {"group:grass"},
	min_light = 14,
	interval = 60,
	chance = 8000, -- 15000
	min_height = 5,
	max_height = 200,
	day_toggle = true,
})
end





if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:cow",
	nodes = {"default:dirt_with_grass", "ethereal:green_dirt"},
	neighbors = {"group:grass"},
	min_light = 14,
	interval = 60,
	chance = 8000, -- 15000
	min_height = 5,
	max_height = 200,
	day_toggle = true,
})
end





local spawn_on = "default:dirt_with_grass"

if minetest.get_modpath("ethereal") then
	spawn_on = "ethereal:grove_dirt"
end

if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:kitten",
	nodes = {spawn_on},
	neighbors = {"group:grass"},
	min_light = 14,
	interval = 60,
	chance = 10000, -- 22000
	min_height = 5,
	max_height = 50,
	day_toggle = true,
})
end




if minetest.get_modpath("ethereal") and not mobs.custom_spawn_animal then

	mobs:spawn({
		name = "mobs_animal:panda",
		nodes = {"ethereal:bamboo_dirt"},
		neighbors = {"group:grass"},
		min_light = 14,
		interval = 60,
		chance = 8000, -- 15000
		min_height = 10,
		max_height = 80,
		day_toggle = true,
	})
end



if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:penguin",
	nodes = {"default:snowblock"},
	min_light = 14,
	interval = 60,
	chance = 20000,
	min_height = 0,
	max_height = 200,
	day_toggle = true,
})
end



if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:rat",
	nodes = {"default:stone"},
	min_light = 3,
	max_light = 9,
	interval = 60,
	chance = 8000,
	max_height = 0,
--	on_spawn = rat_spawn,
})
end






if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:sheep_white",
	nodes = {"default:dirt_with_grass", "ethereal:green_dirt"},
	neighbors = {"group:grass"},
	min_light = 14,
	interval = 60,
	chance = 8000, -- 15000
	min_height = 0,
	max_height = 200,
	day_toggle = true,
})
end




local spawn_on = {"default:dirt_with_grass"}
local spawn_by = {"group:grass"}

if minetest.get_mapgen_setting("mg_name") ~= "v6" then
	spawn_on = {"default:dirt_with_dry_grass", "default:dry_dirt_with_dry_grass"}
	spawn_by = {"group:dry_grass"}
end

if minetest.get_modpath("ethereal") then
	spawn_on = {"ethereal:mushroom_dirt"}
	spawn_by = {"flowers:mushroom_brown", "flowers:mushroom_red"}
end

if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:pumba",
	nodes = spawn_on,
	neighbors = spawn_by,
	min_light = 14,
	interval = 60,
	chance = 8000, -- 15000
	min_height = 0,
	max_height = 200,
	day_toggle = true,
})
end