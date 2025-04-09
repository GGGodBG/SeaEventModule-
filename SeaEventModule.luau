local getgenv = getgenv
local success, getgenv = pcall(function()
  return getgenv()
end)
local function CheckSeaBeast()
    for i,v in pairs(game:GetService("WorkSpace").SeaBeasts:GetChildren()) do
      if workspace.SeaBeasts ~= nil then
         return 
      end
       if v.Name == "Sea Beast" and v:FindFirstChild("HumanoidRootPart") then
          CheckSeaBeast()
      end
  end
end
