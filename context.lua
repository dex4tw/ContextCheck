-- Member Tags: None, LocalUserSecurity, PluginSecurity, RobloxScriptSecurity, NotAccessibleSecurity, RobloxSecurity

local Security = {
	{"None", function() return workspace.Name end},
	{"LocalUserSecurity", function() return workspace.DataCost end},
	{"PluginSecurity", function() return workspace.RobloxLocked end},
	{"RobloxScriptSecurity", function() return game:GetService("CoreGui").SelectionImageObject end},
	{"NotAccessibleSecurity", function() game:GetService("Chat").LoadDefaultChat = game:GetService("Chat").LoadDefaultChat end},
	{"RobloxSecurity", function() return game:GetService("CSGDictionaryService").Name end},
}

for _, Tag in ipairs(Security) do
	local Name, Test = Tag[1], Tag[2]
	local CanDo, Error = pcall(Test)
	if CanDo then
		printidentity("Check passed for tag "..Name.." for identity")
	else
		printidentity("[Permission "..Error:sub(-2, -2).."] Check failed for tag "..Name.." for identity")
	end
end
