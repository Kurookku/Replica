local RunService = game:GetService("RunService")

if RunService:IsServer() then
	return require(script:WaitForChild("ReplicaServer"))
else
	local Server = script:FindFirstChild("ReplicaServer")
	
	if Server and RunService:IsRunning() then
		Server:Destroy()
	end

	return require(script:WaitForChild("ReplicaClient"))
end