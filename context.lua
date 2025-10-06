local Identity
local Security = {
    [0] = {"None", function() return workspace.Name end},
    [3] = {"LocalUserSecurity", function() return workspace.DataCost end},
    [1] = {"PluginSecurity", function() return workspace.RobloxLocked end},
    [3] = {"RobloxScriptSecurity", function() return game:GetService("CoreGui").SelectionImageObject end}, -- CoreScript
    [0] = {"NotAccessibleSecurity", function() game:GetService("Chat").LoadDefaultChat = game:GetService("Chat").LoadDefaultChat end},
    [6] = {"RobloxSecurity", function() return game:GetService("CSGDictionaryService").Name end}    
}

for _, Tag in ipairs(Security) do
    local Name, Test = Tag[1], Tag[2]
    local Success, Exception = pcall(Test)
    if Success then
        Identity = tostring(_) .. "(" .. Tag[1] .. ")"
    end
end

print("Exploit Authentic Identity:", tostring(Identity))
