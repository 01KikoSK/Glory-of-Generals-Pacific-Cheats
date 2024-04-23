-- Glory of Generals: Pacific cheat script

-- Admin Panel Lua script

-- Set the amount of resources you want to add
local RESOURCE_AMOUNT = 1000000

-- Set the resource IDs
local OIL_ID = 1019
local IRON_ID = 1128

-- Add the specified amount of resources
function addResources(resourceId, amount)
  -- Search for the current amount of the specified resource
  gg.searchNumber(resourceId, gg.TYPE_DWORD)
  local resultCount = gg.getResultCount()
  if resultCount > 0 then
    -- Edit the current amount of the specified resource
    gg.editAll(amount, gg.TYPE_DWORD)
  end
end

-- Add the specified amount of oil
addResources(OIL_ID, RESOURCE_AMOUNT)

-- Add the specified amount of iron
addResources(IRON_ID, RESOURCE_AMOUNT)

-- Print a message to the console
print("Added " .. RESOURCE_AMOUNT .. " oil and " .. RESOURCE_AMOUNT .. " iron")