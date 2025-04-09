local getgenv = getgenv
local success, getgenv = pcall(function()
  return getgenv()
end);
local function CheckSeaBeast()
    for i,v in pairs(game:GetService("WorkSpace").SeaBeasts:GetChildren()) do
      if not workspace.SeaBeast then
         return;
      end;
       if v.Name == "Sea Beast" and v:FindFirstChild("HumanoidRootPart") then
          CheckSeaBeast();
          getgenv().CheckSea = true;
      end;
   end;
end;
local function CheckLeviathan()
 for i,v in pairs(game:GetService("WorkSpace").SeaBeasts:GetChildren()) do
    if not workspace.SeaBeast then return end;
      if v.Name == "Leviathan" and v.Name == "Leviathan Segment1" and v:FindFirstChild("HumannoiRootPart") then
          if v.Name ~= "Leviathan Segment" then 
            return true;
         end;
          return false;
        end;
      end;
   end;
