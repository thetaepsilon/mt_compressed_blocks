
local modpath = minetest.get_modpath(minetest.get_current_modname())
local interface = dofile(modpath.."/register.lua")

--[[
minetest.register_node(
	"compressed_blocks:compressed_lvl1__default__cobble",
	{
		tiles = {"default_cobble.png^compressed_blocks_lvl1.png"},
		groups = { oddly_breakable_by_hand=2 },
	}
);
]]--

interface.register_node("default", "cobble", 8, nil)

modns.register("swizzledpixel.compressed_blocks", interface)
minetest.log("[II] compressed blocks initialisation complete")
