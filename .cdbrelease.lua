-- LUALOCALS < ---------------------------------------------------------
local math, tonumber
    = math, tonumber
local math_floor
    = math.floor
-- LUALOCALS > ---------------------------------------------------------

local stamp = tonumber("$Format:%at$")
if not stamp then return end
stamp = math_floor((stamp - 1540612800) / 60)
stamp = ("00000000" .. stamp):sub(-8)

-- luacheck: push
-- luacheck: globals config readtext readbinary

readtext = readtext or function() end
readbinary = readbinary or function() end

return {
	pkg = "nc_stairs",
	version = stamp .. "-$Format:%h$",
	type = "mod",
	title = "NodeCore Stairs",
	short_description = "Adds an assortment of stairs and slabs to NodeCore",
	tags = {"building", "crafting", "decorative"},
	content_warnings = {},
	license = "MIT",
	media_license = "MIT",
	long_description = readtext('README.md'),
	repo = "https://gitlab.com/sztest/nc_stairs",
	issue_tracker = "https://discord.gg/NNYeF6f",
	maintainers = {"Warr1024"},
	screenshots = {readbinary('.cdb-screenshot.png')}
}

-- luacheck: pop
