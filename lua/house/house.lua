local objects = {
    "house that Jack built",
    "malt", "rat", "cat",
    "cow with the crumpled horn",
    "maiden all forlorn",
    "man all tattered and torn",
    "priest all shaven and shorn",
    "rooster that crowed in the morn",
    "farmer sowing his corn",
    "horse and the hound and the horn"
}

local actions = {
    "lay in", "ate", "killed", "worried", "tossed",
    "milked", "kissed", "married", "woke", "kept", "belonged"
}

local house = {}

house.verse = function (number, first)
    if first ~= false then first = true end
    if number == 1 then
        next = "\n"
    elseif number <= 11 then
        next = house.verse(number - 1, false)
    else
        return house.verse(11, true)
    end

    if first then
        return "This is the " .. objects[number] .. next
    else
        return "\nthat " .. actions[number] .. " the " .. objects[number] .. next
    end
end

house.recite = function ()
    rhyme = {}
    for i=1, 11 do
        table.insert(rhyme, house.verse(i))
    end
    return table.concat(rhyme, '\n')
end

return house