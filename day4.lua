
function part1()
    local file = io.open("input4.txt", "r")
    io.input(file)

    local contained = 0
    local nums = {}

    while true do
        local line = io.read("*line")
        if line == nil then break end

        -- I did not knew about pattern matching functions
        start1, end1, start2, end2 = string.match(line, "(%d+)-(%d+),(%d+)-(%d+)")
        
        start1 = tonumber(start1)
        end1 = tonumber(end1)

        start2 = tonumber(start2)
        end2= tonumber(end2)

        if (start1 <= start2) and (end1 >= end2) then
            contained = contained + 1

        elseif (start2 <= start1) and (end2 >= end1) then
            contained = contained + 1
        end

    end


    print("Lua Part1: "..contained)
    --Correct 542 
end

part1()