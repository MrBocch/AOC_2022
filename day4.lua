
function part1()
    local file = io.open("input4.txt", "r")
    io.input(file)

    local contained = 0

    while true do
        local line = io.read("*line")
        if line == nil then break end

        --[[
        local n1 = {string.sub(line, 1,1), string.sub(line, 3, 3)}
        local n2 = {string.sub(line, 5,5), string.sub(line, 8, 8)}
        print(n2[1]..":"..n2[2])
        ]]
        local nums = {}
        local i = 1
        for v in string.gmatch( line, "(%d+)") do
            nums[i] = v
            i = i + 1
        end

        for i=1, #nums, 4 do
            print(nums[i].."-"..nums[i+1], nums[i+2].."-"..nums[i+3])
        end

    end
end

part1()