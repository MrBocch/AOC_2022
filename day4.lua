
function part1()
    local file = io.open("input4.txt", "r")
    io.input(file)

    local contained = 0
    local nums = {}
    local i = 1

    while true do
        local line = io.read("*line")
        if line == nil then break end

        for v in string.gmatch( line, "(%d+)") do
            nums[i] = v
            i = i + 1
        end

    end

    for i=1, #nums, 4 do
        local a1 = nums[i]
        local a2 = nums[i+1]

        local b1 = nums[i+2]
        local b2 = nums[i+3]

        --[[
            I cant understand why does this not work?
        if start1 >= start2 and end1 <= end2 then
            contained = contained + 1

        elseif start1 <= start2 and end1 >= end2 then
            contained = contained + 1
        end
        ]]
        if (a1 <= b1 and a2 >= b2) or (b1 <= a1 and b2 >= a2) then
            contained = contained+ 1
        end
    end

    print("Lua Part1: "..contained)
    --Correct 542 
end

part1()