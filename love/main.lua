Object = require 'libraries/classic'

-- Automating the require process for all classes
function love.load()
    local object_files = {}
    recursiveEnumerate('objects', object_files)
    requireFiles(object_files)
end

function recursiveEnumerate(folder, file_list)
    local items = love.filesystem.getDirectoryItems(folder)
    for _, item in ipairs(items) do
        local file = folder .. '/' .. item
        if love.filesystem.isFile(file) then
            table.insert(file_list, file)
        elseif love.filesystem.isDirectory(file) then
            recursiveEnumerate(file, file_list)
        end
    end
end

function requireFiles(files)
    for _, file in ipairs(files) do
        -- Remove the ".lua" extension and convert slashes to dots
        local class_name = file:gsub('/', '.'):sub(1, -5)
        require(class_name)
    end
end

function love.update(dt)

end

function love.draw()
    local myCircle = circles(400, 300 ,50)
    myCircle:draw()
end