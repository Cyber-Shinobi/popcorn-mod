minetest.register_craftitem("popcorn:popcorn", {
	description = "Popcorn!",
	inventory_image = "popcorn_popcorn.png",
	stack_max = 1,
	on_use = minetest.item_eat(2, 'popcorn:bag'),
	groups = {flammable = 3},
})

minetest.register_craftitem("popcorn:bag", {
	description = "Popcorn bag",
	inventory_image = "popcorn_bag.png",
	on_use = minetest.item_eat(-2),
	groups = {flammable = 3},
})

--minetest.register_craftitem("popcorn:popcornOP", {
--	description = "Popcorn! this is OP",
--	inventory_image = "popcorn_popcorn.png",
--	on_use = minetest.item_eat(10),
--})

minetest.register_craft({
	output = 'popcorn:popcorn',
	recipe = {
		{'', '', ''},
		{'', 'farming:corn', ''},
		{'', 'popcorn:bag', ''},
	}
})

minetest.register_craft({
	output = 'popcorn:bag',
	recipe = {
		{'', '', ''},
		{'dye:white', 'default:paper', 'dye:red'},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'popcorn:bag',
	recipe = {
		{'', '', ''},
		{'', 'default:paper', 'dye:red'},
		{'', '', ''},
	}
})

--minetest.register_craft({
--	output = 'popcorn:popcorn_sword',
--	recipe = {
--		{'', 'default:dirt', 'default:dirt'},
--		{'', 'default:dirt', ''},
--		{'default:dirt', 'default:dirt', ''},
--	}
--})

--minetest.register_craft({
--	output = 'popcorn:popcornOP',
--	recipe = {
--		{'', '', ''},
--		{'', 'default:sand', ''},
--		{'', '', ''},
--	}
--})


minetest.register_tool("popcorn:popcorn_sword", {
	description = "Popcorn Sword",
	inventory_image = "popcorn_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=25, maxlevel=3, not_in_creative_inventory = 1},
		},
		damage_groups = {fleshy=10},

	},
	sound = {breaks = "default_tool_breaks"},
})
