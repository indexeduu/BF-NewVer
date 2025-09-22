volcano_function = function(...) return ... end
if not LPH_OBFUSCATED then
	LPH_JIT_MAX = volcano_function;
	LPH_NO_VIRTUALIZE = volcano_function;
	LPH_NO_UPVALUES = volcano_function;
end;
Check_Monster = LPH_JIT_MAX(function(Monster)
	local Table_Monster = Monster;
	if type(Monster) == "string" then Table_Monster = {Monster} end;
	local nearestEnemy = nil;
	local shortestDistance = math.huge;

	for _, v in pairs(workspace.Enemies:GetChildren()) do
		if table.find(Table_Monster, v.Name) and Check_Alive_Monster(v) and Distance(v.HumanoidRootPart.Position) <= 2000 then
			local distance = Distance(v.HumanoidRootPart.Position);
			if distance < shortestDistance then
				nearestEnemy = v;
				shortestDistance = distance;
			end;
		end;
	end;		
Check_Monster("Bandit")
				
