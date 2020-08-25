local PATH = (...):gsub('%.init$', '')

local dialect = require(PATH .. ".dialect")

dialect.images = {}
dialect.messages = {}

local files = love.filesystem.getDirectoryItems(PATH:gsub("%.", "/") .. "/messages")
for i = 1, #files do
    if files[i]:sub(-4) == ".lua" then
        local name = files[i]:gsub(".lua", "")
        dialect.messages[files[i]] = require(PATH .. ".messages." .. name)
    end
end

PATH = PATH:gsub("%.", "/")

dialect.images.default = love.graphics.newImage(PATH .. "/default.png")

local files = love.filesystem.getDirectoryItems(PATH .. "/profiles")
for i = 1, #files do
    if files[i]:sub(-4) == ".png" then
        dialect.images[files[i]:gsub(".png", "")] = love.graphics.newImage(PATH .. "/profiles/" .. files[i])
    end
end

return dialect
