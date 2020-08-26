local dialect = require("dialect")

function love.load()
    -- Speak with a name
    dialect.speak("Unknown", "This is some text!")

    -- Speak with no name
    dialect.speak(nil, "although I don't want a narrator")

    -- Speak with a name and icon/profile
    dialect.speak("Bender", "I'll make my own library.. with blackjack .. and hookers!", {profile = "bender"})

    -- Speak with a name, icon/profile, but specific message from messages dir
    dialect.speak("TurtleP", "text.lua", {profile = "turtle"})

    love.graphics.setBackgroundColor(0.40, 0.40, 0.40)
end

function love.update(dt)
    dialect.update(dt)
end

function love.draw()
    dialect.draw()
end

function love.keyreleased(key)
    dialect.keyreleased(key)
end

function love.gamepadreleased(joy, button)
    dialect.gamepadreleased(key)
end
