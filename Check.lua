function CheckModel(v)
local Enemy = {"Bandit"}    
for _, e in pairs(game:GetService("WorkSpace").Enemies:GetChildren()) do       
       if e and e:Isa("Model") and CheckModel[Enemy.Name]then
        print("Model", Enemy.Name);
       return true
     end
    return false
       e = CheckModel(Enemy)        
    end
   return v
end
