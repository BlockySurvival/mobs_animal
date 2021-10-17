
-- Load support for intllib.
local path = minetest.get_modpath(minetest.get_current_modname()) .. "/"

local S = minetest.get_translator and minetest.get_translator("mobs_animal") or
		dofile(path .. "intllib.lua")

mobs.intllib = S


local mod_config = config.settings_model('mobs_animal', {
	bee = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"group:flower"}),
			near = config.types.list({ "air" }),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(7000, { min=1 }),
			min_light = config.types.int(14, { min=0 }),
			max_light = config.types.int(15, { min=0 }),
			min_height = config.types.int(3, { min=-31000, max=31000 }),
			max_height = config.types.int(200, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	bunny = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({ "default:dirt_with_grass" }),
			near = config.types.list({"group:grass"}),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(8000, { min=1 }),
			min_light = config.types.int(14, { min=0 }),
			max_light = config.types.int(15, { min=0 }),
			min_height = config.types.int(5, { min=-31000, max=31000 }),
			max_height = config.types.int(200, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	chicken = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"default:dirt_with_grass"}),
			near = config.types.list({"group:grass"}),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(8000, { min=1 }),
			min_light = config.types.int(14, { min=0 }),
			max_light = config.types.int(15, { min=0 }),
			min_height = config.types.int(5, { min=-31000, max=31000 }),
			max_height = config.types.int(200, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	cow = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"default:dirt_with_grass", "ethereal:green_dirt"}),
			near = config.types.list({"group:grass"}),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(8000, { min=1 }),
			min_light = config.types.int(14, { min=0 }),
			max_light = config.types.int(15, { min=0 }),
			min_height = config.types.int(5, { min=-31000, max=31000 }),
			max_height = config.types.int(200, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	kitten = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({ "default:dirt_with_grass" }),
			near = config.types.list({ "group:grass" }),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(10000, { min=1 }),
			min_light = config.types.int(14, { min=0 }),
			max_light = config.types.int(15, { min=0 }),
			min_height = config.types.int(5, { min=-31000, max=31000 }),
			max_height = config.types.int(50, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	panda = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"ethereal:bamboo_dirt"}),
			near = config.types.list({"group:grass"}),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(8000, { min=1 }),
			min_light = config.types.int(14, { min=0 }),
			max_light = config.types.int(15, { min=0 }),
			min_height = config.types.int(10, { min=-31000, max=31000 }),
			max_height = config.types.int(80, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	penguin = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"default:snowblock"}),
			near = config.types.list({ "air" }),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(20000, { min=1 }),
			min_light = config.types.int(14, { min=0 }),
			max_light = config.types.int(15, { min=0 }),
			min_height = config.types.int(0, { min=-31000, max=31000 }),
			max_height = config.types.int(200, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	rat = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"default:stone"}),
			near = config.types.list({ "air" }),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(8000, { min=1 }),
			min_light = config.types.int(3, { min=0 }),
			max_light = config.types.int(9, { min=0 }),
			min_height = config.types.int(-31000, { min=-31000, max=31000 }),
			max_height = config.types.int(0, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	sheep_white = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"default:dirt_with_grass", "ethereal:green_dirt"}),
			near = config.types.list({"group:grass"}),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(8000, { min=1 }),
			min_light = config.types.int(14, { min=0 }),
			max_light = config.types.int(15, { min=0 }),
			min_height = config.types.int(0, { min=-31000, max=31000 }),
			max_height = config.types.int(200, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	pumba = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"default:dirt_with_dry_grass", "default:dry_dirt_with_dry_grass"}),
			near = config.types.list({"group:dry_grass"}),
			interval = config.types.int(60, { min=1 }),
			chance = config.types.int(8000, { min=1 }),
			min_light = config.types.int(14, { min=0 }),
			max_light = config.types.int(15, { min=0 }),
			min_height = config.types.int(0, { min=-31000, max=31000 }),
			max_height = config.types.int(200, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	}
})


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


-- Configurable mob spawning
if mod_config.bee.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:bee",
		mod_config.bee.spawn.on,
		mod_config.bee.spawn.near,
		mod_config.bee.spawn.min_light,
		mod_config.bee.spawn.max_light,
		mod_config.bee.spawn.interval,
		mod_config.bee.spawn.chance,
		mod_config.bee.spawn.active_object_count,
		mod_config.bee.spawn.min_height,
		mod_config.bee.spawn.max_height,
		true
	)
end

