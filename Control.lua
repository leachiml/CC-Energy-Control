--Dynamo Steuerung by leachiml V1

local Seite = "left"    --Seite des Komperators
local Output = "top"    --Ausgabeseite des ON/OFF Signals
local Untergrenze = 2   -- Komperator Signal zwischen 0 und 15
local Obergrenze = 14

while true do
    r = rs.getAnalogInput(Seite)
    if r <= Untergrenze then
        rs.setOutput(Output, true)
    elseif r >= Obergrenze then
        rs.setOutput(Output, false)
    end
print(r)
sleep(0.1)
end
