----------------------------------------------------By NewFeur----------------------------------------------------
-- /car pour faire spawn le vehicule

print("[^4Author^0] : ^4JL NewFeur#2861^0")

RegisterCommand("car", function(_, args)
if (#args ~=1) then
    return
end

local model = GetHashKey(args[1])
RequestModel(model)
while not HasModelLoaded(model) do Wait (100) end
local veh = CreateVehicle(model, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), isNetwork, p6)
TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
end)

----------------------------------------------------By NewFeur----------------------------------------------------