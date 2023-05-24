
function part1()
    local file = io.open("input4.txt", "r")
    io.input(file)

    local contained = 0

    while true do
        local line = io.read("*line")
        if line == nil then break end

        local nums = {}
        local i = 1
        for v in string.gmatch( line, "(%d+)") do
            nums[i] = v
            i = i + 1
        end

        for i=1, #nums, 4 do
            num1 = nums[i]
            num2 = nums[i+1]
            num3 = nums[i+2]
            num4 = nums[i+3]

            if (num1 <= num3 and num2 >= num4) or (num3 <= num1 and num4 >= num2) then
                contained = contained +1
                print(num1.."-"..num2.." , "..num3.."-"..num4)
            end
        end

    end

    print("Part1: "..contained)
    --569 too high
end

part1()