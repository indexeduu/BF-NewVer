function CheckModel(v)
    for _, e in pairs(game:GetService("WorkSpace").Enemies:GetChildren()) do
       if not e then continue end
       local Enemy = {"Bandit"}
       e = CheckModel(Enemy)        
    end
   return v
end