if mod_config.bunny.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:bunny",
		mod_config.bunny.spawn.on,
		mod_config.bunny.spawn.near,
		mod_config.bunny.spawn.min_light,
		mod_config.bunny.spawn.max_light,
		mod_config.bunny.spawn.interval,
		mod_config.bunny.spawn.chance,
		mod_config.bunny.spawn.active_object_count,
		mod_config.bunny.spawn.min_height,
		mod_config.bunny.spawn.max_height,
		true
	)
end

if mod_config.chicken.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:chicken",
		mod_config.chicken.spawn.on,
		mod_config.chicken.spawn.near,
		mod_config.chicken.spawn.min_light,
		mod_config.chicken.spawn.max_light,
		mod_config.chicken.spawn.interval,
		mod_config.chicken.spawn.chance,
		mod_config.chicken.spawn.active_object_count,
		mod_config.chicken.spawn.min_height,
		mod_config.chicken.spawn.max_height,
		true
	)
end

if mod_config.cow.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:cow",
		mod_config.cow.spawn.on,
		mod_config.cow.spawn.near,
		mod_config.cow.spawn.min_light,
		mod_config.cow.spawn.max_light,
		mod_config.cow.spawn.interval,
		mod_config.cow.spawn.chance,
		mod_config.cow.spawn.active_object_count,
		mod_config.cow.spawn.min_height,
		mod_config.cow.spawn.max_height,
		true
	)
end

if mod_config.kitten.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:kitten",
		mod_config.kitten.spawn.on,
		mod_config.kitten.spawn.near,
		mod_config.kitten.spawn.min_light,
		mod_config.kitten.spawn.max_light,
		mod_config.kitten.spawn.interval,
		mod_config.kitten.spawn.chance,
		mod_config.kitten.spawn.active_object_count,
		mod_config.kitten.spawn.min_height,
		mod_config.kitten.spawn.max_height,
		true
	)
end

if mod_config.panda.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:panda",
		mod_config.panda.spawn.on,
		mod_config.panda.spawn.near,
		mod_config.panda.spawn.min_light,
		mod_config.panda.spawn.max_light,
		mod_config.panda.spawn.interval,
		mod_config.panda.spawn.chance,
		mod_config.panda.spawn.active_object_count,
		mod_config.panda.spawn.min_height,
		mod_config.panda.spawn.max_height,
		true
	)
end

if mod_config.penguin.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:penguin",
		mod_config.penguin.spawn.on,
		mod_config.penguin.spawn.near,
		mod_config.penguin.spawn.min_light,
		mod_config.penguin.spawn.max_light,
		mod_config.penguin.spawn.interval,
		mod_config.penguin.spawn.chance,
		mod_config.penguin.spawn.active_object_count,
		mod_config.penguin.spawn.min_height,
		mod_config.penguin.spawn.max_height,
		true
	)
end

if mod_config.rat.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:rat",
		mod_config.rat.spawn.on,
		mod_config.rat.spawn.near,
		mod_config.rat.spawn.min_light,
		mod_config.rat.spawn.max_light,
		mod_config.rat.spawn.interval,
		mod_config.rat.spawn.chance,
		mod_config.rat.spawn.active_object_count,
		mod_config.rat.spawn.min_height,
		mod_config.rat.spawn.max_height
	)
end

if mod_config.sheep_white.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:sheep_white",
		mod_config.sheep_white.spawn.on,
		mod_config.sheep_white.spawn.near,
		mod_config.sheep_white.spawn.min_light,
		mod_config.sheep_white.spawn.max_light,
		mod_config.sheep_white.spawn.interval,
		mod_config.sheep_white.spawn.chance,
		mod_config.sheep_white.spawn.active_object_count,
		mod_config.sheep_white.spawn.min_height,
		mod_config.sheep_white.spawn.max_height,
		true
	)
end

if mod_config.pumba.spawn.enabled then
	mobs:spawn_specific(
		"mobs_animal:pumba",
		mod_config.pumba.spawn.on,
		mod_config.pumba.spawn.near,
		mod_config.pumba.spawn.min_light,
		mod_config.pumba.spawn.max_light,
		mod_config.pumba.spawn.interval,
		mod_config.pumba.spawn.chance,
		mod_config.pumba.spawn.active_object_count,
		mod_config.pumba.spawn.min_height,
		mod_config.pumba.spawn.max_height,
		true
	)
end

print (S("[MOD] Mobs Redo Animals loaded"))

dofile(path .. "test.lua")