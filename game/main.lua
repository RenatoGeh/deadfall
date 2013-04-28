require 'vector'
require 'character'
require 'base.body'

local bodies

function love.load()
	bodies = base.body.getAll()
	character:new { 
		radius = 30,
		position = vector:new{100,400},
		speed = vector:new{15,-30}
	}:register()
end

function love.draw()
	for i,b in ipairs(bodies) do
		b:draw()
	end
end

function love.update( dt )
	for i,b in ipairs(bodies) do
		b:update(dt)
	end
end