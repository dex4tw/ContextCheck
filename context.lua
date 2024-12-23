local Identity
local Security = {
    {"0None", function() return workspace.Name end},
    {"3LocalUserSecurity", function() return workspace.DataCost end},
    {"1PluginSecurity", function() return workspace.RobloxLocked end},
    {"3RobloxScriptSecurity", function() return game:GetService("CoreGui").SelectionImageObject end}, -- CoreScript
    {"0NotAccessibleSecurity", function() game:GetService("Chat").LoadDefaultChat = game:GetService("Chat").LoadDefaultChat end},
    {"6RobloxSecurity", function() return game:GetService("CSGDictionaryService").Name end}    
}

for _, Tag in ipairs(Security) do
    local Name, Test = Tag[1], Tag[2]
    local Success, Exception = pcall(Test)
    if Success then
        Identity = Name:sub(1,1)
    end
end

print("Exploit Authentic Identity:", tostring(Identity))
