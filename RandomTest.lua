--[[
Randomness Test by TuxMan20

USAGE: Adjust the values as you need and run in a Terminal window.

]]--

-- Setting the variables to be used
totalVal = 0
total = 0
value = 0
valueTable = {}
mean = 0
variance = 0
stdDeviation = 0
--
----------------------------------------------------------
--  CHANGE THESE VALUES TO PLAY AROUND WITH THE RESULTS --
----------------------------------------------------------
SEED = os.time() -- Change what value to be used as random seed
OUTPUTS = 100000 -- set the amount of random numbers to be generated
RANGE = {1, 100}  -- set the range of outputs to be used ie: 0 to 100
----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------

math.randomseed(SEED)
for i = 1, OUTPUTS do
    local value = math.random(RANGE[1], RANGE[2])
    table.insert(valueTable, value)
    io.write(value .. "\n")
    totalVal = totalVal + 1
    total = total + value
end
mean = total/totalVal

for i = 1, #valueTable do
  variance = variance + math.pow(valueTable[i] - mean, 2)
end

variance = variance / totalVal

stdDeviation = math.sqrt(variance)

io.write("Mean: " .. mean .. "\n")
io.write("Variance: " .. variance .. "\n")
io.write("Standard Deviation: " .. stdDeviation .. "\n")
io.write("Min normal result: " .. math.floor(mean - stdDeviation) .. "\n")
io.write("Max normal result: " .. math.floor(mean + stdDeviation) .. "\n")
