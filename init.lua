minetest.clear_craft({
	output = "default:skeleton_key",
})

minetest.register_craft({
	type = "cooking",
	output = "default:skeleton_key",
	recipe = "default:gold_ingot",
	cooktime = 5,
})


local function registerblockrecipe(name, blockname)
	minetest.register_craft({
		output = blockname,
		recipe = {
			{name, name, name},
			{name, name, name},
			{name, name, name},
		},
	})
	minetest.register_craft({
		output = name .. ' 9',
		recipe = {
			{blockname},
		}
	})
end

local function register_coin(name, sourcename, description, inventory_image)
	minetest.register_craftitem(name, {
		description = description,
		inventory_image = inventory_image,
		stack_max = 10000,
	})
	registerblockrecipe(name, sourcename)
end
register_coin("gold_coins:guinea", "default:gold_ingot", "Gold Guinea", "gold_coins_guinea.png")
register_coin("gold_coins:galleon", "gold_coins:guinea", "Gold Galleon", "gold_coins_galleon.png")
register_coin("gold_coins:sickle", "gold_coins:galleon", "Gold Sickle", "gold_coins_sickle.png")
register_coin("gold_coins:knut", "gold_coins:sickle", "Gold Knut", "gold_coins_knut.png")
