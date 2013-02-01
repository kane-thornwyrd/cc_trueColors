--[[
    Created by kanethornwyrd
]]

--[[
Original color API values from ComputerCraft
colors = {
	white = 1,
	orange = 2,
	magenta = 4,
	lightBlue = 8,
	yellow = 16,
	lime = 32,
	pink = 64,
	gray = 128,
	lightGray = 256,
	cyan = 512,
	purple = 1024,
	blue = 2048,
	brown = 4096,
	green = 8192,
	red = 16384,
	black = 32768
}
]]--

--[[
Original color API values from ComputerCraft
colors = {
	white = 1,
	pink = 64,
	gray = 128,
	lightGray = 256,
	brown = 4096,
	black = 32768
}
]]--
trueColours = {
	'red',
	'orange',
	'yellow',
	'lime',
	'green',
	'cyan',
	'lightblue',
	'blue',
	'purple',
	'magenta',
}

trueColours.value = 1
trueColours.next = function()
	if trueColours.value == #trueColours then trueColours.value = 1 
	else trueColours.value = trueColours.value + 1 end
	return trueColours
end

trueColours.current = function()
	return trueColours
end

function trueColours.getColour(id)
	id = id or trueColours.value
	return trueColours[trueColours.value]
end

print(trueColours.next().next().next().getColour())