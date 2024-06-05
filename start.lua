function addFuel()
    for i = 16, 1, -1 do
        obj = turtle.getIitemDetail(i)
        if obj ~= nil then
            if obj.name == "minecraft:coal" then
                turtle.select(i)
            end
        end
    end
    turtle.refuel()
end

function start()
    local i = 0
    print("Starting...")

    F = turtle.inspect()
    turtle.turnLeft()
    L = turtle.inspect()
    turtle.turnLeft()
    B = turtle.inspect()
    turtle.turnLeft()
    R = turtle.inspect()
    turtle.turnLeft()

    FUEL = turtle.getFuelLevel()

    if FUEL < 500 then
        addFuel()
    end

    TL = false
    while true do
        turtle.dig()
        turtle.dig()
        turtle.forward()
        i = i + 1

        if i >= 16 then
            if TL == true then
                turtle.turnRight()
                turtle.dig()
                turtle.forward()
                turtle.turnRight()
            else
                turtle.turnLeft()
                turtle.dig()
                turtle.forward()
                turtle.turnLeft()    
            end
        end
    end
end

start()
